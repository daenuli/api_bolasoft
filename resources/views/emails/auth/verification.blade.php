@component('mail::message')
# Verifikasi Email Pendaftaran

Terimakasih anda telah mendaftar di bolasoft.id, silahkan klik button dibawah ini untuk meng-aktivasi akun anda : 
    

@component('mail::button', ['url' => $url])
Aktivasi Sekarang
@endcomponent


Demikian informasi dari kami, semoga bermanfaat bagi anda<br>
Terimakasih.<br><br>
Hormat Kami,<br>
<hr>
{{ env('APP_NAME') }} Indonesia
@endcomponent
