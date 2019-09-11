
var tablaUsar = '';

var camposSolo = new Array();

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

//Funcion para obtener el valor de un select
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

    //console.log("La tabla es: ");
    //console.log($('select[name=tablas]').val());

    $("#tabla-1").html("ETL "+$('select[name=tablas]').val());

    $("#div-todo-destination").append(
        '<input id="input-tabla-destination" type="checkbox" value="'+$('select[name=tablas]').val()+'">'
    );

});

$("#btn-source-1").click(function(){

    var datosSource = '';
    var datosSource2 = '';
    var datosSource3 = '';
    var campos = new Array();
    var campos2 = new Array();
    var iCamp = 0;
    var posicion = 0;

    if($('select[id=select-origen]').val() == 1)
    { 
        $('input:checkbox[id=chk-etl-1]:checked').each(function(){
            if(this.checked)
            {
                campos[iCamp] = $(this).val();
                iCamp = iCamp+1;
            }
        });
        
        for(var i=0; i<campos.length; i++)
        {
            $("#div-campos-conversion-1").append(
                '<div class="col ml-3">'+
    
                '<label class="row mt-4" for=""><b>'+campos[i]+'</b></label>'+
    
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

        $("#div-num-campos-1").append(
            '<input type="radio" id="num-campos-1" value="'+campos.length+'">'
        );

        $("#div-todo-destination").append(
            '<input id="num-campos-destination" type="checkbox" value="'+campos.length+'">'
        );

        $("#div-todo-destination").append(
            '<input id="tipo-origen" type="checkbox" value="1">'
        );
        
        for(var i=0; i<campos.length; i++)
        {
            $("#div-todo-destination").append(
                '<input id="campo-'+i+'-destination" type="checkbox" value="'+campos[i]+'">'
            );
        }
    }
    else
    {
        datosSource = $("#sql-txta-source").val();

        datosSource2 = datosSource.substring(7);

        posicion = datosSource2.indexOf("FROM");

        datosSource3 = datosSource2.substring(0, posicion);

        campos2 = datosSource3.split(",");

        for(var i=0; i<campos2.length; i++)
        {
            $("#div-campos-conversion").append(
                '<div class="col ml-3">'+
    
                '<label class="row mt-4" for=""><b>'+campos2[i]+'</b></label>'+
    
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

        $("#div-num-campos").append(
            '<input type="radio" id="num-campos" value="'+campos2.length+'">'
        );

        /*console.log("Datos source consulta: ");
        for(var i=0; i<campos2.length; i++)
            console.log("campo"+i+'='+campos2[i]);*/

        var datosTablaSql = '';

        var posicion2 = datosSource.indexOf("FROM");
        
        datosTablaSql = datosSource.substring(posicion2, datosSource.length);
        
        $("#div-todo-destination").append(
            //'<input id="input-tabla-destination" type="checkbox" value="'+$("#sql-txta-source").val()+'">'
            '<input id="input-tabla-destination" type="checkbox" value="'+datosTablaSql+'">'
        );
        
        $("#div-todo-destination").append(
            '<input id="num-campos-destination" type="checkbox" value="'+campos2.length+'">'
        );

        $("#div-todo-destination").append(
            '<input id="tipo-origen" type="checkbox" value="2">'
        );

        var pos = datosSource.indexOf("FROM");

        var pos = pos + 4;

        tablaUsar = datosSource.substring(pos, datosSource.length);

        $("#tabla-1").html("ETL "+tablaUsar);
        
        for(var i=0; i<campos2.length; i++)
        {
            $("#div-todo-destination").append(
                '<input id="campo-'+i+'-destination" type="checkbox" value="'+campos2[i]+'">'
            );
        }
    }

});

$("#btn-conversion-1").click(function(){

    var num = $("#num-campos").val()

    var datosConversion = new Array();

    for(var i=0; i<num; i++)
    {
        datosConversion[i] = 'campo='+i+ '&conversion=' + $('input:radio[name=conver-campo-'+i+']:checked').val()
    }

    /*console.log("Las conversiones son: ");
    for(var i=0; i<datosConversion.length; i++)
        console.log(datosConversion[i]);*/

    $("#div-todo-destination-1").append(
        '<input id="num-conversiones-destination-1" type="checkbox" value="'+datosConversion.length+'">'
    );

    for(var i=0; i<datosConversion.length; i++)
    {
        $("#div-todo-destination-1").append(
            '<input id="conversion-'+i+'-destination-1" type="checkbox" value="'+datosConversion[i]+'">'
        );
    }


    $.ajax({
        url: "ajax/api.php?accion='traer-tablas-olap'",
        dataType: "json",
        method: "GET",
        success: function(respuesta){
    
            for(var i=0; i<respuesta.length; i++)
            {
                $('select[name=tablas-destino]').append('<option>'+respuesta[i].TABLE_NAME+'</option>');
            }
    
        },
        error: function(e){
            console.log(e);
            console.log("Ocurrio un error en: traer-tablas-oltp; controlador");
        }
    });
    
});

$("#btn-destination-1").click(function(){

    var nomTabla = '';
    var columnas = new Array();
    var conversiones = new Array();

    nomTabla = $("#input-tabla-destination").val();

    for(var i=0; i<$("#num-campos").val(); i++)
    {
        columnas[i] = $("#campo-"+i+"-destination").val();
    }

    for(var i=0; i<$("#num-conversiones-destination").val(); i++)
    {
        conversiones[i] = $("#conversion-"+i+"-destination").val();
    }


    //IMPRESION:
    console.log("Datos Consulta Definitiva controlador : ");

    console.log(nomTabla);

    for(var i=0; i<columnas.length; i++)
        console.log(columnas[i]);

    for(var i=0; i<columnas.length; i++)
        console.log(conversiones[i]);

    console.log("El tipo de origen es: " +$("#tipo-origen").val());

});

