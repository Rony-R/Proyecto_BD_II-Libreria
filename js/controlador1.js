
var tablaUsar = '';

var camposTabla = new Array();

var camposTabla2 = new Array();

var conversionesCampo = new Array();

var conversionesFecha = new Array();

var fechConver = 'fech-conver-1';

var strconcat = '';

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
        url: "ajax/api.php?accion='traer-campos-tablas'",
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
                strconcat = camposTabla[i] + ":" + $('select[id=select-concat-'+i+']').val();
            }
            converFecha('fech-conver-1-'+i);
            conversionesCampo[i] = 'campo='+i+ '&conversion=' + $('input:radio[name=conver-campo-'+i+']:checked').val();
        }
        
        console.log("Las conversiones son: ");
        for(var i=0; i<camposTabla.length; i++)
            console.log(conversionesCampo[i]);

        console.log("Las conversiones  de fecha son: ");
        for(var i=0; i<conversionesFecha.length; i++)
            console.log(conversionesFecha[i]);

        console.log("Los campos a concatenar son: " + strconcat);
    }
    else
    {
        for(var i=0; i<camposTabla2.length; i++)
        {
            if($('input:radio[name=conver-campo-'+i+']:checked').val() == 4)
            {
                strconcat = camposTabla2[i] + ":" + $('select[id=select-concat-1-'+i+']').val();
            }
            converFecha('fech-conver-1-'+i);
            conversionesCampo[i] = 'campo='+i+ '&conversion=' + $('input:radio[name=conver-campo-'+i+']:checked').val();
        }

        console.log("Las conversiones son: ");
        for(var i=0; i<camposTabla2.length; i++)
            console.log(conversionesCampo[i]);

        console.log("Las conversiones  de fecha son: ");
        for(var i=0; i<conversionesFecha.length; i++)
            console.log(conversionesFecha[i]);

        console.log("Los campos a concatenar son: " + strconcat);
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
    
});