
var tablaUsar2 = '';

var campTab = new Array();

var campTab2 = new Array();

var conversionesCampo = new Array();

var conversionesFecha3 = new Array();

var fechConver = 'fech-conver-3';

var strconcat3 = '';

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

$("#select-origen-3").change(function(){

    $.ajax({
        url: "ajax/api.php?accion='traer-tablas-oltp'",
        dataType: "json",
        method: "GET",
        success: function(respuesta){

            for(var i=0; i<respuesta.length; i++)
            {
                $('select[id=selec-tabla-3]').append('<option>'+respuesta[i].TABLE_NAME+'</option>');
            }

        },
        error: function(e){
            console.log(e);
            console.log("Ocurrio un error en: traer-tablas-oltp; controlador");
        }
    });

    if($('select[id=select-origen-3]').val() == 1)
    {
        $("#div-select-tabla-3").removeClass("d-none");
        $("#div-select-tabla-3").addClass("d-block");
        $("#div-txta-sql-3").removeClass("d-block");
        $("#div-txta-sql-3").addClass("d-none");
        $("#chk-campos-3").removeClass("d-none");
        $("#chk-campos-3").addClass("d-block");
    }
    else
    {
        $("#div-txta-sql-3").removeClass("d-none");
        $("#div-txta-sql-3").addClass("d-block");
        $("#div-select-tabla-3").removeClass("d-block");
        $("#div-select-tabla-3").addClass("d-none");
        $("#chk-campos-3").removeClass("d-block");
        $("#chk-campos-3").addClass("d-none");
    }

});

$("#selec-tabla-3").change(function(){

    $("#form-chk-3").html('');

    var tabla = "tabla=" + $('select[id=selec-tabla-3]').val();

    tablaUsar2 = $('select[id=selec-tabla-3]').val();

    $.ajax({
        url: "ajax/api.php?accion='traer-campos-tablas'",
        data: tabla,
        dataType: "json",
        method: "GET",
        success: function(respuesta){

            for(var i=0; i<respuesta.length; i++)
            {
                $("#form-chk-3").append('<input type="checkbox" id="chk-etl-3" name="campo-tabla" value="'+respuesta[i].COLUMN_NAME+'">'+respuesta[i].COLUMN_NAME+'<br>');
            }

        },
        error: function(e){
            console.log(e);
            console.log("Ocurrio un error en: traer-campos-tablas; controlador");
        }
    });

    $("#tabla-3").html("ETL "+$('select[id=selec-tabla-3]').val());

});

$("#btn-source-3").click(function(){

    tablaUsar2 = $('select[id=selec-tabla-3]').val();

    var datosSource = '';
    var datosSource2 = '';
    var datosSource3 = '';
    var posicion = 0;
    var i = 0;

    if($('select[id=select-origen-3]').val() == 1)
    {
        $('input:checkbox[id=chk-etl-3]:checked').each(function(){
            if(this.checked)
            {
                campTab[i] = $(this).val();
                i = i+1;
            }
        });

        for(var i=0; i<campTab.length; i++)
        {
            $("#div-campos-conversion-3").append(
                '<div class="col ml-3">'+
    
                '<label class="row mt-4" for=""><b>'+campTab[i]+'</b></label>'+
    
                '<div class="col">'+
    
                    '<input type="radio" name="conver-campo-'+i+'" value="1"> Minusculas <br>'+
                    '<input type="radio" name="conver-campo-'+i+'" value="2"> Mayusculas <br>'+
                    '<input type="radio" name="conver-campo-'+i+'" value="3"> Fecha <br>'+
    
                    '<div class="ml-4" id="chk-fecha">'+
                        '<input type="checkbox" value="1" id="fech-conver-3-'+i+'"> Dia <br>'+
                        '<input type="checkbox" value="2" id="fech-conver-3-'+i+'"> Mes <br>'+
                        '<input type="checkbox" value="3" id="fech-conver-3-'+i+'"> Año'+
                    '</div>'+
    
                    '<input type="radio" name="conver-campo-'+i+'" value="4"> Concatenacion'+

                    '<div id="div-concatenaciones-3-'+i+'">'+
                        '<select id="select-concat-3-'+i+'" class="dropdown btn btn-secondary">'+
                            '<option value="0">Seleccionar Campo</option>'+
                        '</select>'+
                    '</div>'+
    
                '</div>'+
    
            '</div>'
            );

            concatCampos31('select-concat-3-'+i);

        }

        console.log("DATOS CONTRONALOR3");

        console.log("La tabla es: " +tablaUsar2);
        console.log("Los campos son: ");
        for(var i=0; i<campTab.length; i++)
            console.log(campTab[i]);

    }
    else
    {
        datosSource = $("#sql-txta-source-3").val();

        datosSource2 = datosSource.substring(7);

        posicion = datosSource2.indexOf("FROM");

        datosSource3 = datosSource2.substring(0, posicion);

        campTab2 = datosSource3.split(",");

        for(var i=0; i<campTab2.length; i++)
        {
            $("#div-campos-conversion-3").append(
                '<div class="col ml-3">'+
    
                '<label class="row mt-4" for=""><b>'+campTab2[i]+'</b></label>'+
    
                '<div class="col">'+
    
                    '<input type="radio" name="conver-campo-'+i+'" value="1"> Minusculas <br>'+
                    '<input type="radio" name="conver-campo-'+i+'" value="2"> Mayusculas <br>'+
                    '<input type="radio" name="conver-campo-'+i+'" value="3"> Fecha <br>'+
    
                    '<div class="ml-4" id="chk-fecha">'+
                        '<input type="checkbox" value="1" id="fech-conver-3-'+i+'"> Dia <br>'+
                        '<input type="checkbox" value="2" id="fech-conver-3-'+i+'"> Mes <br>'+
                        '<input type="checkbox" value="3" id="fech-conver-3-'+i+'"> Año'+
                    '</div>'+
    
                    '<input type="radio" name="conver-campo-'+i+'" value="4"> Concatenacion'+

                    '<div id="div-concatenaciones-3-'+i+'">'+
                        '<select id="select-concat-3-'+i+'" class="dropdown btn btn-secondary">'+
                            '<option value="0">Seleccionar Campo</option>'+
                        '</select>'+
                    '</div>'+

                '</div>'+
    
            '</div>'
            );

            concatCampos32('select-concat-3-'+i);

        }

        var posicion2 = datosSource.indexOf("FROM");

        tablaUsar2 = datosSource.substring(posicion2+5, datosSource.length);

        console.log("DATOS CONTRONALOR3");

        $("#tabla-3").html("ETL "+tablaUsar2);

        console.log("La tabla es: " +tablaUsar2);
        console.log("Los campos son: ");
        for(var i=0; i<campTab2.length; i++)
            console.log(campTab2[i]);

    }

});

