<?php

namespace App\Http\Controllers;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Facades\Hash;
use App\Models\User;
use Illuminate\Support\Str;
use App\Mail\Verification;
use App\Mail\Information;
use Illuminate\Support\Facades\Mail;
use App\Models\ActivityLog;
use App\Jobs\SignupJob;

class AuthController extends Controller
{
    public function register(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'name' => 'required|string|max:255',
            'phone' => 'required|numeric',
            'email' => 'required|string|email|max:255|unique:users',
            'password' => 'required|min:6',
        ]);

        if ($validator->fails()) {
            return response()->json($validator->messages(), 422);
        } else {
            $user = new User();
            $user->club_id = 0;
            $user->paguyuban_id = 0;
            // $user->detail_id = NULL;
            $user->detail_id = 0;
            $user->name = $request->name;
            $user->email = $request->email;
            $user->wa_number = $request->phone;
            $user->password = Hash::make($request->password);
            $user->role = 'student';
            $user->is_active = 'n';
            $user->save();
            $url = route('activation.student', ['token'=>encrypt($user->id)]);
            $param = array(
                'name' => $user->name,
                'email' => $user->email,
                'wa' => $user->wa_number,
            );

            $details = ['url' => $url, 'email' => $request->email];
            dispatch(new SignupJob($details));
            // Mail::to($request->email)->send(new Verification($url));
            // Mail::to('brata@bolasoft.id')->send(new Information($param));
            return response()->json([
                'status' => 'success',
                'message' => 'Silahkan cek email untuk aktivasi akun anda'
            ]);
        }
    }

    /**
     * Get a JWT via given credentials.
     *
     * @return \Illuminate\Http\JsonResponse
     */
    public function login(Request $request)
    {
        if (empty($request->email) or empty($request->password)) {
            return response()->json([
                'status' => 'error',
                'message' => 'Semua field wajib diisi'
            ]);
        }

        $credentials = request(['email', 'password']);
        $credentials['role'] = 'student';

        if (!$token = auth()->attempt($credentials)) {
            return response()->json([
                'status' => 'error',
                'message' => 'Email/Password anda salah'
            ], 401);
        }

        $user = auth()->user();
        if ($user->is_active == 'n') {
            auth()->logout();

            return response()->json([
                'status' => 'error',
                'message' => 'Silahkan aktivasi akun melalui link yang kami kirimkan lewat email anda'
            ], 401);
        }

        return $this->respondWithToken($token);
    }

    /**
     * Log the user out (Invalidate the token).
     *
     * @return \Illuminate\Http\JsonResponse
     */
    public function logout()
    {
        auth()->logout();

        return response()->json([
            'status' => 'error',
            'message' => 'Anda berhasil melakukan logout'
        ]);
    }

    /**
     * Refresh a token.
     *
     * @return \Illuminate\Http\JsonResponse
     */
    public function refresh()
    {
        return $this->respondWithToken(auth()->refresh());
    }

    protected function respondWithToken($token)
    {
        return response()->json([
            'status' => 'success',
            'access_token' => $token,
            'token_type' => 'bearer',
            'expires_in' => auth()->factory()->getTTL() * 60
        ]);
    }

    /**
     * Get the authenticated User.
     *
     * @return \Illuminate\Http\JsonResponse
     */
    public function me()
    {
        return response()->json(auth()->user());
    }

    public function test()
    {
        return Str::random(32);
    }

    public function student_activation(Request $request)
    {
        $user = User::find(decrypt($request->token));

        if (isset($user)) {
            if ($user->is_active != 'y') {

                $user->is_active = 'y';
                $user->save();

                ActivityLog::create([
                    'user_id' => $user->id, 
                    'type' => 'signup',
                    'icon' => 'smile_pay',
                    'title' => 'Kamu belum menyelesaikan Pembayaran nih. Selesaikan pembayaranmu yak!'
                ]);

                return view('emails.activation');
            }
        }
        return view('emails.activation_not_found');
    }
}
