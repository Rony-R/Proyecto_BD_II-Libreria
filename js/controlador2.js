
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

//Funcion para obtener el valor de un select
$("#select-origen-2").change(function(){

    $.ajax({
        url: "ajax/api.php?accion='traer-tablas-oltp'",
        dataType: "json",
        method: "GET",
        success: function(respuesta){

            for(var i=0; i<respuesta.length; i++)
            {
                $('select[name=tablas-2]').append('<option>'+respuesta[i].TABLE_NAME+'</option>');
            }

        },
        error: function(e){
            console.log(e);
            console.log("Ocurrio un error en: traer-tablas-oltp; controlador2");
        }
    });

    if($('select[id=select-origen-2]').val() == 1)
    {
        $("#div-select-tabla-2").removeClass("d-none");
        $("#div-select-tabla-2").addClass("d-block");
        $("#div-txta-sql-2").removeClass("d-block");
        $("#div-txta-sql-2").addClass("d-none");
        $("#chk-campos-2").removeClass("d-none");
        $("#chk-campos-2").addClass("d-block");
    }
    else
    {
        $("#div-txta-sql-2").removeClass("d-none");
        $("#div-txta-sql-2").addClass("d-block");
        $("#div-select-tabla-2").removeClass("d-block");
        $("#div-select-tabla-2").addClass("d-none");
        $("#chk-campos-2").removeClass("d-block");
        $("#chk-campos-2").addClass("d-none");
    }

});


$("#selec-tabla-2").change(function(){

    var tabla2 = "tabla=" + $('select[name=tablas-2]').val();

    $.ajax({
        url: "ajax/api.php?accion='traer-campos-tablas'",
        data: tabla2,
        dataType: "json",
        method: "GET",
        success: function(respuesta){

            for(var i=0; i<respuesta.length; i++)
            {
                $("#form-chk-2").append('<input type="checkbox" id="chk-etl-2" name="campo-tabla" value="'+respuesta[i].COLUMN_NAME+'">'+respuesta[i].COLUMN_NAME+'<br>');
            }

        },
        error: function(e){
            console.log(e);
            console.log("Ocurrio un error en: traer-campos-tablas; controlador2");
        }
    });

    //console.log("La tabla es: ");
    //console.log($('select[name=tablas-2]').val());

    $("#tabla-2").html("ETL "+$('select[name=tablas-2]').val());

    $("#div-todo-destination-2").append(
        '<input id="input-tabla-destination" type="checkbox" value="'+$('select[name=tablas-2]').val()+'">'
    );

});

