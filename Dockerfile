FROM php:8.0-fpm

# Arguments defined in docker-compose.yml
ARG user
#ARG uid
ENV TZ=Asia/Jakarta
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
# Install system dependencies
RUN apt-get update && apt-get install -y \
    git \
    curl \
    libpng-dev \
	libjpeg-dev \
    libjpeg62-turbo-dev \
    libonig-dev \
    libxml2-dev \
    zip \
    unzip \
    supervisor

# Clear cache
RUN apt-get clean && rm -rf /var/lib/apt/lists/*

# Install PHP extensions
RUN docker-php-ext-install pdo_mysql mbstring exif pcntl bcmath gd
    #&& docker-php-ext-configure gd \
    #&& docker-php-ext-install -j$(nproc) gd 

RUN docker-php-ext-configure gd --with-jpeg \
    && docker-php-ext-install -j$(nproc) gd

RUN printf '[PHP]\ndate.timezone = "Asia/Jakarta"\n' > /usr/local/etc/php/conf.d/tzone.ini

# Get latest Composer
COPY --from=composer:latest /usr/bin/composer /usr/bin/composer

# Create system user to run Composer and Artisan Commands
#RUN useradd -G www-data,root -u $uid -d /home/$user $user
RUN mkdir -p /home/$user/.composer && \
    chown -R $user:$user /home/$user


# Set working directory
WORKDIR /var/www

RUN chown -R www-data:www-data /var/www/

COPY docker/start.sh /usr/local/bin/start

RUN chown -R $user: /var/www && chmod u+x /usr/local/bin/start

COPY docker/supervisord.conf /etc/supervisor/supervisord.conf

RUN mkdir -p "/etc/supervisor/logs"

#ADD docker/supervisor.conf /etc/supervisor/conf.d/worker.conf

CMD ["/usr/local/bin/start"]

USER $user
