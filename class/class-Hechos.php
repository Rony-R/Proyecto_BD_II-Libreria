<?php

	class Hechos{

		private $codigo_registro;
		private $id_libro;
		private $id_categoria;
		private $id_empleado;
		private $cod_reg_tiempo;
		private $venta_total;
		private $num_veces_prestado;

		public function __construct($codigo_registro,$id_libro,$id_categoria,$id_empleado,
                                    $cod_reg_tiempo,$venta_total,$num_veces_prestado){

			$this->codigo_registro = $codigo_registro;
			$this->id_libro = $id_libro;
			$this->id_categoria = $id_categoria;
			$this->id_empleado = $id_empleado;
			$this->cod_reg_tiempo = $cod_reg_tiempo;
			$this->venta_total = $venta_total;
			$this->num_veces_prestado = $num_veces_prestado;
        }
        
        //Metodo toString:
        
		public function toString(){
			return "Codigo_registro: " . $this->codigo_registro . 
				" Id_libro: " . $this->id_libro . 
				" Id_categoria: " . $this->id_categoria . 
				" Id_empleado: " . $this->id_empleado . 
				" Cod_reg_tiempo: " . $this->cod_reg_tiempo . 
				" Venta_total: " . $this->venta_total . 
				" Num_veces_prestado: " . $this->num_veces_prestado;
        }
        
        //Otros Metodos:

	}
?>