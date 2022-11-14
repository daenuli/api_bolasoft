<?php

namespace App\Console;

use Illuminate\Console\Scheduling\Schedule;
use Laravel\Lumen\Console\Kernel as ConsoleKernel;

class Kernel extends ConsoleKernel
{
    /**
     * The Artisan commands provided by your application.
     *
     * @var array
     */
    protected $commands = [
        Commands\TournamentWeeks::class,
        Commands\TournamentTomorrow::class,
        Commands\TrainingToday::class,
    ];

    /**
     * Define the application's command schedule.
     *
     * @param  \Illuminate\Console\Scheduling\Schedule  $schedule
     * @return void
     */
    protected function schedule(Schedule $schedule)
    {
        $schedule->command('tournament:weeks')->dailyAt('02:00');
        $schedule->command('tournament:tomorrow')->dailyAt('03:00');
        $schedule->command('training:today')->dailyAt('04:00');
        // $schedule->command('tournament:weeks')->dailyAt('23:35');
    }
}
