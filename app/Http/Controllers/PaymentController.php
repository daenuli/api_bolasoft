<?php

namespace App\Http\Controllers;
use Midtrans\Notification;
use Midtrans\Config;
use Midtrans\Snap;
use Midtrans\Transaction;
use App\Models\Order;
use Illuminate\Http\Request;
use App\Models\ActivityLog;

class PaymentController extends Controller
{
    protected $notification;
    protected $order;

    public function __construct()
    {
        Config::$serverKey = config('midtrans.server_key');
        // Set to Development/Sandbox Environment (default). Set to true for Production Environment (accept real transaction).
        Config::$isProduction = false;
        // Set sanitization on (default)
        Config::$isSanitized = true;
        // Set 3DS transaction for credit card to true
        Config::$is3ds = true;
        
    }

    public function index()
    {
        $user = auth()->user();

        // $data = Transaction::status(1760524932);
        // return response()->json($data);

        if (!empty($user->order) && $user->order->payment_status == 2) {
            return response()->json([
                'status' => 'error',
                'message' => 'Pembayaran lunas, tidak boleh melakukan payment lebih dari satu kali',
            ]);
        }

        if (!empty($user->order) && $user->order->payment_status == 1) {
            return response()->json([
                'token' => $user->order->snap_token,
                'redirect_url' => $user->order->redirect_url
            ]);
        }

        // if (!empty($user->order) && ($user->order->payment_status == 3 || $user->order->payment_status == 4)) {
        //     return response()->json([
        //         'token' => $user->order->snap_token,
        //         'redirect_url' => $user->order->redirect_url
        //     ]);
        // }
        

        if (empty($user->order) || (!empty($user->order) && ($user->order->payment_status == 0 || $user->order->payment_status == 3 || $user->order->payment_status == 4))) {
            $price = 40000;

            $order_id = $this->generateUniqueCode();
            $transaction_detail = array(
                'order_id' => $order_id,
                'gross_amount' => $price,
            );

            $item_detail = array(array(
                'id' => 1,
                'price' => $price,
                'quantity' => 1,
                'name' => 'Biaya Registrasi'
            ));
            
            $customer_detail = array(
                'first_name' => $user->name,
                'email' => $user->email,
                // 'email' => 'giarsyani.nuli@gmail.com',
                'phone' => $user->wa_number
            );
            
            $transaction = array(
                'transaction_details' => $transaction_detail,
                'customer_details' => $customer_detail,
                'item_details' => $item_detail
            );

            $midtrans = Snap::createTransaction($transaction);

            Order::updateOrCreate(
                ['user_id' => $user->id],
                ['number' => $order_id, 'total_price' => $price, 'snap_token' => $midtrans->token, 'redirect_url' => $midtrans->redirect_url]
            );

            // return response()->json($midtrans);
            // $order = new Order;
            // $order->user_id = $user->id;
            // $order->number = $order_id;
            // $order->total_price = $price;
            // $order->snap_token = $midtrans->token;
            // $order->redirect_url = $midtrans->redirect_url;
            // $order->save();

            return response()->json($midtrans);
        }

    }

    // public function createTransaction($user)
    // {
    //     $price = 40000;

    //     $order_id = $this->generateUniqueCode();
    //     $transaction_detail = array(
    //         'order_id' => $order_id,
    //         'gross_amount' => $price,
    //     );

    //     $item_detail = array(array(
    //         'id' => 1,
    //         'price' => $price,
    //         'quantity' => 1,
    //         'name' => 'Biaya Registrasi'
    //     ));
        
    //     $customer_detail = array(
    //         'first_name' => $user->name,
    //         'email' => $user->email,
    //         // 'email' => 'giarsyani.nuli@gmail.com',
    //         'phone' => $user->wa_number
    //     );
        
    //     $transaction = array(
    //         'transaction_details' => $transaction_detail,
    //         'customer_details' => $customer_detail,
    //         'item_details' => $item_detail
    //     );

    //     $midtrans = Snap::createTransaction($transaction);
        
