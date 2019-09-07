<?php

	class Sucursal{

		private $id_sucursal;
		private $nombre_sucursal;
		private $direccion;

        public function __construct($id_sucursal,$nombre_sucursal,$direccion)
        {
			$this->id_sucursal = $id_sucursal;
			$this->nombre_sucursal = $nombre_sucursal;
			$this->direccion = $direccion;
        }

        //Getters y Setters
		public function getId_sucursal(){
			return $this->id_sucursal;
		}
		public function setId_sucursal($id_sucursal){
			$this->id_sucursal = $id_sucursal;
		}
		public function getNombre_sucursal(){
			return $this->nombre_sucursal;
		}
		public function setNombre_sucursal($nombre_sucursal){
			$this->nombre_sucursal = $nombre_sucursal;
		}
		public function getDireccion(){
			return $this->direccion;
		}
		public function setDireccion($direccion){
			$this->direccion = $direccion;
		}
		public function toString(){
			return "Id_sucursal: " . $this->id_sucursal . 
				" Nombre_sucursal: " . $this->nombre_sucursal . 
				" Direccion: " . $this->direccion;
        }
        
        //Otros Metodos:
	}
?>