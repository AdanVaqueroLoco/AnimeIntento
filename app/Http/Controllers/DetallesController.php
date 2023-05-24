<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Personaje;

class DetallesController extends Controller
{
    public function index() {
        $detalles = Personaje::all();
        $argumentos['detalles'] = $detalles;

        return view("index", $argumentos);
    }

    //Crear anime
    public function create() {
        $argumentos = array(); 
        return view('agregar', $argumentos);
    }

    public function store(Request $request) {
        $nuevoPersonaje = new Personaje();
        $nuevoPersonaje->nombre = $request->input('nombre');
        $nuevoPersonaje->genero = $request->input('genero');
        $nuevoPersonaje->capitulos = $request->input('capitulos');
        $nuevoPersonaje->descripcion = $request->input('descripcion');
        $nuevoPersonaje->temporadas = $request->input('temporadas');


        $imagen = $request->file('imagen');
            if ($imagen) {
                $nuevoPersonaje->imagen = $imagen->hashName();
                $imagen->store('public/fotos');  
            }

    }


    public function edit($id) {
        $animes = Personaje::find($id);
        $argumentos['animes'] = $animes;

        return view('editar', $argumentos);
    } 

    public function update(Request $request, $id) {
        $animes = Personaje::find($id);
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
        return redirect()->route('detalles.index', $id);
    }

    public function delete($id) {
        $animes = Personaje::find($id);
        $argumentos['anime'] = $animes;
        return view('animes.delete', $argumentos);
    }

    public function destroy(Request $request, $id) {
        error_log("fallo");
        $animes = Personaje::find($id);
        $animes->delete();
        return redirect()->route('detalles.index');
    }
}
