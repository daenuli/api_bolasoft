<?php

namespace App\Http\Controllers;
use Illuminate\Support\Facades\Validator;
use Illuminate\Http\Request;
use Illuminate\Support\Str;
use App\Models\StudentAsset;
use App\Models\Student;
use App\Models\User;
use Carbon\Carbon;
use Intervention\Image\ImageManagerStatic as Image;
use Laravel\Lumen\Routing\UrlGenerator;
use Spatie\PdfToImage\Pdf;

class AboutController extends Controller
{
    public function index()
    {
        $user = auth()->user();
        $student = auth()->user()->student;
        $payment = auth()->user()->order;

        $data = [
            'id' => $user->id,
            'name' => $user->name,
            'email' => $user->email,
            'wa_number' => (int) $user->wa_number,
            'ssb_confirmed' => ($user->confirmed == 'p') ? false : true,
            'email_confirmed' => ($user->is_active == 'y') ? true : false,
            'date_of_birth' => isset($student) ? $student->date_of_birth : '',
            'age' => isset($student) ? Carbon::parse($student->date_of_birth)->age : '',
            'thumbnail_image' => isset($student) ? config('app.bolasoft_url_api').$student->thumbnail_image_path : '',
            'ssb_name' => isset($user->club) && ($user->confirmed == 'y') ? $user->club->name : '',
            'is_complete' =>isset($student) ? true : false,
            'payment_status' => (!empty($payment) && $payment->payment_status == 2) ? true : false
        ];
        return response()->json($data);
    }

    public function detail()
    {
        $user = auth()->user();
        $detail = auth()->user()->student;
        $payment = auth()->user()->order;
        $student_class = auth()->user()->student_class;

        $data = [
            'id' => $user->id,
            'name' => $user->name,
            'email' => $user->email,
            'wa_number' => $user->wa_number,
            'role' => $user->role,
            'ssb_confirmed' => ($user->confirmed == 'p') ? false : true,
            'email_confirmed' => ($user->is_active == 'y') ? true : false,
            'thumbnail_image' => !empty($detail->thumbnail_image_path) ? config('app.bolasoft_url_api').$detail->thumbnail_image_path : '',
            'akta_image' => !empty($user->student_asset('akta_lahir')->path) ? config('app.bolasoft_url_api').$user->student_asset('akta_lahir')->path : '',
            'ijazah_image' => !empty($user->student_asset('ijasah')->path) ? config('app.bolasoft_url_api').$user->student_asset('ijasah')->path : '',
            'kartu_keluarga_image' => !empty($user->student_asset('kartu_keluarga')->path) ? config('app.bolasoft_url_api').$user->student_asset('kartu_keluarga')->path : '',
            'nik' => !empty($detail->nik) ? $detail->nik : '',
            'nick_name' => !empty($detail->nick_name) ? $detail->nick_name : '',
            'address' => !empty($detail->address) ? $detail->address : '',
            'place_of_birth' => !empty($detail->place_of_birth) ? $detail->place_of_birth : '',
            'date_of_birth' => !empty($detail->date_of_birth) ? $detail->date_of_birth : '',
            'age' => !empty($detail->date_of_birth) ? Carbon::parse($detail->date_of_birth)->age : '',
            'weight' => !empty($detail->weight) ? (int) $detail->weight : '',
            'height' => !empty($detail->height) ? (int) $detail->height : '',
            'parent_name' => !empty($detail->parent_name) ? $detail->parent_name : '',
            // 'class_id' => isset($detail) ? $detail->class_id : '',
            // 'class_name' => isset($detail) ? $detail->classes->name_class : '',
            'ssb_name' => $student_class->club->name ?? '',
            // 'ssb_name' => isset($student_class) && ($user->confirmed == 'y') ? $student_class->club->name : '',
            // 'ssb_name' => isset($user->club) && ($user->confirmed == 'y') ? $user->club->name : '',
            'is_complete' => isset($detail) ? true : false,
            'payment_status' => (!empty($payment) && $payment->payment_status == 2) ? true : false
        ];
        // $user = auth()->user();student_class
        return response()->json($data);
    }

