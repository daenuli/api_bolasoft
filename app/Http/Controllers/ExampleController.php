<?php

namespace App\Http\Controllers;
// use App\Mail\OrderShipped;
use Illuminate\Support\Facades\Mail;
use App\Models\Student;
// use Carbon\Carbon;

class ExampleController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        //
    }

    public function test_email()
    {
        // Mail::to('giarsyani.nuli@gmail.com')->send(new OrderShipped());
    }

    // public function test_auth()
    // {
    //     $user = auth()->user();
    //     $user->confirmed = 'y';
    //     $user->save();
    // }

    public function index()
    {
        // return Carbon::now();
        // $pertama = Student::oldest()->first();
        // $terakhir = Student::latest()->first();
        // // dd($pertama->created_at);
        // // return $pertama->created_at;

        // $startDate = Carbon::createFromFormat('Y-m-d',$pertama->created_at);
        // $endDate = Carbon::createFromFormat('Y-m-d',$terakhir->created_at);

        // $check = Carbon::now()->between($startDate, $endDate);
        // dd($check);
        // return response()->json($student);
    }

    //
}
