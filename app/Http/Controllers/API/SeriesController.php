<?php

namespace App\Http\Controllers\API;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

use App\Models\Serie;

class SeriesController extends Controller
{
    public function index() {
        $animes = Serie::all();

        return $animes;
    }
}
