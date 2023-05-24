<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\CosasController;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});

Route::get('/index', [CosasController::class, 'index'])->name('cosas.index');
Route::get('/agregar', [CosasController::class, 'create'])->name('agregar.index');
Route::post('/animes', [CosasController::class, 'store'])->name('animes.store');
Route::get('/animes/{id}/edit', [CosasController::class, 'edit'])->name('animes.edit');
Route::put('/animes/{id}', [CosasController::class, 'update'])->name(('animes.update'));
Route::get('/animes/{id}/delete', [CosasController::class, 'delete'])->name('animes.delete');
Route::delete('/animes/{id}', [CosasController::class, 'destroy'])->name('animes.destroy');