$("#btn-source-2").click(function(){

    var dataCont2 = '';
    var dataCont22 = '';
    var dataCont23 = '';
    var campCont2 = new Array();
    var campCont22 = new Array();
    var iCampCont2 = 0;
    var posicionCont2 = 0;

    if($('select[id=select-origen-2]').val() == 1)
    { 
        $('input:checkbox[id=chk-etl-2]:checked').each(function(){
            if(this.checked)
            {
                campCont2[iCampCont2] = $(this).val();
                iCampCont2 = iCampCont2+1;
            }
        });
        
        for(var i=0; i<campCont2.length; i++)
        {
            $("#div-campos-conversion-2").append(
                '<div class="col ml-3">'+
    
                '<label class="row mt-4" for=""><b>'+campCont2[i]+'</b></label>'+
    
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

        }

        $("#div-num-campos-2").append(
            '<input type="radio" id="num-campos" value="'+campCont2.length+'">'
        );

        /*console.log("Los campos son: ");
        for(var i=0; i<campos.length; i++)
            console.log("campo"+i+'='+campos[i]);*/

        $("#div-todo-destination-2").append(
            '<input id="num-campos-destination" type="checkbox" value="'+campCont2.length+'">'
        );

        $("#div-todo-destination-2").append(
            '<input id="tipo-origen" type="checkbox" value="1">'
        );
        
        for(var i=0; i<campCont2.length; i++)
        {
            $("#div-todo-destination-2").append(
                '<input id="campo-'+i+'-destination" type="checkbox" value="'+campCont2[i]+'">'
            );
        }
    }
    else
    {
        dataCont2 = $("#sql-txta-source-2").val();

        dataCont22 = dataCont2.substring(7);

        posicionCont2 = dataCont22.indexOf("FROM");

        dataCont23 = dataCont22.substring(0, posicionCont2);

        campCont22 = dataCont23.split(",");

        for(var i=0; i<campCont22.length; i++)
        {
            $("#div-campos-conversion-2").append(
                '<div class="col ml-3">'+
    
                '<label class="row mt-4" for=""><b>'+campCont22[i]+'</b></label>'+
    
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
    
                '</div>'+
    
            '</div>'
            );
        }

        $("#div-num-campos-2").append(
            '<input type="radio" id="num-campos" value="'+campCont22.length+'">'
        );

        /*console.log("Datos source consulta: ");
        for(var i=0; i<campos2.length; i++)
            console.log("campo"+i+'='+campos2[i]);*/

        var datostablasCont2 = '';

        var posicionCont22 = dataCont2.indexOf("FROM");
        
        datostablasCont2 = dataCont2.substring(posicionCont22, dataCont2.length);
        
        $("#div-todo-destination-2").append(
            //'<input id="input-tabla-destination" type="checkbox" value="'+$("#sql-txta-source-2").val()+'">'
            '<input id="input-tabla-destination" type="checkbox" value="'+datostablasCont2+'">'
        );
        
        $("#div-todo-destination-2").append(
            '<input id="num-campos-destination" type="checkbox" value="'+campCont22.length+'">'
        );

        $("#div-todo-destination-2").append(
            '<input id="tipo-origen" type="checkbox" value="2">'
        );

        var posCont2 = dataCont2.indexOf("FROM");

        var posCont2 = posCont2 + 4;

        var nomTabCont2 = dataCont2.substring(posCont2, dataCont2.length);

        $("#h2-tabla").html("ETL "+nomTabCont2);
        
        for(var i=0; i<campCont22.length; i++)
        {
            $("#div-todo-destination-2").append(
                '<input id="campo-'+i+'-destination" type="checkbox" value="'+campCont22[i]+'">'
            );
        }
    }

});

$("#btn-command-2").click(function(){

    var consultaCont2 = "sql=" +$("#sql-txta-command-2").val();

    $.ajax({
        url: "ajax/api.php?accion='eliminar-datos-command'",
        data: consultaCont2,
        method: "POST",
        success: function(respuesta){
        },
        error: function(e){
            console.log(e);
            console.log("Ocurrio un error en: eliminar-datos-command; controlador2");
        }
    });

});


$("#btn-conversion-2").click(function(){

    var numCont2 = $("#num-campos").val()

    var datosConversionCont2 = new Array();

    for(var i=0; i<numCont2; i++)
    {
        datosConversionCont2[i] = 'campo='+i+ '&conversion=' + $('input:radio[name=conver-campo-'+i+']:checked').val()
    }

    /*console.log("Las conversiones son: ");
    for(var i=0; i<datosConversionCont2.length; i++)
        console.log(datosConversionCont2[i]);*/

    $("#div-todo-destination-2").append(
        '<input id="num-conversiones-destination" type="checkbox" value="'+datosConversionCont2.length+'">'
    );

    for(var i=0; i<datosConversionCont2.length; i++)
    {
        $("#div-todo-destination-2").append(
            '<input id="conversion-'+i+'-destination" type="checkbox" value="'+datosConversionCont2[i]+'">'
        );
    }


    $.ajax({
        url: "ajax/api.php?accion='traer-tablas-olap'",
        dataType: "json",
        method: "GET",
        success: function(respuesta){
    
            for(var i=0; i<respuesta.length; i++)
            {
                $('select[name=tablas-2-destino]').append('<option>'+respuesta[i].TABLE_NAME+'</option>');
            }
    
        },
        error: function(e){
            console.log(e);
            console.log("Ocurrio un error en: traer-tablas-2-oltp");
        }
    });
    
});

$("#btn-destination-2").click(function(){

    var nomTablaCont2 = '';
    var columnasCont2 = new Array();
    var conversionesCont2 = new Array();

    nomTablaCont2 = $("#input-tabla-destination").val();

    for(var i=0; i<$("#num-campos").val(); i++)
    {
        columnasCont2[i] = $("#campo-"+i+"-destination").val();
    }

    for(var i=0; i<$("#num-conversiones-destination").val(); i++)
    {
        conversionesCont2[i] = $("#conversion-"+i+"-destination").val();
    }


    //IMPRESION:
    console.log("Datos Consulta Definitiva controlador2 : ");

    console.log(nomTablaCont2);

    for(var i=0; i<columnasCont2.length; i++)
        console.log(columnasCont2[i]);

    for(var i=0; i<columnasCont2.length; i++)
        console.log(conversionesCont2[i]);

    console.log("El tipo de origen es: " +$("#tipo-origen").val());

});

