
var tablaUsar = '';

var tablaDestino = '';

var camposTabla = new Array();

var camposTabla2 = new Array();

var conversionesCampo = new Array();

var conversionesFecha = new Array();

var fechConver = 'fech-conver-1';

var strconcat1 = '';

var strconcat2 = '';

var fech;
var fech2;

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
        url: "ajax/api.php?accion='traer-tablas-oltp'",
        dataType: "json",
        method: "GET",
        success: function(respuesta){

            for(var i=0; i<respuesta.length; i++)
            {
                $('select[id=selec-tabla-1]').append('<option>'+respuesta[i].TABLE_NAME+'</option>');
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

$("#selec-tabla-1").change(function(){

    $("#form-chk-1").html('');

    var tabla = "tabla=" + $('select[id=selec-tabla-1]').val();

    tablaUsar = $('select[id=selec-tabla-1]').val();

    $.ajax({
        url: "ajax/api.php?accion='traer-campos-tablas-oltp'",
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

    $("#tabla-1").html("ETL "+$('select[id=selec-tabla-1]').val());

});

$("#btn-source-1").click(function(){

    tablaUsar = $('select[id=selec-tabla-1]').val();

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
                        camposConvertidos[i] = 'LOWER('+camposTabla[i]+') AS '+ camposTabla[i];
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
                            camposConvertidos[i] = 'UPPER('+camposTabla[i]+') AS ' + camposTabla[i];
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
                        camposConvertidos[i] = 'LOWER('+camposTabla2[i]+') AS '+ camposTabla2[i];
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
                            camposConvertidos[i] = 'UPPER('+camposTabla2[i]+') AS '+ camposTabla2[i];
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
        {
            if(camposConvertidos[i] == 'FECHA_INSERT')
                camposConvertidos2 = camposConvertidos2+','+'TO_CHAR('+camposConvertidos[i]+','+"'DD/MM/YY'"+') AS FECHA_INSERT';
            else
                camposConvertidos2 = camposConvertidos2+','+ camposConvertidos[i];
        }
            //camposConvertidos2 = camposConvertidos2+','+ camposConvertidos[i];
    }
    console.log(camposConvertidos2);

    sqlFinal = sqlFinal + camposConvertidos2.substring(1, camposConvertidos2.length) + ' FROM ' + tablaDestino;

    console.log("La consulta definitiva es: " +sqlFinal);

    ejecutarSql(sqlFinal, tablaDestino);

    //console.log("La tabla destino es: " + tablaDestino);

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
    window.location = "index.html";
});

function ejecutarSql(consulta, tabla){

    var sql = "sql=" + consulta;

    //alert("Data: " +sql);

    $.ajax({
        url: "ajax/api.php?accion='ejecutarSqlDefinitiva'",
        data: sql,
        dataType: "json",
        method: "GET",
        success: function(respuesta){

            //console.log("Los datos son: ");

            if(tabla == 'TBL_LIBROS')
            {
                var dat = '';

                for(var i=0; i<respuesta.length; i++)
                {
                    dat = 'dat=EXECUTE PA_INSERT_LIB('+ respuesta[i].ID_LIBRO +','+ "'" +respuesta[i].NOMBRE_LIBRO+ "'" +', TO_DATE('+ "'" +respuesta[i].FECHA_INSERT+ "'" +','+"'"+'DD-MM-YY'+"'"+'));'; 

                    //console.log(dat);

                    $.ajax({
                        url: "ajax/api.php?accion='procedimientoSqlDefinitiva'",
                        data: dat,
                        method: "GET",
                        success: function(respuesta){
                            console.log("Los EXECUTE son: ");
                            console.log(respuesta);
                        }
                    });
                }
                
            }
            else
            {
                if(tabla == 'TBL_SUCURSALES')
                {
                    /*for(var i=0; i<respuesta.length; i++)
                        console.log(respuesta[i].ID_SUCURSAL +' '+ respuesta[i].NOMBRE_SUCURSAL +' '+ respuesta[i].DIRECCION +' '+ respuesta[i].FECHA_INSERT) ;*/
                    dat = 'dat=EXECUTE PA_INSERT_SUCUR('+respuesta[i].ID_SUCURSAL+','+ respuesta[i].NOMBRE_SUCURSAL +','+ "'" +respuesta[i].DIRECCION+ "'" +', TO_DATE('+ "'" +respuesta[i].FECHA_INSERT+ "'" +','+"'"+'DD-MM-YY'+"'"+'));'; 

                    $.ajax({
                        url: "ajax/api.php?accion='procedimientoSqlDefinitiva'",
                        data: dat,
                        method: "GET",
                        success: function(respuesta){
                            console.log("Los EXECUTE son: ");
                            console.log(respuesta);
                        }
                    });

                }
                else
                {
                    if(tabla == 'TBL_EMPLEADOS')
                    {
                        /*for(var i=0; i<respuesta.length; i++)
                            console.log(respuesta[i].ID_EMPLEADO +' '+ respuesta[i].NOMBRE_EMPLEADO +' '+ respuesta[i].FECHA_INSERT);*/
                        dat = 'dat=EXECUTE PA_INSERT_EMPLEADOS('+ respuesta[i].ID_EMPLEADO +','+ "'" +respuesta[i].NOMBRE_EMPLEADO+ "'" +', TO_DATE('+ "'" +respuesta[i].FECHA_INSERT+ "'" +','+"'"+'DD-MM-YY'+"'"+'));'; 

                        $.ajax({
                            url: "ajax/api.php?accion='procedimientoSqlDefinitiva'",
                            data: dat,
                            method: "GET",
                            success: function(respuesta){
                                console.log("Los EXECUTE son: ");
                                console.log(respuesta);
                            }
                        });

                    }
                    else
                    {
                        if(tabla == 'TBL_CATEGORIAS')
                        {
                            /*for(var i=0; i<respuesta.length; i++)
                                console.log(respuesta[i].ID_CATEGORIA +' '+ respuesta[i].DESCRIPCION +' '+ respuesta[i].FECHA_INSERT);*/
                            dat = 'dat=EXECUTE PA_INSERT_CAT('+ respuesta[i].ID_CATEGORIA +','+ "'" +respuesta[i].DESCRIPCION+ "'" +', TO_DATE('+ "'" +respuesta[i].FECHA_INSERT+ "'" +','+"'"+'DD-MM-YY'+"'"+'));'; 

                            $.ajax({
                                url: "ajax/api.php?accion='procedimientoSqlDefinitiva'",
                                data: dat,
                                method: "GET",
                                success: function(respuesta){
                                    console.log("Los EXECUTE son: ");
                                    console.log(respuesta);
                                }
                            });

                        }
                        else
                        {
                            for(var i=0; i<respuesta.length; i++)
                                console.log("Respuesta para la tabla tiempo!!!");
                            dat = 'dat=EXECUTE PA_INSERT_CAT('+ respuesta[i].ID_CATEGORIA +','+ "'" +respuesta[i].DESCRIPCION+ "'" +', TO_DATE('+ "'" +respuesta[i].FECHA_INSERT+ "'" +','+"'"+'DD-MM-YY'+"'"+'));'; 

                            $.ajax({
                                url: "ajax/api.php?accion='procedimientoSqlDefinitiva'",
                                data: dat,
                                method: "GET",
                                success: function(respuesta){
                                    console.log("Los EXECUTE son: ");
                                    console.log(respuesta);
                                }
                            });

                        }
                    }
                }
            }

        },
        error: function(e){
            console.log(e);
            console.log("Ocurrio un error en: ejecutarSqlDefinitiva");
        }
    });

}

$("#btn-dimension").click(function(){

    window.location = "etl1.html";

});

$("#btn-hechos").click(function(){

    window.location = "etlHechos.html";

});