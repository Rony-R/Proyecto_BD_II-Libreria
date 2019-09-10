
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
$("#select-origen-5").change(function(){

    $.ajax({
        url: "ajax/api.php?accion='traer-tablas-oltp'",
        dataType: "json",
        method: "GET",
        success: function(respuesta){

            for(var i=0; i<respuesta.length; i++)
            {
                $('select[name=tablas-5]').append('<option>'+respuesta[i].TABLE_NAME+'</option>');
            }

        },
        error: function(e){
            console.log(e);
            console.log("Ocurrio un error en: traer-tablas-oltp; controlador5");
        }
    });

    if($('select[id=select-origen-5]').val() == 1)
    {
        $("#div-select-tabla-5").removeClass("d-none");
        $("#div-select-tabla-5").addClass("d-block");
        $("#div-txta-sql-5").removeClass("d-block");
        $("#div-txta-sql-5").addClass("d-none");
        $("#chk-campos-5").removeClass("d-none");
        $("#chk-campos-5").addClass("d-block");
    }
    else
    {
        $("#div-txta-sql-5").removeClass("d-none");
        $("#div-txta-sql-5").addClass("d-block");
        $("#div-select-tabla-5").removeClass("d-block");
        $("#div-select-tabla-5").addClass("d-none");
        $("#chk-campos-5").removeClass("d-block");
        $("#chk-campos-5").addClass("d-none");
    }

});


$("#selec-tabla-5").change(function(){

    var tabla5 = "tabla=" + $('select[name=tablas-5]').val();

    $.ajax({
        url: "ajax/api.php?accion='traer-campos-tablas'",
        data: tabla5,
        dataType: "json",
        method: "GET",
        success: function(respuesta){

            for(var i=0; i<respuesta.length; i++)
            {
                $("#form-chk-5").append('<input type="checkbox" id="chk-etl-5" name="campo-tabla" value="'+respuesta[i].COLUMN_NAME+'">'+respuesta[i].COLUMN_NAME+'<br>');
            }

        },
        error: function(e){
            console.log(e);
            console.log("Ocurrio un error en: traer-campos-tablas; controlador5");
        }
    });

    //console.log("La tabla es: ");
    //console.log($('select[name=tablas-5]').val());

    $("#tabla-5").html("ETL "+$('select[name=tablas-5]').val());

    $("#div-todo-destination-5").append(
        '<input id="input-tabla-destination" type="checkbox" value="'+$('select[name=tablas-5]').val()+'">'
    );

});

