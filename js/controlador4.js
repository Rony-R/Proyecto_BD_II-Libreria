
var tablaUsar2 = '';

var campTab = new Array();

var campTab2 = new Array();

var conversionesCampo = new Array();

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

$("#select-origen-4").change(function(){

    $.ajax({
        url: "ajax/api.php?accion='traer-tablas-oltp'",
        dataType: "json",
        method: "GET",
        success: function(respuesta){

            for(var i=0; i<respuesta.length; i++)
            {
                $('select[id=selec-tabla-4]').append('<option>'+respuesta[i].TABLE_NAME+'</option>');
            }

        },
        error: function(e){
            console.log(e);
            console.log("Ocurrio un error en: traer-tablas-oltp; controlador");
        }
    });

    if($('select[id=select-origen-4]').val() == 1)
    {
        $("#div-select-tabla-4").removeClass("d-none");
        $("#div-select-tabla-4").addClass("d-block");
        $("#div-txta-sql-4").removeClass("d-block");
        $("#div-txta-sql-4").addClass("d-none");
        $("#chk-campos-4").removeClass("d-none");
        $("#chk-campos-4").addClass("d-block");
    }
    else
    {
        $("#div-txta-sql-4").removeClass("d-none");
        $("#div-txta-sql-4").addClass("d-block");
        $("#div-select-tabla-4").removeClass("d-block");
        $("#div-select-tabla-4").addClass("d-none");
        $("#chk-campos-4").removeClass("d-block");
        $("#chk-campos-4").addClass("d-none");
    }

});

$("#selec-tabla-4").change(function(){

    $("#form-chk-4").html('');

    var tabla = "tabla=" + $('select[id=selec-tabla-4]').val();

    tablaUsar2 = $('select[id=selec-tabla-4]').val();

    $.ajax({
        url: "ajax/api.php?accion='traer-campos-tablas'",
        data: tabla,
        dataType: "json",
        method: "GET",
        success: function(respuesta){

            for(var i=0; i<respuesta.length; i++)
            {
                $("#form-chk-4").append('<input type="checkbox" id="chk-etl-4" name="campo-tabla" value="'+respuesta[i].COLUMN_NAME+'">'+respuesta[i].COLUMN_NAME+'<br>');
            }

        },
        error: function(e){
            console.log(e);
            console.log("Ocurrio un error en: traer-campos-tablas; controlador");
        }
    });

    $("#tabla-4").html("ETL "+$('select[id=selec-tabla-4]').val());

});

$("#btn-source-4").click(function(){

    tablaUsar2 = $('select[id=selec-tabla-4]').val();

    var datosSource = '';
    var datosSource2 = '';
    var datosSource3 = '';
    var posicion = 0;
    var i = 0;

    if($('select[id=select-origen-4]').val() == 1)
    {
        $('input:checkbox[id=chk-etl-4]:checked').each(function(){
            if(this.checked)
            {
                campTab[i] = $(this).val();
                i = i+1;
            }
        });

        for(var i=0; i<campTab.length; i++)
        {
            $("#div-campos-conversion-4").append(
                '<div class="col ml-3">'+
    
                '<label class="row mt-4" for=""><b>'+campTab[i]+'</b></label>'+
    
                '<div class="col">'+
    
                    '<input type="radio" name="conver-campo-'+i+'" value="1"> Minusculas <br>'+
                    '<input type="radio" name="conver-campo-'+i+'" value="2"> Mayusculas <br>'+
                    '<input type="radio" name="conver-campo-'+i+'" value="3"> Fecha <br>'+
    
                    '<div class="ml-4" id="chk-fecha">'+
                        '<input type="checkbox" name="fech1" id=""> Dia <br>'+
                        '<input type="checkbox" name="fech1" id=""> Mes <br>'+
                        '<input type="checkbox" name="fech1" id=""> Año'+
                    '</div>'+
    
                    '<input type="radio" name="conver-campo-'+i+'" value="4"> Concatenacion'+
    
                '</div>'+
    
            '</div>'
            );

            /*$("#chk-concat-4").append(
                '<input type="checkbox" id=""> '+campTab[i]+' <br>'
            );*/

        }

        console.log("DATOS CONTRONALOR4");

        console.log("La tabla es: " +tablaUsar2);
        console.log("Los campos son: ");
        for(var i=0; i<campTab.length; i++)
            console.log(campTab[i]);

    }
    else
    {
        datosSource = $("#sql-txta-source-4").val();

        datosSource2 = datosSource.substring(7);

        posicion = datosSource2.indexOf("FROM");

        datosSource3 = datosSource2.substring(0, posicion);

        campTab2 = datosSource3.split(",");

        for(var i=0; i<campTab2.length; i++)
        {
            $("#div-campos-conversion-4").append(
                '<div class="col ml-3">'+
    
                '<label class="row mt-4" for=""><b>'+campTab2[i]+'</b></label>'+
    
                '<div class="col">'+
    
                    '<input type="radio" name="conver-campo-'+i+'" value="1"> Minusculas <br>'+
                    '<input type="radio" name="conver-campo-'+i+'" value="2"> Mayusculas <br>'+
                    '<input type="radio" name="conver-campo-'+i+'" value="3"> Fecha <br>'+
    
                    '<div class="ml-4" id="chk-fecha">'+
                        '<input type="checkbox" id=""> Dia <br>'+
                        '<input type="checkbox" id=""> Mes <br>'+
                        '<input type="checkbox" id=""> Año'+
                    '</div>'+
    
                    '<input type="radio" name="conver-campo-'+i+'" value="4"> Concatenacion'+

                    //'<div class="ml-4" id="chk-concatenacion"></div>'+

                '</div>'+
    
            '</div>'
            );

            /*$("#chk-concatenacion").append(
                '<input type="checkbox" id=""> '+campTab2[i]+' <br>'
            );*/

        }

        var posicion2 = datosSource.indexOf("FROM");

        tablaUsar2 = datosSource.substring(posicion2+5, datosSource.length);

        console.log("DATOS CONTRONALOR4");

        $("#tabla-4").html("ETL "+tablaUsar2);

        console.log("La tabla es: " +tablaUsar2);
        console.log("Los campos son: ");
        for(var i=0; i<campTab2.length; i++)
            console.log(campTab2[i]);

    }

});

$("#btn-conversion-4").click(function(){

    if($('select[id=select-origen-4]').val() == 1)
    {
        for(var i=0; i<campTab.length; i++)
        {
            conversionesCampo[i] = 'campo='+i+ '&conversion=' + $('input:radio[name=conver-campo-'+i+']:checked').val();
        }
        
        console.log("Las conversiones son: ");
        for(var i=0; i<campTab.length; i++)
            console.log(conversionesCampo[i]);
    }
    else
    {
        for(var i=0; i<campTab2.length; i++)
        {
            conversionesCampo[i] = 'campo='+i+ '&conversion=' + $('input:radio[name=conver-campo-'+i+']:checked').val();
        }

        console.log("Las conversiones son: ");
        for(var i=0; i<campTab2.length; i++)
            console.log(conversionesCampo[i]);
    }

    $.ajax({
        url: "ajax/api.php?accion='traer-tablas-olap'",
        dataType: "json",
        method: "GET",
        success: function(respuesta){
    
            for(var i=0; i<respuesta.length; i++)
            {
                $('select[id=selec-tabla-destino-4]').append('<option>'+respuesta[i].TABLE_NAME+'</option>');
            }
    
        },
        error: function(e){
            console.log(e);
            console.log("Ocurrio un error en: traer-tablas-oltp; controlador");
        }
    });

});