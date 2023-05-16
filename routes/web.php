<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\DetallesController;

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

Route::get('/index', [DetallesController::class, 'index'])->name('detalles.index');
Route::get('/añadir', [DetallesController::class, 'create'])->name('añadir.index');
Route::post('/animes', [DetallesController::class, 'store'])->name('animes.store');
Route::get('/animes/{id}/edit', [DetallesController::class, 'edit'])->name('animes.edit');
Route::put('/animes/{id}', [DetallesController::class, 'update'])->name(('animes.update'));
Route::get('/animes/{id}/delete', [DetallesController::class, 'delete'])->name('animes.delete');
Route::delete('/animes/{id}', [DetallesController::class, 'destroy'])->name('animes.destroy');