    public function update_profile(Request $request)
    {
        // $imageTemp = $request->file('photo')->getPathName();
        // $destination_photo = './upload/student/hello_akta_'.$request->file('photo')->getClientOriginalName();
        // $destination_photo = './upload/student/hello_'.$request->file('photo')->getClientOriginalName();

        // dd($destination_photo);
        // dd($request->file('photo')->getPathName());
        
        // return $this->compressImage($imageTemp, $destination_photo, 75);

        // return $request->file('photo')->getMaxFilesize();
        // $img = Image::make($request->file('photo')->getRealPath());
        // return $img->filesize();
        
        $user = auth()->user();
        if ($user->detail_id == 0) {
            // if ($user->detail_id == 0 || $user->detail_id == NULL) {

            $validator = Validator::make($request->all(), [
                'nik' => 'required|string|min:3|unique:students,nik',
                'name' => 'required|string|min:3|max:255',
                'nick_name' => 'required|string|min:3|max:50',
                // 'class_id' => 'required',
                'date_of_birth' => 'required|date',
                'place_of_birth' => 'required|string|min:3|max:255',
                'address' => 'required|string|min:5|max:255',
                'photo' => 'mimes:jpg,png',
                'akta' => 'mimes:jpg,png,pdf',
                'kartu_keluarga' => 'mimes:jpg,png,pdf',
                'ijasah' => 'mimes:jpg,png,pdf',
            ]);
    
            if ($validator->fails()) {
                return response()->json($validator->messages(), 422);
            } else {
                

            // if (empty($request->nik) or empty($request->name) or empty($request->nick_name) or empty($request->address) or empty($request->place_of_birth) or empty($request->date_of_birth) or empty($request->weight) or empty($request->height) or empty($request->parent_name)) {
            //     return response()->json([
            //         'status' => 'error',
            //         'message' => 'You must fill all the fields'
            //     ]);
            // } else {
                // $destination_photo = '/upload/student/';

                // // unlink($destination_photo.'kartu_keluarga_1664177647.PNG');
                // // unlink('.'.$destination_photo.'ijasah_1664177647.PNG');

                // return;
                
                $student = new Student;
                // $student->club_id = ($user->club_id) ? $user->club_id : 0;
                // $student->class_id = ($request->class_id) ? $request->class_id : 0;
                $student->club_id = ($user->club_id) ? $user->club_id : 0;
                $student->class_id = ($user->class_id) ? $user->class_id : 0;
                $student->nik = $request->nik;
                $student->nis = null;
                $student->name = $request->name;
                $student->email = $user->email;
                $student->nick_name = $request->nick_name;
                $student->address = $request->address;
                $student->place_of_birth = $request->place_of_birth;
                $student->date_of_birth = $request->date_of_birth;
                $student->weight = ($request->weight) ? $request->weight : 0;
                $student->height = ($request->height) ? $request->height : 0;
                $student->parent_name = ($request->parent_name) ? $request->parent_name : null;
                $student->save();

                $user->detail_id = $student->id;
                $user->name = $request->name;
                $user->save();

                if (!is_dir('./upload/student/')) {
                    mkdir('./upload/student/', 0777, true);
                }

                if ($request->hasFile('photo')) {
                    $imageTemp = $request->file('photo')->getPathName();
                    $file_name_photo = $request->file('photo')->getClientOriginalName();
                    $file_ext_photo = $request->file('photo')->getClientOriginalExtension();

                    $destination_photo = './upload/student/';
                    $new_file_name_photo = 'pas_photo_' . time() . '.' .$file_ext_photo;
                    
                    // $this->compressImage($imageTemp, $destination_photo, 75);

                    if ($this->compressImage($imageTemp, $destination_photo.$new_file_name_photo, 50)) {
                    // if ($request->file('photo')->move($destination_photo, $new_file_name_photo)) {
                        $data[0]['name'] = $file_name_photo;
                        $data[0]['path'] = '/upload/student/' . $new_file_name_photo;
                        $data[0]['status'] = 'pasphoto';
                        $data[0]['mime'] = $file_ext_photo;

                        $student = Student::find($student->id);
                        $student->thumbnail_image_path = '/upload/student/' . $new_file_name_photo;
                        $student->save();

                    }
                }

                if ($request->hasFile('akta')) {
                    $aktaTemp = $request->file('akta')->getPathName();
                    $file_name_akta = $request->file('akta')->getClientOriginalName();
                    $file_ext_akta = $request->file('akta')->getClientOriginalExtension();

                    $destination_akta = './upload/student/';
                    $new_file_name_akta = 'akta_' . time() . '.' .((strtolower($file_ext_akta)=='pdf') ? 'jpg' : $file_ext_akta);
                    
                    if (strtolower($file_ext_akta) == 'pdf') {
                        $pdf = new Pdf($aktaTemp);
                        $pdf->saveImage($destination_akta.'akta_' . time() . '.jpg');
                    } else {
                        $this->compressImage($aktaTemp, $destination_akta.$new_file_name_akta, 50);
                    }
                    
                    // if ($this->compressImage($aktaTemp, $destination_akta.$new_file_name_akta, 50)) {
                        $data[1]['name'] = $file_name_akta;
                        $data[1]['path'] = '/upload/student/' . $new_file_name_akta;
                        $data[1]['status'] = 'akta_lahir';
                        $data[1]['mime'] = $file_ext_akta;
                    // }
                }

                if ($request->hasFile('kartu_keluarga')) {
                    $kkTemp = $request->file('kartu_keluarga')->getPathName();
                    $file_name_kk = $request->file('kartu_keluarga')->getClientOriginalName();
                    $file_ext_kk = $request->file('kartu_keluarga')->getClientOriginalExtension();

                    $destination_kk = './upload/student/';
                    // $new_file_name_kk = 'kartu_keluarga_' . time() . '.' .$file_ext_kk;
                    $new_file_name_kk = 'kartu_keluarga_' . time() . '.' .((strtolower($file_ext_kk) == 'pdf') ? 'jpg' : $file_ext_kk);

                    if (strtolower($file_ext_kk) == 'pdf') {
                        $pdf = new Pdf($kkTemp);
                        $pdf->saveImage($destination_kk.'kartu_keluarga_' . time() . '.jpg');
                    } else {
                        $this->compressImage($kkTemp, $destination_kk.$new_file_name_kk, 50);
                    }
                    
                    // if ($this->compressImage($kkTemp, $destination_kk.$new_file_name_kk, 50)) {
                        // if ($request->file('kartu_keluarga')->move($destination_kk, $new_file_name_kk)) {
                        $data[2]['name'] = $file_name_kk;
                        $data[2]['path'] = '/upload/student/' . $new_file_name_kk;
                        $data[2]['status'] = 'kartu_keluarga';
                        $data[2]['mime'] = $file_ext_kk;
                    // }
                }

                if ($request->hasFile('ijasah')) {
                    $ijazahTemp = $request->file('ijasah')->getPathName();
                    $file_name_ijazah = $request->file('ijasah')->getClientOriginalName();
                    $file_ext_ijazah = $request->file('ijasah')->getClientOriginalExtension();

                    $destination_ijazah = './upload/student/';
                    $new_file_name_ijazah = 'ijasah_' . time() . '.' .((strtolower($file_ext_ijazah) == 'pdf') ? 'jpg' : $file_ext_ijazah);
                    
                    if (strtolower($file_ext_ijazah) == 'pdf') {
                        $pdf = new Pdf($ijazahTemp);
                        $pdf->saveImage($destination_ijazah.'ijasah_' . time() . '.jpg');
                    } else {
                        $this->compressImage($ijazahTemp, $destination_ijazah.$new_file_name_ijazah, 50);
                    }

                    // if ($this->compressImage($ijazahTemp, $destination_ijazah.$new_file_name_ijazah, 50)) {
                        // if ($request->file('ijasah')->move($destination_ijazah, $new_file_name_ijazah)) {
                        $data[3]['name'] = $file_name_ijazah;
                        $data[3]['path'] = '/upload/student/' . $new_file_name_ijazah;
                        $data[3]['status'] = 'ijasah';
                        $data[3]['mime'] = $file_ext_ijazah;
                    // }
                }

                if (isset($data)) {
                    foreach ($data as $key => $value) {

                        $student_asset = new StudentAsset;
                        $student_asset->student_id = $student->id;
                        $student_asset->name = $value['name'];
                        $student_asset->mime = $value['mime'];
                        $student_asset->status = $value['status'];
                        $student_asset->path = $value['path'];
                        $student_asset->save();

                    }
                }

                return response()->json([
                    'status' => 'success',
                    'message' => 'Profil berhasil diperbarui'
                ]);

            }

        } else {

            $validator = Validator::make($request->all(), [
                'nik' => 'string|min:3|unique:students,nik,'.$user->detail_id,
                'name' => 'string|min:3|max:255',
                'nick_name' => 'string|min:3|max:50',
                // 'class_id' => 'required',
                'date_of_birth' => 'date',
                'place_of_birth' => 'string|min:3|max:255',
                'address' => 'string|min:5|max:255',
                'photo' => 'mimes:jpg,png',
                'akta' => 'mimes:jpg,png,pdf',
                'kartu_keluarga' => 'mimes:jpg,png,pdf',
                'ijasah' => 'mimes:jpg,png,pdf',
            ]);
    
            if ($validator->fails()) {
                return response()->json($validator->messages(), 422);
            }

            $student = Student::find($user->detail_id);
            // $student->class_id = ($request->class_id) ? $request->class_id : $student->class_id;
            $student->nik = ($request->nik) ? $request->nik : $student->nik;
            $student->name = ($request->name) ? $request->name : $student->name;
            $student->nick_name = ($request->nick_name) ? $request->nick_name : $student->nick_name;
            $student->address = ($request->address) ? $request->address : $student->address;
            $student->place_of_birth = ($request->place_of_birth) ? $request->place_of_birth : $student->place_of_birth;
            $student->date_of_birth = ($request->date_of_birth) ? $request->date_of_birth : $student->date_of_birth;
            $student->weight = ($request->weight) ? $request->weight : $student->weight;
            $student->height = ($request->height) ? $request->height : $student->height;
            $student->parent_name = ($request->parent_name) ? $request->parent_name : $student->parent_name;
            $student->save();

            $user->name = ($request->name) ? $request->name : $student->name;
            $user->save();

            if (!is_dir('./upload/student/')) {
                mkdir('./upload/student/', 0777, true);
            }

            if ($request->hasFile('photo')) {
                $imageTemp = $request->file('photo')->getPathName();
                $file_name_photo = $request->file('photo')->getClientOriginalName();
                $file_ext_photo = $request->file('photo')->getClientOriginalExtension();

                $destination_photo = './upload/student/';
                $new_file_name_photo = 'pas_photo_' . time() . '.' .$file_ext_photo;
                
                if ($this->compressImage($imageTemp, $destination_photo.$new_file_name_photo, 50)) {
                // if ($request->file('photo')->move($destination_photo, $new_file_name_photo)) {
                    $sa = StudentAsset::where([
                        ['student_id', $student->id],
                        ['status', 'pasphoto'],
                    ])->first();

                    if (!empty($sa)) {
                        if (!empty($sa->path) && file_exists('.'.$sa->path)) {
                            unlink('.'.$sa->path);
                        }
                        
                        $sa->name = $file_name_photo;
                        $sa->path = '/upload/student/' . $new_file_name_photo;
                        $sa->status = 'pasphoto';
                        $sa->mime = $file_ext_photo;
                        $sa->save();
                    } else {
                        $asset = new StudentAsset;
                        $asset->student_id = $student->id;
                        $asset->name = $file_name_photo;
                        $asset->path = '/upload/student/' . $new_file_name_photo;
                        $asset->status = 'pasphoto';
                        $asset->mime = $file_ext_photo;
                        $asset->save();
                    }
                    
                    $student = Student::find($student->id);
                    $student->thumbnail_image_path = '/upload/student/' . $new_file_name_photo;
                    $student->save();
                }
            }

            if ($request->hasFile('akta')) {
                $aktaTemp = $request->file('akta')->getPathName();
                $file_name_akta = $request->file('akta')->getClientOriginalName();
                $file_ext_akta = $request->file('akta')->getClientOriginalExtension();

                $destination_akta = './upload/student/';
                $new_file_name_akta = 'akta_' . time() . '.' .((strtolower($file_ext_akta)=='pdf') ? 'jpg' : $file_ext_akta);

                if (strtolower($file_ext_akta) == 'pdf') {
                    $pdf = new Pdf($aktaTemp);
                    $pdf->saveImage($destination_akta.'akta_' . time() . '.jpg');
                } else {
                    $this->compressImage($aktaTemp, $destination_akta.$new_file_name_akta, 50);
                }

                    // if ($this->compressImage($aktaTemp, $destination_akta.$new_file_name_akta, 50)) {
                $sa = StudentAsset::where([
                    ['student_id', $student->id],
                    ['status', 'akta_lahir'],
                ])->first();
                if (!empty($sa)) {
                    if (!empty($sa->path) && file_exists('.'.$sa->path)) {
                        unlink('.'.$sa->path);
                    }
                    $sa->name = $file_name_akta;
                    $sa->path = '/upload/student/' . $new_file_name_akta;
                    $sa->status = 'akta_lahir';
                    $sa->mime = $file_ext_akta;
                    $sa->save();
                } else {
                    $asset = new StudentAsset;
                    $asset->student_id = $student->id;
                    $asset->name = $file_name_akta;
                    $asset->path = '/upload/student/' . $new_file_name_akta;
                    $asset->status = 'akta_lahir';
                    $asset->mime = $file_ext_akta;
                    $asset->save();
                }
                    // }

            }

            if ($request->hasFile('kartu_keluarga')) {
                $kkTemp = $request->file('kartu_keluarga')->getPathName();
                $file_name_kk = $request->file('kartu_keluarga')->getClientOriginalName();
                $file_ext_kk = $request->file('kartu_keluarga')->getClientOriginalExtension();

                $destination_kk = './upload/student/';
                // $new_file_name_kk = 'kartu_keluarga_' . time() . '.' .$file_ext_kk;
                $new_file_name_kk = 'kartu_keluarga_' . time() . '.' .((strtolower($file_ext_kk) == 'pdf') ? 'jpg' : $file_ext_kk);

                if (strtolower($file_ext_kk) == 'pdf') {
                    $pdf = new Pdf($kkTemp);
                    $pdf->saveImage($destination_kk.'kartu_keluarga_' . time() . '.jpg');
                } else {
                    $this->compressImage($kkTemp, $destination_kk.$new_file_name_kk, 50);
                }

                // if ($this->compressImage($kkTemp, $destination_kk.$new_file_name_kk, 50)) {
                $sa = StudentAsset::where([
                    ['student_id', $student->id],
                    ['status', 'kartu_keluarga'],
                ])->first();
                if (!empty($sa)) {
                    if (!empty($sa->path) && file_exists('.'.$sa->path)) {
                        unlink('.'.$sa->path);
                    }
                    $sa->name = $file_name_kk;
                    $sa->path = '/upload/student/' . $new_file_name_kk;
                    $sa->status = 'kartu_keluarga';
                    $sa->mime = $file_ext_kk;
                    $sa->save();
                } else {
                    $asset = new StudentAsset;
                    $asset->student_id = $student->id;
                    $asset->name = $file_name_kk;
                    $asset->path = '/upload/student/' . $new_file_name_kk;
                    $asset->status = 'kartu_keluarga';
                    $asset->mime = $file_ext_kk;
                    $asset->save();
                }
                // }
            }

            if ($request->hasFile('ijasah')) {
                $ijazahTemp = $request->file('ijasah')->getPathName();
                $file_name_ijazah = $request->file('ijasah')->getClientOriginalName();
                $file_ext_ijazah = $request->file('ijasah')->getClientOriginalExtension();

                $destination_ijazah = './upload/student/';
                $new_file_name_ijazah = 'ijasah_' . time() . '.' .((strtolower($file_ext_ijazah) == 'pdf') ? 'jpg' : $file_ext_ijazah);
                // $new_file_name_ijazah = 'ijasah_' . time() . '.' .$file_ext_ijazah;
                if (strtolower($file_ext_ijazah) == 'pdf') {
                    $pdf = new Pdf($ijazahTemp);
                    $pdf->saveImage($destination_ijazah.'ijasah_' . time() . '.jpg');
                } else {
                    $this->compressImage($ijazahTemp, $destination_ijazah.$new_file_name_ijazah, 50);
                }

                // if ($this->compressImage($ijazahTemp, $destination_ijazah.$new_file_name_ijazah, 50)) {
                $sa = StudentAsset::where([
                    ['student_id', $student->id],
                    ['status', 'ijasah'],
                ])->first();
                if (!empty($sa)) {
                    if (!empty($sa->path) && file_exists('.'.$sa->path)) {
                        unlink('.'.$sa->path);
                    }
                    $sa->name = $file_name_ijazah;
                    $sa->path = '/upload/student/' . $new_file_name_ijazah;
                    $sa->status = 'ijasah';
                    $sa->mime = $file_ext_ijazah;
                    $sa->save();
                } else {
                    $asset = new StudentAsset;
                    $asset->student_id = $student->id;
                    $asset->name = $file_name_ijazah;
                    $asset->path = '/upload/student/' . $new_file_name_ijazah;
                    $asset->status = 'ijasah';
                    $asset->mime = $file_ext_ijazah;
                    $asset->save();
                }
                // }
            }

            return response()->json([
                'status' => 'success',
                'message' => 'Profil berhasil diperbarui'
            ]);
        }
    }

    public function compressImage($source, $destination, $quality) { 
        // Get image info 
        $imgInfo = getimagesize($source); 
        $mime = $imgInfo['mime']; 
         
        // Create a new image from file 
        switch($mime){ 
            case 'image/jpeg': 
                $image = imagecreatefromjpeg($source); 
                break; 
            case 'image/png': 
                $image = imagecreatefrompng($source); 
                break;
            default: 
                $image = imagecreatefromjpeg($source); 
        } 
         
        // Save image 
        imagejpeg($image, $destination, $quality); 
         
        // Return compressed image 
        return $destination; 
    }

    // public function convert_filesize($bytes, $decimals = 2) { 
    //     $size = array('B','KB','MB','GB','TB','PB','EB','ZB','YB'); 
    //     $factor = floor((strlen($bytes) - 1) / 3); 
    //     return sprintf("%.{$decimals}f", $bytes / pow(1024, $factor)) . @$size[$factor]; 
    // }

    // public function update_photo(Request $request)
    // {
        
    // }

    //
}
