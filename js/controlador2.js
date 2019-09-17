
var tablaUsar = '';

var tablaDestino = '';

var camposTabla = new Array();

var camposTabla2 = new Array();

var conversionesCampo = new Array();

var conversionesFecha = new Array();

var fechConver = 'fech-conver-1';

var strconcat1 = '';

var strconcat2 = '';

$(document).ready(function(){

    $.ajax({
        url: "ajax/api.php?accion=''",
        success: function(respuesta){
        
        },
        error: function(){
        console.log("Ocurrio un error en: generar-columnas-etl!!!");
        }
    });

});

$("#select-origen").change(function(){

    $.ajax({
        url: "ajax/api.php?accion='traer-tablas-olap'",
        dataType: "json",
        method: "GET",
        success: function(respuesta){

            for(var i=0; i<respuesta.length; i++)
            {
                $('select[id=selec-tabla-hechos]').append('<option>'+respuesta[i].TABLE_NAME+'</option>');
            }

        },
        error: function(e){
            console.log(e);
            console.log("Ocurrio un error en: traer-tablas-oltp; controlador");
        }
    });

    if($('select[id=select-origen]').val() == 1)
    {
        $("#div-select-tabla-1").removeClass("d-none");
        $("#div-select-tabla-1").addClass("d-block");
        $("#div-txta-sql-1").removeClass("d-block");
        $("#div-txta-sql-1").addClass("d-none");
        $("#chk-campos-1").removeClass("d-none");
        $("#chk-campos-1").addClass("d-block");
    }
    else
    {
        $("#div-txta-sql-1").removeClass("d-none");
        $("#div-txta-sql-1").addClass("d-block");
        $("#div-select-tabla-1").removeClass("d-block");
        $("#div-select-tabla-1").addClass("d-none");
        $("#chk-campos-1").removeClass("d-block");
        $("#chk-campos-1").addClass("d-none");
    }

});

$("#selec-tabla-hechos").change(function(){

    $("#form-chk-1").html('');

    var tabla = "tabla=" + $('select[id=selec-tabla-hechos]').val();

    tablaUsar = $('select[id=selec-tabla-hechos]').val();

    $.ajax({
        url: "ajax/api.php?accion='traer-campos-tablas2'",
        data: tabla,
        dataType: "json",
        method: "GET",
        success: function(respuesta){

            for(var i=0; i<respuesta.length; i++)
            {
                $("#form-chk-1").append('<input type="checkbox" id="chk-etl-1" name="campo-tabla" value="'+respuesta[i].COLUMN_NAME+'">'+respuesta[i].COLUMN_NAME+'<br>');
            }

        },
        error: function(e){
            console.log(e);
            console.log("Ocurrio un error en: traer-campos-tablas; controlador");
        }
    });

    $("#tabla-1").html("ETL "+$('select[id=selec-tabla-hechos]').val());

});

