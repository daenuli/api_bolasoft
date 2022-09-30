<?php
 
namespace App\Mail;
 
// use App\Models\Order;
use Illuminate\Bus\Queueable;
use Illuminate\Mail\Mailable;
use Illuminate\Queue\SerializesModels;
 
class Verification extends Mailable
{
    use Queueable, SerializesModels;
 
    public $url;
 
    public function __construct($url)
    {
        $this->url = $url;
    }
 
    /**
     * Build the message.
     *
     * @return $this
     */
    public function build()
    {
        $url = $this->url;
        return $this->markdown('emails.auth.verification', compact('url'));
    }
}