$("#btn-conversion-3").click(function(){

    if($('select[id=select-origen-3]').val() == 1)
    {
        for(var i=0; i<campTab.length; i++)
        {
            if($('input:radio[name=conver-campo-'+i+']:checked').val() == 4)
            {
                strconcat3 = campTab[i] + ":" + $('select[id=select-concat-3-'+i+']').val();
            }
            converFecha3('fech-conver-3-'+i);
            conversionesCampo[i] = 'campo='+i+ '&conversion=' + $('input:radio[name=conver-campo-'+i+']:checked').val();
        }
        
        console.log("Las conversiones son: ");
        for(var i=0; i<campTab.length; i++)
            console.log(conversionesCampo[i]);
        
        console.log("Las conversiones  de fecha son: ");
        for(var i=0; i<conversionesFecha3.length; i++)
            console.log(conversionesFecha3[i]);

        console.log("Los campos a concatenar son: " + strconcat3);
    }
    else
    {
        for(var i=0; i<campTab2.length; i++)
        {
            if($('input:radio[name=conver-campo-'+i+']:checked').val() == 4)
            {
                strconcat3 = campTab2[i] + ":" + $('select[id=select-concat-3-'+i+']').val();
            }
            converFecha3('fech-conver-3-'+i);
            conversionesCampo[i] = 'campo='+i+ '&conversion=' + $('input:radio[name=conver-campo-'+i+']:checked').val();
        }

        console.log("Las conversiones son: ");
        for(var i=0; i<campTab2.length; i++)
            console.log(conversionesCampo[i]);
                        
        console.log("Las conversiones  de fecha son: ");
        for(var i=0; i<conversionesFecha3.length; i++)
            console.log(conversionesFecha3[i]);

        console.log("Los campos a concatenar son: " + strconcat3);
    }

    $.ajax({
        url: "ajax/api.php?accion='traer-tablas-olap'",
        dataType: "json",
        method: "GET",
        success: function(respuesta){
    
            for(var i=0; i<respuesta.length; i++)
            {
                $('select[id=selec-tabla-destino-3]').append('<option>'+respuesta[i].TABLE_NAME+'</option>');
            }
    
        },
        error: function(e){
            console.log(e);
            console.log("Ocurrio un error en: traer-tablas-oltp; controlador");
        }
    });

});

function converFecha3(idChk){

    var i = 0;

    $('input:checkbox[id='+idChk+']:checked').each(function(){
        if(this.checked)
        {
            conversionesFecha3[i] = $(this).val();
            i = i+1;
        }
    });
}

function concatCampos31(idDiv){

    for(var i=0; i<campTab.length; i++)
    {
        $("#"+idDiv).append(
            '<option value="'+campTab[i]+'">'+campTab[i]+'</option>'
        );
    }

}

function concatCampos32(idDiv){

    for(var i=0; i<campTab2.length; i++)
    {
        $("#"+idDiv).append(
            '<option value="'+campTab2[i]+'">'+campTab2[i]+'</option>'
        );
    }

}