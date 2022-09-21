<?php

namespace App\Http\Controllers;
use Illuminate\Http\Request;
use App\Models\User;

class AboutController extends Controller
{
    public function index()
    {
        return response()->json(auth()->user()->student);
        // return response()->json(auth()->user());
    }

    // public function update_photo(Request $request)
    // {
        
    // }

    //
}
