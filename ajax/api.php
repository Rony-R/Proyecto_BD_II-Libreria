<?php

    include("../class/class-Conexion_OLTP.php");
    include("../class/class-Conexion_OLAP.php");
    include("../class/class-Categoria.php");
    include("../class/class-Empleado.php");
    include("../class/class-Hechos.php");
    include("../class/class-Libro.php");
    include("../class/class-Sucursal.php");
    include("../class/class-Tiempo.php");
    include("../class/class-sql.php");

    $con_oltp = new Conexion_OLTP();
    $con_olap = new Conexion_OLAP();

    switch($_GET["accion"])
    {

        case "'traer-tablas-oltp'":

            $consulta = new sql($con_oltp, $con_olap);

            echo $consulta->traerTablasBD($con_oltp);

        break;

        case "''":
        break;

        case "''":
        break;

    }

?>