        // if (empty($user->order)) {
        //     $order = new Order;
        //     $order->user_id = $user->id;
        //     $order->number = $order_id;
        //     $order->total_price = $price;
        //     $order->snap_token = $midtrans->token;
        //     $order->redirect_url = $midtrans->redirect_url;
        //     $order->save();
        // } else {
        //     $order = Order::find($user->order->id);
        //     $order->number = $order_id;
        //     $order->total_price = $price;
        //     $order->snap_token = $midtrans->token;
        //     $order->redirect_url = $midtrans->redirect_url;
        //     $order->save();
        // }

        // Order::updateOrCreate([
        //     ['user_id' => $user->id],
        //     ['number' => $order_id, 'total_price' => $price, 'snap_token' => $midtrans->token, 'redirect_url' => $midtrans->redirect_url]
        // ]);
    // }

    public function notification(Request $request)
    {
        $this->_handleNotification();
        
        if ($this->isSignatureKeyVerified()) {
            $order = Order::where('number', $this->notification->order_id)->first();
            if ($this->notification->transaction_status == 'pending') {
                $order->payment_status = '1';
                ActivityLog::updateOrCreate(
                    ['user_id' => $order->id, 'type' => 'payment'],
                    ['title' => 'Pembayaran Anda belum selesai, silahkan menyelesaikan pembayaran']
                );
            } else if ($this->notification->transaction_status == 'capture' || $this->notification->transaction_status == 'settlement') {
                
                // $user = auth()->user();
                // $user->confirmed = 'y';
                // $user->save();

                $order->payment_status = '2';

                // ActivityLog::create([
                //     'user_id' => $order->user_id, 
                //     'type' => 'payment',
                //     'title' => 'Yaay, Kamu telah menyelesaikan pembayaran. Lanjut pilih SSB yak!'
                // ]);
                ActivityLog::updateOrCreate(
                    ['user_id' => $order->id, 'type' => 'payment'],
                    ['title' => 'Yaay, Kamu telah menyelesaikan pembayaran. Lanjut pilih SSB yak!']
                );

            } else if ($this->notification->transaction_status == 'expire') {
                $order->payment_status = '3';
                ActivityLog::updateOrCreate(
                    ['user_id' => $order->id, 'type' => 'payment'],
                    ['title' => 'Batas pembayaran telah berakhir, silahkan ulangi pembayaran']
                );
            } else if ($this->notification->transaction_status == 'cancel' || $this->notification->transaction_status == 'deny' || $this->notification->transaction_status == 'failure') {
                $order->payment_status = '4';
                ActivityLog::updateOrCreate(
                    ['user_id' => $order->id, 'type' => 'payment'],
                    ['title' => 'Transaksi pembayaran gagal dilakukan']
                );
            }
            $order->response_midtrans = json_encode($this->notification->getResponse(), true);
            $order->save();
        }

        // $order = new Order;
        // $order->user_id = 1;
        // $order->number = rand();
        // $order->total_price = 45000;
        // $order->payment_status = 2;
        // $order->response_midtrans = $notif->transaction_status;
        // $order->response_midtrans = json_encode($notif->getResponse(), true);
        // $order->response_midtrans = json_encode($request->all(), true);
        // $order->save();
    }

    public function generateUniqueCode()
    {
        do {
            $code = rand();
        } while (Order::where('number', $code)->first());

        return $code;
    }

    public function isSignatureKeyVerified()
    {
        return ($this->_createLocalSignatureKey() == $this->notification->signature_key);
    }

    protected function _createLocalSignatureKey()
    {
        $orderId = $this->order->number;
        $statusCode = $this->notification->status_code;
        $grossAmount = $this->order->total_price;
        $serverKey = config('midtrans.server_key');
        $input = $orderId . $statusCode . $grossAmount . $serverKey;
        $signature = openssl_digest($input, 'sha512');
 
        return $signature;
    }

    protected function _handleNotification()
    {
        $notification = new Notification();
 
        $orderNumber = $notification->order_id;
        $order = Order::where('number', $orderNumber)->first();
 
        $this->notification = $notification;
        $this->order = $order;
    }

    //
}
