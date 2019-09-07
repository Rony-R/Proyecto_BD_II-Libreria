<?php

	class Empleado{

		private $id_empleado;
		private $nombre_empleado;

        public function __construct($id_empleado,$nombre_empleado)
        {
			$this->id_empleado = $id_empleado;
			$this->nombre_empleado = $nombre_empleado;
        }
        
        //Getters y Setters
		public function getId_empleado(){
			return $this->id_empleado;
		}
		public function setId_empleado($id_empleado){
			$this->id_empleado = $id_empleado;
		}
		public function getNombre_empleado(){
			return $this->nombre_empleado;
		}
		public function setNombre_empleado($nombre_empleado){
			$this->nombre_empleado = $nombre_empleado;
		}
		public function toString(){
			return "Id_empleado: " . $this->id_empleado . 
				" Nombre_empleado: " . $this->nombre_empleado;
        }
        
        //Otros Metodos:
        
	}
?>