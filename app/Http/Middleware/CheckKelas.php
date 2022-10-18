<?php

namespace App\Http\Middleware;

use Closure;

class CheckKelas
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
        $student_class = auth()->user()->student_class;

        if (empty($student_class)) {
            return response()->json([
                'status' => 'error',
                'message' => 'Untuk melihat tournament, silahkan pilih kelas terlebih dahulu'
            ]);
        }

        return $next($request);
    }
}
