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
            $user->detail_id = 0;
            $user->name = $request->name;
            $user->email = $request->email;
            $user->wa_number = $request->phone;
            $user->password = Hash::make($request->password);
            $user->role = 'student';
            $user->is_active = 'n';
            $user->save();
            // send session
            // Session::flash('info', 'Silahkan Aktivasi akun anda via <a href="https://www.gmail.com" target="_blank" class="badge badge-warning text-dark"> email </a>');
            // prepare send token
            $url = route('activation.student', ['token'=>encrypt($user->id)]);
            // $to = $req->email;
            $param = array(
                'name' => $user->name,
                'email' => $user->email,
                'wa' => $user->wa_number,
            );

            Mail::to($request->email)->send(new Verification($url));
            Mail::to('brata@bolasoft.id')->send(new Information($param));
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
        // $this->validate($request, [
        //     'email' => 'required|string|email',
        //     'password' => 'required|min:6',
        // ]);
        if (empty($request->email) or empty($request->password)) {
            return response()->json([
                'status' => 'error',
                'message' => 'You must fill all the fields'
            ]);
        }

        $credentials = request(['email', 'password']);
        $credentials['role'] = 'student';

        if (!$token = auth()->attempt($credentials)) {
            return response()->json(['error' => 'Unauthorized'], 401);
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
            'message' => 'Successfully logged out'
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

    public function student_activation(Request $request){
        $user = User::find(decrypt($request->token));
        $user->is_active = 'y';
        $user->save();
        // return redirect()->route('home');
        return response()->json([
            'status' => 'success',
            'message' => 'Successfully activated'
        ]);
    }
}
