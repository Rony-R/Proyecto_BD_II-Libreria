<?php

	class Libro{

		private $id_libro;
		private $nombre_libro;

        public function __construct($id_libro,$nombre_libro)
        {
			$this->id_libro = $id_libro;
			$this->nombre_libro = $nombre_libro;
        }
        
        //Getters y Setters
		public function getId_libro(){
			return $this->id_libro;
		}
		public function setId_libro($id_libro){
			$this->id_libro = $id_libro;
		}
		public function getNombre_libro(){
			return $this->nombre_libro;
		}
		public function setNombre_libro($nombre_libro){
			$this->nombre_libro = $nombre_libro;
		}
		public function toString(){
			return "Id_libro: " . $this->id_libro . 
				" Nombre_libro: " . $this->nombre_libro;
        }
        
        //Otros Metodos:
        
	}
?>