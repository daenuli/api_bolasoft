<?php
 
namespace App\Mail;
 
use Illuminate\Bus\Queueable;
use Illuminate\Mail\Mailable;
use Illuminate\Queue\SerializesModels;
 
class Information extends Mailable
{
    use Queueable, SerializesModels;
 
    public $email;
    public $name;
    public $wa;
 
    public function __construct($detail)
    {
        $this->name = $detail['name'];
        $this->email = $detail['email'];
        $this->wa = $detail['wa'];
    }
 
    /**
     * Build the message.
     *
     * @return $this
     */
    public function build()
    {
        $nama = $this->name;
        $email = $this->email;
        $nowa = $this->wa;
        // $this->;
        return $this->subject('Pendaftaran Bolasoft Baru - '.$nama)->markdown('emails.auth.information', compact('nama', 'email','nowa'));
    }
}