$("#btn-source-1").click(function(){

    tablaUsar = $('select[id=selec-tabla-hechos]').val();

    var datosSource = '';
    var datosSource2 = '';
    var datosSource3 = '';
    var posicion = 0;
    var i = 0;

    if($('select[id=select-origen]').val() == 1)
    {
        $('input:checkbox[id=chk-etl-1]:checked').each(function(){
            if(this.checked)
            {
                camposTabla[i] = $(this).val();
                i = i+1;
            }
        });

        for(var i=0; i<camposTabla.length; i++)
        {
            $("#div-campos-conversion-1").append(
                '<div class="col ml-3">'+
    
                '<label class="row mt-4" for=""><b>'+camposTabla[i]+'</b></label>'+
    
                '<div class="col">'+
    
                    '<input type="radio" name="conver-campo-'+i+'" value="1"> Minusculas <br>'+
                    '<input type="radio" name="conver-campo-'+i+'" value="2"> Mayusculas <br>'+
                    '<input type="radio" name="conver-campo-'+i+'" value="3"> Fecha <br>'+
    
                    '<div class="ml-4" id="chk-fecha">'+
                        '<input type="checkbox" value="1" id="fech-conver-1-'+i+'"> Dia <br>'+
                        '<input type="checkbox" value="2" id="fech-conver-1-'+i+'"> Mes <br>'+
                        '<input type="checkbox" value="3" id="fech-conver-1-'+i+'"> Año'+
                    '</div>'+
    
                    '<input type="radio" name="conver-campo-'+i+'" value="4"> Concatenacion'+

                    '<div id="div-concatenaciones-'+i+'">'+
                        '<select id="select-concat-'+i+'" class="dropdown btn btn-secondary">'+
                            '<option value="0">Seleccionar Campo</option>'+
                        '</select>'+
                    '</div>'+
    
                '</div>'+
    
            '</div>'
            );

            concatCampos1('select-concat-'+i);

        }

        console.log("DATOS CONTRONALOR1");

        console.log("La tabla es: " +tablaUsar);
        console.log("Los campos son: ");
        for(var i=0; i<camposTabla.length; i++)
            console.log(camposTabla[i]);

    }
    else
    {
        datosSource = $("#sql-txta-source-1").val();

        datosSource2 = datosSource.substring(7);

        posicion = datosSource2.indexOf("FROM");

        datosSource3 = datosSource2.substring(0, posicion);

        camposTabla2 = datosSource3.split(",");

        for(var i=0; i<camposTabla2.length; i++)
        {
            $("#div-campos-conversion-1").append(
                '<div class="col ml-3">'+
    
                '<label class="row mt-4" for=""><b>'+camposTabla2[i]+'</b></label>'+
    
                '<div class="col">'+
    
                    '<input type="radio" name="conver-campo-'+i+'" value="1"> Minusculas <br>'+
                    '<input type="radio" name="conver-campo-'+i+'" value="2"> Mayusculas <br>'+
                    '<input type="radio" name="conver-campo-'+i+'" value="3"> Fecha <br>'+
    
                    '<div class="ml-4" id="chk-fecha">'+
                        '<input type="checkbox" value="1" id="fech-conver-1-'+i+'"> Dia <br>'+
                        '<input type="checkbox" value="2" id="fech-conver-1-'+i+'"> Mes <br>'+
                        '<input type="checkbox" value="3" id="fech-conver-1-'+i+'"> Año'+
                    '</div>'+
    
                    '<input type="radio" name="conver-campo-'+i+'" value="4"> Concatenacion'+

                    '<div id="div-concatenaciones-'+i+'">'+
                        '<select id="select-concat-1-'+i+'" class="dropdown btn btn-secondary">'+
                            '<option value="0">Seleccionar Campo</option>'+
                        '</select>'+
                    '</div>'+

                '</div>'+
    
            '</div>'
            );

            concatCampos12('select-concat-1-'+i);

        }

        var posicion2 = datosSource.indexOf("FROM");

        tablaUsar = datosSource.substring(posicion2 +5, datosSource.length);

        console.log("DATOS CONTRONALOR1");

        $("#tabla-1").html("ETL "+tablaUsar);

        console.log("La tabla es: " +tablaUsar);
        console.log("Los campos son: ");
        for(var i=0; i<camposTabla2.length; i++)
            console.log(camposTabla2[i]);

    }

});

