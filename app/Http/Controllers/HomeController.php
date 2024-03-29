<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Auth;
use DB;
use DateTime;
use DatePeriod;
use DateInterval;
use Calendar;
use Carbon\Carbon;


class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
        //$this->middleware('customer');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //return view('dashboard');
        return redirect()->route('dashboard');
    }

    public function dashboard()
    {
        return view('dashboard');
        
    }
}
