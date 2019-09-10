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

        case "'traer-campos-tablas'":

            $consulta2 = new sql($con_oltp, $con_olap);

            echo $consulta2->traerCamposTabla($con_oltp, $_GET["tabla"]);

        break;

        case "'eliminar-datos-command'":
        break;

        case "'traer-tablas-olap'":

            $consulta = new sql($con_oltp, $con_olap);

            echo $consulta->traerTablasBD2($con_olap);

        break;

        case "''":
        break;

        case "''":
        break;

        case "''":
        break;

        case "''":
        break;

        case "''":
        break;

        case "''":
        break;

        case "''":
        break;

        case "''":
        break;

    }

?>