$("#btn-conversion-1").click(function(){

    if($('select[id=select-origen]').val() == 1)
    {
        for(var i=0; i<camposTabla.length; i++)
        {
            if($('input:radio[name=conver-campo-'+i+']:checked').val() == 4)
            {
                //strconcat = camposTabla[i] + ":" + $('select[id=select-concat-'+i+']').val();
                strconcat1 = camposTabla[i];
                strconcat2 = $('select[id=select-concat-'+i+']').val();
            }
            converFecha('fech-conver-1-'+i);
            //conversionesCampo[i] = 'campo='+i+ '&conversion=' + $('input:radio[name=conver-campo-'+i+']:checked').val();
            conversionesCampo[i] = i+ '&' + $('input:radio[name=conver-campo-'+i+']:checked').val();
        }
        
        console.log("Las conversiones son: ");
        for(var i=0; i<camposTabla.length; i++)
            console.log(conversionesCampo[i]);

        console.log("Las conversiones  de fecha son: ");
        for(var i=0; i<conversionesFecha.length; i++)
            console.log(conversionesFecha[i]);

        //console.log("Los campos a concatenar son: " + strconcat);
    }
    else
    {
        for(var i=0; i<camposTabla2.length; i++)
        {
            if($('input:radio[name=conver-campo-'+i+']:checked').val() == 4)
            {
                //strconcat = camposTabla2[i] + ":" + $('select[id=select-concat-1-'+i+']').val();
                strconcat1 = camposTabla2[i];
                strconcat2 = $('select[id=select-concat-1-'+i+']').val();
            }
            converFecha('fech-conver-1-'+i);
            //conversionesCampo[i] = 'campo='+i+ '&conversion=' + $('input:radio[name=conver-campo-'+i+']:checked').val();
            conversionesCampo[i] = i+ '&' + $('input:radio[name=conver-campo-'+i+']:checked').val();
        }

        console.log("Las conversiones son: ");
        for(var i=0; i<camposTabla2.length; i++)
            console.log(conversionesCampo[i]);

        console.log("Las conversiones  de fecha son: ");
        for(var i=0; i<conversionesFecha.length; i++)
            console.log(conversionesFecha[i]);

        //console.log("Los campos a concatenar son: " + strconcat);
    }

    $.ajax({
        url: "ajax/api.php?accion='traer-tablas-olap'",
        dataType: "json",
        method: "GET",
        success: function(respuesta){
    
            for(var i=0; i<respuesta.length; i++)
            {
                $('select[id=selec-tabla-destino-1]').append('<option>'+respuesta[i].TABLE_NAME+'</option>');
            }
    
        },
        error: function(e){
            console.log(e);
            console.log("Ocurrio un error en: traer-tablas-oltp; controlador");
        }
    });

});

function converFecha(idChk){

    var i = 0;

    $('input:checkbox[id='+idChk+']:checked').each(function(){
        if(this.checked)
        {
            conversionesFecha[i] = $(this).val();
            i = i+1;
        }
    });
}

function concatCampos1(idDiv){

    for(var i=0; i<camposTabla.length; i++)
    {
        $("#"+idDiv).append(
            '<option value="'+camposTabla[i]+'">'+camposTabla[i]+'</option>'
        );
    }

}

function concatCampos12(idDiv){

    for(var i=0; i<camposTabla2.length; i++)
    {
        $("#"+idDiv).append(
            '<option value="'+camposTabla2[i]+'">'+camposTabla2[i]+'</option>'
        );
    }

}

