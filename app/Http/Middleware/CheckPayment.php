<?php

namespace App\Http\Middleware;

use Closure;

class CheckPayment
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure  $next
     * @return mixed
     */
    public function handle($request, Closure $next)
    {
        $payment = auth()->user()->order;
        $detail = auth()->user()->student;

        if (empty($payment) || $payment->payment_status != 2) {
            return response()->json([
                'status' => 'error',
                'message' => 'Silahkan lakukan pembayaran terlebih dahulu'
            ]);
        }

        if (is_null($detail)) {
            return response()->json([
                'status' => 'error',
                'message' => 'Silahkan lengkapi profile terlebih dahulu'
            ]);
        }

        return $next($request);


        // if (!empty($payment) && $payment->payment_status == 2) {
        //     if (isset($detail)) {
        //         return $next($request);
        //     } else {
        //         return response()->json([
        //             'status' => 'error',
        //             'message' => 'Silahkan lengkapi profile terlebih dahulu'
        //         ]);
        //     }
        // } else {
        //     return response()->json([
        //         'status' => 'error',
        //         'message' => 'Silahkan lakukan pembayaran terlebih dahulu'
        //     ]);
        // }
    }
}