$("#btn-source-5").click(function(){

    var dataCont5 = '';
    var dataCont52 = '';
    var dataCont53 = '';
    var campCont3 = new Array();
    var campCont32 = new Array();
    var iCampCont5 = 0;
    var posicionCont5 = 0;

    if($('select[id=select-origen-5]').val() == 1)
    { 
        $('input:checkbox[id=chk-etl-5]:checked').each(function(){
            if(this.checked)
            {
                campCont3[iCampCont5] = $(this).val();
                iCampCont5 = iCampCont5+1;
            }
        });
        
        for(var i=0; i<campCont3.length; i++)
        {
            $("#div-campos-conversion-5").append(
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

        $("#div-num-campos-5").append(
            '<input type="radio" id="num-campos" value="'+campCont3.length+'">'
        );

        /*console.log("Los campos son: ");
        for(var i=0; i<campos.length; i++)
            console.log("campo"+i+'='+campos[i]);*/

        $("#div-todo-destination-5").append(
            '<input id="num-campos-destination" type="checkbox" value="'+campCont3.length+'">'
        );

        $("#div-todo-destination-5").append(
            '<input id="tipo-origen" type="checkbox" value="1">'
        );
        
        for(var i=0; i<campCont3.length; i++)
        {
            $("#div-todo-destination-5").append(
                '<input id="campo-'+i+'-destination" type="checkbox" value="'+campCont3[i]+'">'
            );
        }
    }
    else
    {
        dataCont5 = $("#sql-txta-source-5").val();

        dataCont52 = dataCont5.substring(7);

        posicionCont5 = dataCont52.indexOf("FROM");

        dataCont53 = dataCont52.substring(0, posicionCont5);

        campCont32 = dataCont53.split(",");

        for(var i=0; i<campCont32.length; i++)
        {
            $("#div-campos-conversion-5").append(
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

        $("#div-num-campos-5").append(
            '<input type="radio" id="num-campos" value="'+campCont32.length+'">'
        );

        /*console.log("Datos source consulta: ");
        for(var i=0; i<campos2.length; i++)
            console.log("campo"+i+'='+campos2[i]);*/

        var datostablasCont5 = '';

        var posicionCont52 = dataCont5.indexOf("FROM");
        
        datostablasCont5 = dataCont5.substring(posicionCont52, dataCont5.length);
        
        $("#div-todo-destination-5").append(
            //'<input id="input-tabla-destination" type="checkbox" value="'+$("#sql-txta-source-5").val()+'">'
            '<input id="input-tabla-destination" type="checkbox" value="'+datostablasCont5+'">'
        );
        
        $("#div-todo-destination-5").append(
            '<input id="num-campos-destination" type="checkbox" value="'+campCont32.length+'">'
        );

        $("#div-todo-destination-5").append(
            '<input id="tipo-origen" type="checkbox" value="2">'
        );

        var posCont5 = dataCont5.indexOf("FROM");

        var posCont5 = posCont5 + 4;

        var nomTabCont5 = dataCont5.substring(posCont5, dataCont5.length);

        $("#tabla-5").html("ETL "+nomTabCont5);
        
        for(var i=0; i<campCont32.length; i++)
        {
            $("#div-todo-destination-5").append(
                '<input id="campo-'+i+'-destination" type="checkbox" value="'+campCont32[i]+'">'
            );
        }
    }

});

$("#btn-command-5").click(function(){

    var consultaCont5 = "sql=" +$("#sql-txta-command-5").val();

    $.ajax({
        url: "ajax/api.php?accion='eliminar-datos-command'",
        data: consultaCont5,
        method: "POST",
        success: function(respuesta){
        },
        error: function(e){
            console.log(e);
            console.log("Ocurrio un error en: eliminar-datos-command; controlador5");
        }
    });

});


$("#btn-conversion-5").click(function(){

    var numCont5 = $("#num-campos").val()

    var datosConversionCont5 = new Array();

    for(var i=0; i<numCont5; i++)
    {
        datosConversionCont5[i] = 'campo='+i+ '&conversion=' + $('input:radio[name=conver-campo-'+i+']:checked').val()
    }

    /*console.log("Las conversiones son: ");
    for(var i=0; i<datosConversionCont5.length; i++)
        console.log(datosConversionCont5[i]);*/

    $("#div-todo-destination-5").append(
        '<input id="num-conversiones-destination" type="checkbox" value="'+datosConversionCont5.length+'">'
    );

    for(var i=0; i<datosConversionCont5.length; i++)
    {
        $("#div-todo-destination-5").append(
            '<input id="conversion-'+i+'-destination" type="checkbox" value="'+datosConversionCont5[i]+'">'
        );
    }


    $.ajax({
        url: "ajax/api.php?accion='traer-tablas-olap'",
        dataType: "json",
        method: "GET",
        success: function(respuesta){
    
            for(var i=0; i<respuesta.length; i++)
            {
                $('select[name=tablas-destino-5]').append('<option>'+respuesta[i].TABLE_NAME+'</option>');
            }
    
        },
        error: function(e){
            console.log(e);
            console.log("Ocurrio un error en: traer-tablas-olap; controlador5");
        }
    });
    
});

$("#btn-destination-5").click(function(){

    var nomTablaCont5 = '';
    var columnasCont5 = new Array();
    var conversionesCont5 = new Array();

    nomTablaCont5 = $("#input-tabla-destination").val();

    for(var i=0; i<$("#num-campos").val(); i++)
    {
        columnasCont5[i] = $("#campo-"+i+"-destination").val();
    }

    for(var i=0; i<$("#num-conversiones-destination").val(); i++)
    {
        conversionesCont5[i] = $("#conversion-"+i+"-destination").val();
    }


    //IMPRESION:
    console.log("Datos Consulta Definitiva controlador5 : ");

    console.log(nomTablaCont5);

    for(var i=0; i<columnasCont5.length; i++)
        console.log(columnasCont5[i]);

    for(var i=0; i<columnasCont5.length; i++)
        console.log(conversionesCont5[i]);

    console.log("El tipo de origen es: " +$("#tipo-origen").val());

});

