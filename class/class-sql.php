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

		public function traerCampTab($conexion, $tabla)
		{
			$instruccion = "SELECT COLUMN_NAME FROM ALL_TAB_COLUMNS WHERE TABLE_NAME = '$tabla'";

			$resultado = array();

			$resultado = $conexion->obtenerFila2($instruccion);

			return json_encode($resultado);

		}

		public function traerCamposTabla2($conexion, $tabla)
		{
			$instruccion = "SELECT COLUMN_NAME FROM ALL_TAB_COLUMNS WHERE TABLE_NAME = '$tabla'";

			$resultado = array();

			$resultado = $conexion->obtenerFila2($instruccion);

			return json_encode($resultado);

		}

		public function traerTablasBD2($conexion)
		{
			$instruccion = "SELECT TABLE_NAME FROM USER_TABLES";

			$resultado = array();

			$resultado = $conexion->obtenerFila2($instruccion);

			return json_encode($resultado);

		}

		public function ejecucionFinal($conexion, $sql)
		{
			$resultado = array();

			$resultado = $conexion->obtenerFila2($sql);

			return json_encode($resultado);
		}

		public function procedimientoSql($conexion, $exec)
		{
			$instruccion = $exec;

			return $instruccion;
		}

	}
?>