<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Customers;

class CustomersController extends Controller
{
    public function index(Request $request) {
    	return Customers::where('created_by' , $request->query('created_by'))->get();
    }

    public function show($id) {
    	return Customers::find($id);
    }

    public function store(Request $request) {
        $saveRequest = $request->all();
        $saveRequest['start_date'] = date('Y-m-d H:i:s',strtotime($saveRequest["start_date"]));
        $saveRequest['end_date'] = date('Y-m-d H:i:s',strtotime($saveRequest["end_date"]));
    	return Customers::create($saveRequest);
    }

    public function update(Request $request , $id) {
    	$customers = Customers::findOrFail($id);
        $updateRequest = $request->all();
        $updateRequest['start_date'] = date('Y-m-d H:i:s',strtotime($updateRequest["start_date"]));
        $updateRequest['end_date'] = date('Y-m-d H:i:s',strtotime($updateRequest["end_date"]));
        $customers->update($updateRequest);
    	return $customers;
    }
    
    public function delete(Request $request, $id) {
    	$customers = Customers::findOrFail($id);
    	$customers->delete();

    	return 204;
    }
}