$("#btn-destination-1").click(function(){

    var sqlFinal = 'SELECT ';
    var sepConver = new Array();
    var strComillas = "' '";
    var camposConvertidos = new Array();
    var camposConvertidos2 = '';
    
    if($('select[id=select-origen]').val() == 1)
    {
        for(var i=0; i<camposTabla.length; i++)
        {
            sepConver[i] = conversionesCampo[i].split('&');
        }

        console.log('Resultado sepConver: ');
        for(var i=0; i<sepConver.length; i++)
        {
            console.log(sepConver[i]);
            if(sepConver[i] == i+',undefined')
            {
                if(camposTabla[i]+',undefined' == strconcat1+',undefined' || camposTabla[i]+',undefined'== strconcat2+',undefined')
                {
                    camposConvertidos[i] = '*';
                }
                else
                {
                    camposConvertidos[i] = camposTabla[i];
                }
            }
            else
            {
                if(sepConver[i] == i+',1')
                {
                    if(camposTabla[i]+',1' == strconcat1+',1' || camposTabla[i]+',1'== strconcat2+',1')
                    {
                        camposConvertidos[i] = '*';
                    }
                    else
                    {
                        camposConvertidos[i] = 'LOWER('+camposTabla[i]+')';
                    }
                }
                else
                {
                    if(sepConver[i] == i+',2')
                    {
                        if(camposTabla[i]+',2' == strconcat1+',2' || camposTabla[i]+',2' == strconcat2+',2')
                        {
                            camposConvertidos[i] = '*';
                        }
                        else
                        {
                            camposConvertidos[i] = 'UPPER('+camposTabla[i]+')';
                        }
                    }
                    else
                    {
                        if(sepConver[i] == i+',3')
                        {
                            for(var j=0; j<conversionesFecha.length; j++)
                            {
                                if(conversionesFecha[j] == ',undefined')
                                {
                                    camposConvertidos[i] = '*';
                                }
                                else
                                {
                                    if(conversionesFecha[j] == 1)
                                        camposConvertidos[i] = 'EXTRACT(DAY FROM '+camposTabla[i]+') AS DIA';
                                    else
                                    {
                                        if(conversionesFecha[j] == 2)
                                            camposConvertidos[i+1] = 'EXTRACT(MONTH FROM '+camposTabla[i]+') AS MES';
                                        else
                                            camposConvertidos[i+2] = 'EXTRACT(YEAR FROM '+camposTabla[i]+') AS AÑO';
                                    }
                                }
                            } 
                        }
                        else
                        {
                            camposConvertidos[i] = 'CONCAT('+strconcat1+','+strComillas+','+strconcat2+')';
                        }
                    }
                }
            }
        }

    }
    else
    {
        for(var i=0; i<camposTabla2.length; i++)
        {
            sepConver[i] = conversionesCampo[i].split('&');
        }

        console.log('Resultado sepConver: ');
        for(var i=0; i<sepConver.length; i++)
        {
            console.log(sepConver[i]);
            if(sepConver[i] == i+',undefined')
            {
                if(camposTabla2[i]+',undefined' == strconcat1+',undefined' || camposTabla2[i]+',undefined'== strconcat2+',undefined')
                {
                    camposConvertidos[i] = '*';
                }
                else
                {
                    camposConvertidos[i] = camposTabla2[i];
                }
            }
            else
            {
                if(sepConver[i] == i+',1')
                {
                    if(camposTabla2[i]+',1' == strconcat1+',1' || camposTabla2[i]+',1'== strconcat2+',1')
                    {
                        camposConvertidos[i] = '*';
                    }
                    else
                    {
                        camposConvertidos[i] = 'LOWER('+camposTabla2[i]+')';
                    }
                }
                else
                {
                    if(sepConver[i] == i+',2')
                    {
                        if(camposTabla2[i]+',2' == strconcat1+',2' || camposTabla2[i]+',2' == strconcat2+',2')
                        {
                            camposConvertidos[i] = '*';
                        }
                        else
                        {
                            camposConvertidos[i] = 'UPPER('+camposTabla2[i]+')';
                        }
                    }
                    else
                    {
                        if(sepConver[i] == i+',3')
                        {
                            for(var j=0; j<conversionesFecha.length; j++)
                            {
                                if(conversionesFecha[j] == ',undefined')
                                {
                                    camposConvertidos[i] = '*';
                                }
                                else
                                {
                                    if(conversionesFecha[j] == 1)
                                        camposConvertidos[i] = 'EXTRACT(DAY FROM '+camposTabla2[i]+') AS DIA';
                                    else
                                    {
                                        if(conversionesFecha[j] == 2)
                                            camposConvertidos[i+1] = 'EXTRACT(MONTH FROM '+camposTabla2[i]+') AS MES';
                                        else
                                            camposConvertidos[i+2] = 'EXTRACT(YEAR FROM '+camposTabla2[i]+') AS AÑO';
                                    }
                                }
                            }
                        }
                        else
                        {
                            camposConvertidos[i] = 'CONCAT('+strconcat1+','+strComillas+','+strconcat2+')';
                        }
                    }
                }
            }
        }

    }

    tablaDestino = $('select[id=selec-tabla-destino-1]').val();

    console.log('Resultado camposConvertidos: ');
    for(var i=0; i<camposConvertidos.length; i++)
    {
        if(camposConvertidos[i] != '*' && camposConvertidos[i] != 'undefined')
            camposConvertidos2 = camposConvertidos2+','+ camposConvertidos[i];
    }
    console.log(camposConvertidos2);

    if(tablaDestino == 'TBL_HECHOS_LIBRO')
    {
        sqlFinal = 'SELECT LIB.ID_LIBRO,CAT.ID_CATEGORIA,SUC.ID_SUCURSAL,EMP.ID_EMPLEADO,SUM(FAC.VENTA_TOTAL-(DESCU.PORCENTAJE_DESCUENTO*FAC.VENTA_TOTAL)) AS VENTA_TOTAL,COUNT(PL.ID_PRESTAMO) AS NUM_VECES_PRESTADOFROM TBL_FACTURAS FACINNER JOIN TBL_DETALLE_FACTURAS DF ON FAC.ID_FACTURA = DF.ID_FACTURAINNER JOIN TBL_DESCUENTOS DESCU ON DF.ID_DESCUENTO = DESCU.ID_DESCUENTOINNER JOIN TBL_LIBROS LIB ON DF.ID_LIBRO = LIB.ID_LIBROINNER JOIN TBL_CATEGORIAS CAT ON LIB.ID_CATEGORIA = CAT.ID_CATEGORIAINNER JOIN TBL_EMPLEADOS EMP ON FAC.ID_EMPLEADO = EMP.ID_EMPLEADOINNER JOIN TBL_EMPLEADOS_X_SUCURSAL EXS ON EMP.ID_EMPLEADO = EXS.ID_EMPLEADOINNER JOIN TBL_SUCURSALES SUC ON EXS.ID_SUCURSAL = SUC.ID_SUCURSALINNER JOIN TBL_PRESTAMOS_LIBRO PL ON FAC.ID_FACTURA = PL.ID_FACTURAGROUP BY LIB.ID_LIBRO, CAT.ID_CATEGORIA, SUC.ID_SUCURSAL, EMP.ID_EMPLEADO;';
        ejeCut(sqlFinal);
    }

    sqlFinal = sqlFinal + camposConvertidos2.substring(1, camposConvertidos2.length) + ' FROM ' + tablaDestino;

    console.log("La consulta definitiva es: " +sqlFinal);

});

