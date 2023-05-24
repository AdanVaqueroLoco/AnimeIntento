<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\API\FocoController;
use App\Http\Controllers\API\SeriesController;
use App\Http\Controllers\API\CosasController;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "api" middleware group. Make something great!
|
*/

Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});
Route::get('anime',[SeriesController::class,'index'])->name('api.anime.index');
Route::get('cosa',[CosasController::class,'index'])->name('api.cosa.index');
