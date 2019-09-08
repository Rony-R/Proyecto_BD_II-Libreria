
$(document).ready(function(){

    $.ajax({
        url: "ajax/api.php?accion=''",
        success: function(respuesta){
        
        },
        error: function(){
        console.log("Ocurrio un error!!!");
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
                $('select[name=tablas]').append('<option>'+respuesta[i].TABLE_NAME+'</option>');
            }

        },
        error: function(e){
            console.log(e);
            console.log("Ocurrio un error en: traer-tablas-oltp");
        }
    });

    if($('select[id=select-origen]').val() == 1)
    {
        $("#div-select-tabla").removeClass("d-none");
        $("#div-select-tabla").addClass("d-block");
        $("#div-txta-sql").removeClass("d-block");
        $("#div-txta-sql").addClass("d-none");
        $("#chk-campos").removeClass("d-none");
        $("#chk-campos").addClass("d-block");
    }
    else
    {
        $("#div-txta-sql").removeClass("d-none");
        $("#div-txta-sql").addClass("d-block");
        $("#div-select-tabla").removeClass("d-block");
        $("#div-select-tabla").addClass("d-none");
        $("#chk-campos").removeClass("d-block");
        $("#chk-campos").addClass("d-none");
    }

});


$("#selec-tabla").change(function(){

    var tabla = "tabla=" + $('select[name=tablas]').val();

    $.ajax({
        url: "ajax/api.php?accion='traer-campos-tablas'",
        data: tabla,
        dataType: "json",
        method: "GET",
        success: function(respuesta){

            for(var i=0; i<respuesta.length; i++)
            {
                $("#form-chk").append('<input type="checkbox" name="campo-tabla" value="'+respuesta[i].COLUMN_NAME+'">'+respuesta[i].COLUMN_NAME+'<br>');
            }

        },
        error: function(e){
            console.log(e);
            console.log("Ocurrio un error en: traer-campos-tablas");
        }
    });

    console.log("La tabla es: ");
    console.log($('select[name=tablas]').val());

    $("#div-todo-destination").append(
        '<input id="input-tabla-destination" type="checkbox" value="'+$('select[name=tablas]').val()+'">'
    );

});

$("#btn-source").click(function(){

    var datosSource = '';
    var datosSource2 = '';
    var datosSource3 = '';
    var campos = new Array();
    var campos2 = new Array();
    var iCamp = 0;
    var posicion = 0;

    if($('select[id=select-origen]').val() == 1)
    { 
        $('input[type=checkbox]').each(function(){
            if(this.checked)
            {
                campos[iCamp] = $(this).val();
                iCamp = iCamp+1;
            }
        });
        
        for(var i=0; i<campos.length; i++)
        {
            $("#div-campos-conversion").append(
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

        $("#div-num-campos").append(
            '<input type="radio" id="num-campos" value="'+campos.length+'">'
        );

        console.log("Los campos son: ");
        for(var i=0; i<campos.length; i++)
            console.log("campo"+i+'='+campos[i]);

        $("#div-todo-destination").append(
            '<input id="num-campos-destination" type="checkbox" value="'+campos.length+'">'
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

        console.log("Datos source consulta: ");
        for(var i=0; i<campos2.length; i++)
            console.log("campo"+i+'='+campos2[i]);
        
        $("#div-todo-destination").append(
            '<input id="input-tabla-destination" type="checkbox" value="'+$("#sql-txta-source").val()+'">'
        );
        
        $("#div-todo-destination").append(
            '<input id="num-campos-destination" type="checkbox" value="'+campos2.length+'">'
        );
        
        for(var i=0; i<campos2.length; i++)
        {
            $("#div-todo-destination").append(
                '<input id="campo-'+i+'-destination" type="checkbox" value="'+campos2[i]+'">'
            );
        }
    }

});

$("#btn-command").click(function(){

    var consulta = "sql=" +$("#sql-txta-command").val();

    $.ajax({
        url: "ajax/api.php?accion='eliminar-datos-command'",
        data: consulta,
        method: "POST",
        success: function(respuesta){
        },
        error: function(e){
            console.log(e);
            console.log("Ocurrio un error en: eliminar-datos-command");
        }
    });

});


$("#btn-conversion").click(function(){

    var num = $("#num-campos").val()

    var datosConversion = new Array();

    for(var i=0; i<num; i++)
    {
        datosConversion[i] = 'campo='+i+ '&conversion=' + $('input:radio[name=conver-campo-'+i+']:checked').val()
    }

    console.log("Las conversiones son: ");
    for(var i=0; i<datosConversion.length; i++)
        console.log(datosConversion[i]);

    $("#div-todo-destination").append(
        '<input id="num-conversiones-destination" type="checkbox" value="'+datosConversion.length+'">'
    );

    for(var i=0; i<datosConversion.length; i++)
    {
        $("#div-todo-destination").append(
            '<input id="conversion-'+i+'-destination" type="checkbox" value="'+datosConversion[i]+'">'
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
            console.log("Ocurrio un error en: traer-tablas-oltp");
        }
    });
    
});

$("#btn-destination").click(function(){

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
    console.log("Los datos para crear la consulta definitiva son: ");
    console.log(nomTabla);

    for(var i=0; i<columnas.length; i++)
    {
        console.log(columnas[i]);
        console.log(conversiones[i]);
    }

});

