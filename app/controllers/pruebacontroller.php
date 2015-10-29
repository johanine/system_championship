<?php

class pruebacontroller extends BaseController {

	public function index()
	{
		//echo "camala ya has jalado";
		//$pruebamedico = Medico::all();
		$pruebamedico = new Prueba;
		echo $pruebamedico;
		//return View::make('prueba.pruebawilson')->with('pruebamedico',$pruebamedico);
	}
}