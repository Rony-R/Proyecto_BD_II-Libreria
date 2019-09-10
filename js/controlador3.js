
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
$("#select-origen-3").change(function(){

    $.ajax({
        url: "ajax/api.php?accion='traer-tablas-oltp'",
        dataType: "json",
        method: "GET",
        success: function(respuesta){

            for(var i=0; i<respuesta.length; i++)
            {
                $('select[name=tablas-3]').append('<option>'+respuesta[i].TABLE_NAME+'</option>');
            }

        },
        error: function(e){
            console.log(e);
            console.log("Ocurrio un error en: traer-tablas-oltp; controlador3");
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

    var tabla3 = "tabla=" + $('select[name=tablas-3]').val();

    $.ajax({
        url: "ajax/api.php?accion='traer-campos-tablas'",
        data: tabla3,
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
            console.log("Ocurrio un error en: traer-campos-tablas; controlador3");
        }
    });

    //console.log("La tabla es: ");
    //console.log($('select[name=tablas-3]').val());

    $("#tabla-3").html("ETL "+$('select[name=tablas-3]').val());

    $("#div-todo-destination-3").append(
        '<input id="input-tabla-destination" type="checkbox" value="'+$('select[name=tablas-3]').val()+'">'
    );

});

$("#btn-source-3").click(function(){

    var dataCont3 = '';
    var dataCont32 = '';
    var dataCont33 = '';
    var campCont3 = new Array();
    var campCont32 = new Array();
    var iCampCont3 = 0;
    var posicionCont3 = 0;

    if($('select[id=select-origen-3]').val() == 1)
    { 
        $('input:checkbox[id=chk-etl-3]:checked').each(function(){
            if(this.checked)
            {
                campCont3[iCampCont3] = $(this).val();
                iCampCont3 = iCampCont3+1;
            }
        });
        
        for(var i=0; i<campCont3.length; i++)
        {
            $("#div-campos-conversion-3").append(
                '<div class="col ml-3">'+
    
                '<label class="row mt-4" for=""><b>'+campCont3[i]+'</b></label>'+
    
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

        $("#div-num-campos-3").append(
            '<input type="radio" id="num-campos" value="'+campCont3.length+'">'
        );

        /*console.log("Los campos son: ");
        for(var i=0; i<campos.length; i++)
            console.log("campo"+i+'='+campos[i]);*/

        $("#div-todo-destination-3").append(
            '<input id="num-campos-destination" type="checkbox" value="'+campCont3.length+'">'
        );

        $("#div-todo-destination-3").append(
            '<input id="tipo-origen" type="checkbox" value="1">'
        );
        
        for(var i=0; i<campCont3.length; i++)
        {
            $("#div-todo-destination-3").append(
                '<input id="campo-'+i+'-destination" type="checkbox" value="'+campCont3[i]+'">'
            );
        }
    }
    else
    {
        dataCont3 = $("#sql-txta-source-3").val();

        dataCont32 = dataCont3.substring(7);

        posicionCont3 = dataCont32.indexOf("FROM");

        dataCont33 = dataCont32.substring(0, posicionCont3);

        campCont32 = dataCont33.split(",");

        for(var i=0; i<campCont32.length; i++)
        {
            $("#div-campos-conversion-3").append(
                '<div class="col ml-3">'+
    
                '<label class="row mt-4" for=""><b>'+campCont32[i]+'</b></label>'+
    
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

        $("#div-num-campos-3").append(
            '<input type="radio" id="num-campos" value="'+campCont32.length+'">'
        );

        /*console.log("Datos source consulta: ");
        for(var i=0; i<campos2.length; i++)
            console.log("campo"+i+'='+campos2[i]);*/

        var datostablasCont3 = '';

        var Cont32 = dataCont3.indexOf("FROM");
        
        datostablasCont3 = dataCont3.substring(posicionCont32, dataCont3.length);
        
        $("#div-todo-destination-3").append(
            //'<input id="input-tabla-destination" type="checkbox" value="'+$("#sql-txta-source-3").val()+'">'
            '<input id="input-tabla-destination" type="checkbox" value="'+datostablasCont3+'">'
        );
        
        $("#div-todo-destination-3").append(
            '<input id="num-campos-destination" type="checkbox" value="'+campCont32.length+'">'
        );

        $("#div-todo-destination-3").append(
            '<input id="tipo-origen" type="checkbox" value="2">'
        );

        var posCont3 = dataCont3.indexOf("FROM");

        var posCont3 = posCont3 + 4;

        var nomTab = dataCont3.substring(posCont3, dataCont3.length);

        $("#tabla-3").html("ETL "+nomTabCont3);
        
        for(var i=0; i<campCont32.length; i++)
        {
            $("#div-todo-destination-3").append(
                '<input id="campo-'+i+'-destination" type="checkbox" value="'+campCont32[i]+'">'
            );
        }
    }

});

$("#btn-command-3").click(function(){

    var consultaCont3 = "sql=" +$("#sql-txta-command-3").val();

    $.ajax({
        url: "ajax/api.php?accion='eliminar-datos-command'",
        data: consultaCont3,
        method: "POST",
        success: function(respuesta){
        },
        error: function(e){
            console.log(e);
            console.log("Ocurrio un error en: eliminar-datos-command; controlador3");
        }
    });

});


$("#btn-conversion-3").click(function(){

    var numCont3 = $("#num-campos").val()

    var datosConversionCont3 = new Array();

    for(var i=0; i<numCont3; i++)
    {
        datosConversionCont3[i] = 'campo='+i+ '&conversion=' + $('input:radio[name=conver-campo-'+i+']:checked').val()
    }

    /*console.log("Las conversiones son: ");
    for(var i=0; i<datosConversionCont3.length; i++)
        console.log(datosConversionCont3[i]);*/

    $("#div-todo-destination-3").append(
        '<input id="num-conversiones-destination" type="checkbox" value="'+datosConversionCont3.length+'">'
    );

    for(var i=0; i<datosConversionCont3.length; i++)
    {
        $("#div-todo-destination-3").append(
            '<input id="conversion-'+i+'-destination" type="checkbox" value="'+datosConversionCont3[i]+'">'
        );
    }


    $.ajax({
        url: "ajax/api.php?accion='traer-tablas-olap'",
        dataType: "json",
        method: "GET",
        success: function(respuesta){
    
            for(var i=0; i<respuesta.length; i++)
            {
                $('select[name=tablas-destino-3]').append('<option>'+respuesta[i].TABLE_NAME+'</option>');
            }
    
        },
        error: function(e){
            console.log(e);
            console.log("Ocurrio un error en: traer-tablas-olap; controlador3");
        }
    });
    
});

$("#btn-destination-3").click(function(){

    var nomTablaCont3 = '';
    var columnasCont3 = new Array();
    var conversionesCont3 = new Array();

    nomTablaCont3 = $("#input-tabla-destination").val();

    for(var i=0; i<$("#num-campos").val(); i++)
    {
        columnasCont3[i] = $("#campo-"+i+"-destination").val();
    }

    for(var i=0; i<$("#num-conversiones-destination").val(); i++)
    {
        conversionesCont3[i] = $("#conversion-"+i+"-destination").val();
    }


    //IMPRESION:
    console.log("Datos Consulta Definitiva controlador3 : ");

    console.log(nomTablaCont3);

    for(var i=0; i<columnasCont3.length; i++)
        console.log(columnasCont3[i]);

    for(var i=0; i<columnasCont3.length; i++)
        console.log(conversionesCont3[i]);

    console.log("El tipo de origen es: " +$("#tipo-origen").val());

});

