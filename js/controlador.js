
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

/*$("select[name=color1]").change(function(){
    alert($('select[name=color1]').val());
    $('input[name=valor1]').val($(this).val());
});*/

//Funcion para obtener el valor de un select
$("#select-origen").change(function(){

    var resultConsulta = Array;

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

        /*for(var i=0; i<resultConsulta.lenght; i++)
        {
            $('select[id=selec-tabla]').append('<option>'+resultConsulta[i]+'</option>');   
        }*/

    }
    else
    {
        $("#div-txta-sql").removeClass("d-none");
        $("#div-txta-sql").addClass("d-block");
        $("#div-select-tabla").removeClass("d-block");
        $("#div-select-tabla").addClass("d-none");
        
    }

});


$("#selec-tabla").change(function(){

    $("#chk-campos").html(
        '<div class="col">'+
            '<input type="radio" name="campo1" value="1"> Campo 1<br>'+
            '<input type="radio" name="campo2" value="1"> Campo 2'+
        '</div>'
    );
});


$("#btn-conversion").click(function(){
    valradio();
    valradio2();
});

function valradio(){

    if($('input:radio[name=trans1]:checked').val() == 1)
    {
        alert("Check box 1");
    }
    else
    {
        if($('input:radio[name=trans1]:checked').val() == 2)
        {
            alert("Check box 2");
        }
        else
        {
            if($('input:radio[name=trans1]:checked').val() == 3)
            {
                alert("Check box 3");
            }
            else
            {
                alert("Check box 4");
            }
        }
    }

}

function valradio2(){

    if($('input:radio[name=trans2]:checked').val() == 1)
    {
        alert("Check box 1");
    }
    else
    {
        if($('input:radio[name=trans2]:checked').val() == 2)
        {
            alert("Check box 2");
        }
        else
        {
            if($('input:radio[name=trans2]:checked').val() == 3)
            {
                alert("Check box 3");
            }
            else
            {
                alert("Check box 4");
            }
        }
    }

}

