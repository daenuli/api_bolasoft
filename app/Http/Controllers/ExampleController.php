<?php

namespace App\Http\Controllers;
use Illuminate\Support\Facades\Mail;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;

class ExampleController extends Controller
{
    public function index(Request $request)
    {
        $fileName = $request->photo->getClientOriginalName();
        $filePath = 'student/'.$fileName;

        $path = Storage::disk('s3')->put($filePath, file_get_contents($request->photo));
        $data = Storage::disk('s3')->url($path);

        return response()->json($data);
    }

    //
}
