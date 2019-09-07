<?php

	class Tiempo{

		private $cod_reg_tiempo;
		private $anio;
		private $mes;
		private $dia;
		private $trimestre;

        public function __construct($cod_reg_tiempo,$anio,$mes,$dia,$trimestre)
        {
			$this->cod_reg_tiempo = $cod_reg_tiempo;
			$this->anio = $anio;
			$this->mes = $mes;
			$this->dia = $dia;
			$this->trimestre = $trimestre;
        }
        
        //Getters y Setters
		public function getCod_reg_tiempo(){
			return $this->cod_reg_tiempo;
		}
		public function setCod_reg_tiempo($cod_reg_tiempo){
			$this->cod_reg_tiempo = $cod_reg_tiempo;
		}
		public function getAnio(){
			return $this->anio;
		}
		public function setAnio($anio){
			$this->anio = $anio;
		}
		public function getMes(){
			return $this->mes;
		}
		public function setMes($mes){
			$this->mes = $mes;
		}
		public function getDia(){
			return $this->dia;
		}
		public function setDia($dia){
			$this->dia = $dia;
		}
		public function getTrimestre(){
			return $this->trimestre;
		}
		public function setTrimestre($trimestre){
			$this->trimestre = $trimestre;
		}
		public function toString(){
			return "Cod_reg_tiempo: " . $this->cod_reg_tiempo . 
				" Anio: " . $this->anio . 
				" Mes: " . $this->mes . 
				" Dia: " . $this->dia . 
				" Trimestre: " . $this->trimestre;
        }
        
        //Otros Metodos:
        
	}
?>