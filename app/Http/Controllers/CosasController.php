<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Serie;

class CosasController extends Controller
{
    public function index() {
        $cosas = Serie::all();
        $argumentos['cosas'] = $cosas;

        return view("index", $argumentos);
    }

    //Crear anime
    public function create() {
        $argumentos = array(); 
        return view('agregar', $argumentos);
    }

    public function store(Request $request) {
        $nuevoSerie = new Serie();
        $nuevoSerie->nombre = $request->input('nombre');
        $nuevoSerie->genero = $request->input('genero');
        $nuevoSerie->capitulos = $request->input('capitulos');
        $nuevoSerie->descripcion = $request->input('descripcion');
        $nuevoSerie->temporadas = $request->input('temporadas');


        $imagen = $request->file('imagen');
            if ($imagen) {
                $nuevoSerie->imagen = $imagen->hashName();
                $imagen->store('public/fotos');  
            }

    }


    public function edit($id) {
        $animes = Serie::find($id);
        $argumentos['animes'] = $animes;

        return view('editar', $argumentos);
    } 

    public function update(Request $request, $id) {
        $animes = Serie::find($id);
        $animes->nombre = $request->input('nombre');
        $animes->genero = $request->input('genero');
        $animes->capitulos = $request->input('capitulos');
        $animes->descripcion = $request->input('descripcion');
        $animes->temporadas = $request->input('temporadas');


        $imagen = $request->file('imagen');
            if ($imagen) {
                $animes->imagen = $imagen->hashName();
                $imagen->store('public/fotos');  
            }


        $animes->save();
        return redirect()->route('cosas.index', $id);
    }

    public function delete($id) {
        $animes = Serie::find($id);
        $argumentos['anime'] = $animes;
        return view('animes.delete', $argumentos);
    }

    public function destroy(Request $request, $id) {
        error_log("fallo");
        $animes = Serie::find($id);
        $animes->delete();
        return redirect()->route('cosas.index');
    }
}
