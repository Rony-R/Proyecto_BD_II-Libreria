<?php

	class Categoria{

		private $id_categoria;
		private $descripcion;

        public function __construct($id_categoria,$descripcion)
        {
			$this->id_categoria = $id_categoria;
			$this->descripcion = $descripcion;
        }
        
        //Getters y Setters
		public function getId_categoria(){
			return $this->id_categoria;
		}
		public function setId_categoria($id_categoria){
			$this->id_categoria = $id_categoria;
		}
		public function getDescripcion(){
			return $this->descripcion;
		}
		public function setDescripcion($descripcion){
			$this->descripcion = $descripcion;
		}
		public function toString(){
			return "Id_categoria: " . $this->id_categoria . 
				" Descripcion: " . $this->descripcion;
        }
        
        //Otros Metodos:
        
	}
?>