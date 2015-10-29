<?php

class MedicoController extends \BaseController {

    // listar
    public function listarMedico()
    {
        $medicostodo = Medico::all();
        return View::make('medico.listar')->with('medicostodo',$medicostodo);
    }

       

        public function insertar()
    {
            return View::make('medico.insertar');
    }


    public function store()
    {
        $medico = new Medico;
        $medico->codmedico = Input::get('codmedico');
        $medico->Nombre = Input::get('nombre');
        $medico->Apellido = Input::get('apellido');
        $medico->Email = Input::get('email');
        $medico->Telefono = Input::get('telefono');
        $medico->codEspecialidad = "E1";

        $medico->save();
        return Redirect::to('medico');
    }


     public function recuperarparamodificar($id)
      {
            $medeicoeditar = Medico::where('codmedico', '=', $id)->get();
            return View::make('medico.modificar')
                    ->with('medeicoeditar',$medeicoeditar);
    }

        public  function modificar($id)
        {
            $recuperado = Input::all();
            //print_r($recuperado) ;
            DB::table('tcarga_academica')
                    ->where('idcarga_academica',$id)
                    ->update([
                        'idcarga_academica'=> $id,
                        'grupo'=> $recuperado['grupo'],
                        'turno'=> $recuperado['turno'],
                        'idsemestre'=>$recuperado['idsemestre'],
                        'idasignatura'=>$recuperado['idasignatura'],
                        'idasignatura_cl'=>$recuperado['idasignatura_cl']
                            ]);
            return Redirect::to('carga_academica/listar');
        }






}
