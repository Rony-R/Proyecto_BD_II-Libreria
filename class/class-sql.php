<?php

	class sql{

		private $con_oltp;
		private $con_olap;

        public function __construct($con_oltp,$con_olap)
        {
			$this->con_oltp = $con_oltp;
			$this->con_olap = $con_olap;
		}
        
        //Otros Metodos:
		
		public function traerTablasBD($conexion)
		{
			$instruccion = "SELECT TABLE_NAME FROM USER_TABLES";

			$resultado = array();

			$resultado = $conexion->obtenerFila2($instruccion);

			return json_encode($resultado);

		}

	}
?>