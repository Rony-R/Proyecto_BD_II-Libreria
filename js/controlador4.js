
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
$("#select-origen-4").change(function(){

    $.ajax({
        url: "ajax/api.php?accion='traer-tablas-oltp'",
        dataType: "json",
        method: "GET",
        success: function(respuesta){

            for(var i=0; i<respuesta.length; i++)
            {
                $('select[name=tablas-4]').append('<option>'+respuesta[i].TABLE_NAME+'</option>');
            }

        },
        error: function(e){
            console.log(e);
            console.log("Ocurrio un error en: traer-tablas-oltp; controlador4");
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

    var tabla4 = "tabla=" + $('select[name=tablas-4]').val();

    $.ajax({
        url: "ajax/api.php?accion='traer-campos-tablas'",
        data: tabla4,
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
            console.log("Ocurrio un error en: traer-campos-tablas; controlador4");
        }
    });

    //console.log("La tabla es: ");
    //console.log($('select[name=tablas-4]').val());

    $("#tabla-4").html("ETL "+$('select[name=tablas-4]').val());

    $("#div-todo-destination-4").append(
        '<input id="input-tabla-destination" type="checkbox" value="'+$('select[name=tablas-4]').val()+'">'
    );

});

$("#btn-source-4").click(function(){

    var dataCont4 = '';
    var dataCont42 = '';
    var dataCont43 = '';
    var campCont3 = new Array();
    var campCont32 = new Array();
    var iCampCont4 = 0;
    var posicionCont4 = 0;

    if($('select[id=select-origen-4]').val() == 1)
    { 
        $('input:checkbox[id=chk-etl-4]:checked').each(function(){
            if(this.checked)
            {
                campCont3[iCampCont4] = $(this).val();
                iCampCont4 = iCampCont4+1;
            }
        });
        
        for(var i=0; i<campCont3.length; i++)
        {
            $("#div-campos-conversion-4").append(
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

        $("#div-num-campos-4").append(
            '<input type="radio" id="num-campos" value="'+campCont3.length+'">'
        );

        /*console.log("Los campos son: ");
        for(var i=0; i<campos.length; i++)
            console.log("campo"+i+'='+campos[i]);*/

        $("#div-todo-destination-4").append(
            '<input id="num-campos-destination" type="checkbox" value="'+campCont3.length+'">'
        );

        $("#div-todo-destination-4").append(
            '<input id="tipo-origen" type="checkbox" value="1">'
        );
        
        for(var i=0; i<campCont3.length; i++)
        {
            $("#div-todo-destination-4").append(
                '<input id="campo-'+i+'-destination" type="checkbox" value="'+campCont3[i]+'">'
            );
        }
    }
    else
    {
        dataCont4 = $("#sql-txta-source-4").val();

        dataCont42 = dataCont4.substring(7);

        posicionCont4 = dataCont42.indexOf("FROM");

        dataCont43 = dataCont42.substring(0, posicionCont4);

        campCont32 = dataCont43.split(",");

        for(var i=0; i<campCont32.length; i++)
        {
            $("#div-campos-conversion-4").append(
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

        $("#div-num-campos-4").append(
            '<input type="radio" id="num-campos" value="'+campCont32.length+'">'
        );

        /*console.log("Datos source consulta: ");
        for(var i=0; i<campos2.length; i++)
            console.log("campo"+i+'='+campos2[i]);*/

        var datostablasCont4 = '';

        var posicionCont42 = dataCont4.indexOf("FROM");
        
        datostablasCont4 = dataCont4.substring(posicionCont42, dataCont4.length);
        
        $("#div-todo-destination-4").append(
            //'<input id="input-tabla-destination" type="checkbox" value="'+$("#sql-txta-source-4").val()+'">'
            '<input id="input-tabla-destination" type="checkbox" value="'+datostablasCont4+'">'
        );
        
        $("#div-todo-destination-4").append(
            '<input id="num-campos-destination" type="checkbox" value="'+campCont32.length+'">'
        );

        $("#div-todo-destination-4").append(
            '<input id="tipo-origen" type="checkbox" value="2">'
        );

        var posCont4 = dataCont4.indexOf("FROM");

        var posCont4 = posCont4 + 4;

        var nomTabCont4 = dataCont4.substring(posCont4, dataCont4.length);

        $("#tabla-4").html("ETL "+nomTabCont4);
        
        for(var i=0; i<campCont32.length; i++)
        {
            $("#div-todo-destination-4").append(
                '<input id="campo-'+i+'-destination" type="checkbox" value="'+campCont32[i]+'">'
            );
        }
    }

});

$("#btn-command-4").click(function(){

    var consultaCont4 = "sql=" +$("#sql-txta-command-4").val();

    $.ajax({
        url: "ajax/api.php?accion='eliminar-datos-command'",
        data: consultaCont4,
        method: "POST",
        success: function(respuesta){
        },
        error: function(e){
            console.log(e);
            console.log("Ocurrio un error en: eliminar-datos-command; controlador4");
        }
    });

});


$("#btn-conversion-4").click(function(){

    var numCont4 = $("#num-campos").val()

    var datosConversionCont4 = new Array();

    for(var i=0; i<numCont4; i++)
    {
        datosConversionCont4[i] = 'campo='+i+ '&conversion=' + $('input:radio[name=conver-campo-'+i+']:checked').val()
    }

    /*console.log("Las conversiones son: ");
    for(var i=0; i<datosConversionCont4.length; i++)
        console.log(datosConversionCont4[i]);*/

    $("#div-todo-destination-4").append(
        '<input id="num-conversiones-destination" type="checkbox" value="'+datosConversionCont4.length+'">'
    );

    for(var i=0; i<datosConversionCont4.length; i++)
    {
        $("#div-todo-destination-4").append(
            '<input id="conversion-'+i+'-destination" type="checkbox" value="'+datosConversionCont4[i]+'">'
        );
    }


    $.ajax({
        url: "ajax/api.php?accion='traer-tablas-olap'",
        dataType: "json",
        method: "GET",
        success: function(respuesta){
    
            for(var i=0; i<respuesta.length; i++)
            {
                $('select[name=tablas-destino-4]').append('<option>'+respuesta[i].TABLE_NAME+'</option>');
            }
    
        },
        error: function(e){
            console.log(e);
            console.log("Ocurrio un error en: traer-tablas-olap; controlador4");
        }
    });
    
});

$("#btn-destination-4").click(function(){

    var nomTablaCont4 = '';
    var columnasCont4 = new Array();
    var conversionesCont4 = new Array();

    nomTablaCont4 = $("#input-tabla-destination").val();

    for(var i=0; i<$("#num-campos").val(); i++)
    {
        columnasCont4[i] = $("#campo-"+i+"-destination").val();
    }

    for(var i=0; i<$("#num-conversiones-destination").val(); i++)
    {
        conversionesCont4[i] = $("#conversion-"+i+"-destination").val();
    }


    //IMPRESION:
    console.log("Datos Consulta Definitiva controlador4 : ");

    console.log(nomTablaCont4);

    for(var i=0; i<columnasCont4.length; i++)
        console.log(columnasCont4[i]);

    for(var i=0; i<columnasCont4.length; i++)
        console.log(conversionesCont4[i]);

    console.log("El tipo de origen es: " +$("#tipo-origen").val());

});

