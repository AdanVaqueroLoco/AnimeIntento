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

    //CREAR PERSONAJES
    public function create() {
        $argumentos = array(); 
        return view('añadir', $argumentos);
    }

    public function store(Request $request) {
        $nuevoPersonaje = new Personaje();
        $nuevoPersonaje->nombre = $request->input('nombre');
        $nuevoPersonaje->genero = $request->input('genero');
        $nuevoPersonaje->edad = $request->input('edad');
        $nuevoPersonaje->descripcion = $request->input('descripcion');


        $imagen = $request->file('imagen');
            if ($imagen) {
                $nuevoPersonaje->imagen = $imagen->hashName();
                $imagen->store('public/fotos');  
            }

        $imagen_2 = $request->file('imagen_2');
        if ($imagen_2) {
            $nuevoPersonaje->imagen_2 = $imagen_2->hashName();
            $imagen_2->store('public/fotos');  
        }
        $nuevoPersonaje->save();
        return redirect()->route('detalles.index');
    }

    //EDITAR
    public function edit($id) {
        $animes = Personaje::find($id);
        $argumentos['animes'] = $animes;

        return view('editar', $argumentos);
    } 

    public function update(Request $request, $id) {
        $animes = Personaje::find($id);
        $animes->nombre = $request->input('nombre');
        $animes->genero = $request->input('genero');
        $animes->edad = $request->input('edad');

        $animes->descripcion = $request->input('descripcion');


        $imagen = $request->file('imagen');
            if ($imagen) {
                $animes->imagen = $imagen->hashName();
                $imagen->store('public/fotos');  
            }

        $imagen_2 = $request->file('imagen_2');
        if ($imagen_2) {
            $animes->imagen_2 = $imagen_2->hashName();
            $imagen_2->store('public/fotos');  
        }
        $animes->save();
        return redirect()->route('detalles.index', $id);
    }

    //Eliminar
    public function delete($id) {
        $animes = Personaje::find($id);
        $argumentos['anime'] = $animes;
        return view('animes.delete', $argumentos);
    }

    public function destroy(Request $request, $id) {
        error_log("HOHO");
        $animes = Personaje::find($id);
        $animes->delete();
        return redirect()->route('detalles.index');
    }
}