$("#btn-sig-etl1").click(function(){
    window.location = "etl2.html";
});

$("#btn-sig-etl2").click(function(){
    window.location = "etl3.html";
});

$("#btn-sig-etl3").click(function(){
    window.location = "etl4.html";
});

$("#btn-sig-etl4").click(function(){
    window.location = "etl5.html";
});

$("#btn-sig-etl5").click(function(){
    window.location = "";
});

function ejecutarSql(consulta){

    var sql = "sql=" + consulta;

    $.ajax({
        url: "ajax/api.php?accion='ejecutarSqlDefinitiva'",
        data: sql,
        dataType: "json",
        method: "GET",
        success: function(respuesta){
            


        },
        error: function(e){
            console.log(e);
            console.log("Ocurrio un error en: ejecutarSqlDefinitiva");
        }
    });

}


function ejeCut(consulta){

    var sql = "sql=" + consulta;

    $.ajax({
        url: "ajax/api.php?accion='ejecutarSqlDefinitiva'",
        data: sql,
        dataType: "json",
        method: "GET",
        success:function(respuesta){

            var dat = '';
            console.log("Hechos!!!");

                for(var i=0; i<respuesta.length; i++)
                {
                    dat = 'dat=EXECUTE PA_INSERT_HECH('+ respuesta[i].ID_LIBRO +','+ respuesta[i].ID_CATEGORIA + ','+ respuesta[i].ID_SUCURSAL+',' + respuesta[i].ID_EMPLEADO+',' +respuesta[i].fecha+','+respuesta[i].VENTA_TOTAL+','+respuesta[i].P_VENT+','+respuesta[i].NUM_VECES_PRESTADO+', TO_DATE('+ "'" +respuesta[i].FECHA_INSERT+ "'" +','+"'"+'DD-MM-YY'+"'"+'))'; 

                                    $.ajax({
                                        url: "ajax/api.php?accion='procedimientoSqlDefinitiva'",
                                        data: dat,
                                        method: "GET",
                                        success: function(res){
                                            console.log("Los EXECUTE son: ");
                                            console.log(res);
                                        }
                                    });
                }

        }
    });

}