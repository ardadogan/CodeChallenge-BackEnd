<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Auth;
use Validator;
use App\User;

class UserController extends Controller
{
    public function userLogin(Request $request){
    	$validator = Validator::make($request->all(), [
            'email' => 'required|email',
            'password' => 'required'
        ]);

        if ($validator->fails()) {
            return response()->json(['error'=>$validator->errors()], 401);            
        }

        if(Auth::attempt(['email' => request('email'), 'password' => request('password')])){
            $user = Auth::user();
            $responseData['token'] =  $user->createToken('MyApp')->accessToken;
            $responseData['userID'] = $user->id;
            return response()->json(['success' => true , 'data' => $responseData], 200);
        }
        else{
            return response()->json(['error'=>'Unauthorised'], 401);
        }
    }

    public function userRegister(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'name' => 'required',
            'email' => 'required|email',
            'password' => 'required',
            'c_password' => 'required|same:password',
        ]);

        if ($validator->fails()) {
            return response()->json(['error'=>$validator->errors()], 401);            
        }

        $input = $request->all();
        $input['password'] = bcrypt($input['password']);
        $user = User::create($input);
        $responseData['token'] =  $user->createToken('MyApp')->accessToken;
        $responseData['name'] =  $user->name;
        $responseData['userID'] = $user->id;
        return response()->json(['success' , 'data' =>$responseData], 200);
    }

    public function userDetails()
    {
        $users = User::get();
        return response()->json(['success' , 'data' => $users], 200);
    }
} 
