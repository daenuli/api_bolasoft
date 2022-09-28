<?php

namespace App\Http\Controllers;
use Midtrans\Notification;
use Midtrans\Config;
use Midtrans\Snap;
use App\Models\Order;

class PaymentController extends Controller
{
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
        // return Config::getBaseUrl();
        // return Config::$serverKey;
        $user = auth()->user();

        // return $user->order;

        if (isset($user->order)) {
            return response()->json([
                'status' => 'error',
                'message' => 'Tidak boleh melakukan payment lebih dari satu kali',
            ]);
        } else {
            // return 'tidak ada';
            $price = 40000;

            $order_id = rand();
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

            // return response()->json($midtrans);
            $order = new Order;
            $order->user_id = $user->id;
            $order->number = $order_id;
            $order->total_price = $price;
            $order->snap_token = $midtrans->token;
            $order->redirect_url = $midtrans->redirect_url;
            $order->save();

            return response()->json($midtrans);
        }


    }

    public function notification()
    {
        $notif = new Notification();
        // $order = Order::where('number', $notif->order_id)->first();
        // $order->response_midtrans = $notif;
        // $order->save();
        $order = new Order;
        $order->user_id = 1;
        $order->number = rand();
        $order->total_price = 45000;
        $order->payment_status = 2;
        $order->response_midtrans = $notif;
        $order->save();
        
    }

    //
}
