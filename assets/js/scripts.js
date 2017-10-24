var base_url = $("#base_url").val();
var origen   = $("#origen").val();
var estado_submit = 0;

$.validator.addMethod("rut", function(value, element) {
  return this.optional(element) || $.Rut.validar(value);
}, "");

jQuery.validator.addMethod("lettersonly", function(value, element){
    return this.optional(element) || /^[a-zñáéíóú A-Z]+$/i.test(value);
});

$("#rut").Rut({
   format_on: 'keyup'   
});

$("#unidades").change(function() {
   
    var id = $(this).val();
    
    $.ajax({
      method: "POST",
      url: base_url+"data/getEstadoUnidadIngreso",
      dataType: "json",
      data: { id: id }
    }).done(function( msg ) {
        
        if( msg.estado_tipo_ingreso==1 ) {
            
            if( !$("#tipo_ingreso").parent().is(":visible") ) {
                $("#tipo_ingreso").parent().show();
                $("#tipo_ingreso").rules("add",{ required: true });   
                resizefn();  
            }
        }else{
            
            if( $("#tipo_ingreso").parent().is(":visible") ) {
                $("#tipo_ingreso").parent().hide();  
                $("#tipo_ingreso").rules("remove","required");  
                resizefn();  
            }            
        }
       
        $.ajax({
          method: "POST",
          url: base_url+"data/getAreas",
          data: { id: id }
        }).done(function( msg ) {
           $("#areas").html('<option value="">Seleccionar area</option>');
           $.each(msg,function(index,value) {
               $("#areas").append('<option value="'+value.id+'">'+value.nombre+'</option>');
           });       
        });

        $("#carreras").rules("add",{ required: true });
        //$("#carreras").rules("remove","required");
        $("#areas").focus();           
 
    });       
   
});

$("#areas").change(function() {
  
    var id_unidad = $("#unidades").val();
    var id_area = $(this).val();    
    
    $.ajax({
      method: "POST",
      url: base_url+"data/getCarreras",
      data: { id_unidad:id_unidad,id_area: id_area }
    }).done(function( msg ) {
        
       $("#carreras").html('<option value="">Seleccionar carrera u otro</option>');
       
       $.each(msg,function(index,value) {
           $("#carreras").append('<option value="'+value.id+'">'+value.nombre+'</option>');
       });  

        $.ajax({
            url: base_url+'data/check',
            type: 'POST',
            data: {
                    "unidades" : $("#unidades").val(),
                    "areas"    : $("#areas").val(),
                    "carreras" : ""
                  },
            success: function(data) {

                if( data==="no existe" ) {
                    $("#carreras").rules("add",{ required: true });
                    $("#carreras").focus();
                }else{
                    $("#carreras").rules( "remove","required");
                    $("#carreras").focus();
                    $("#mensaje").focus();
                }
            }
        });         
       
    });  
    
});

jQuery("#formx").validate({
    rules:{
      'nombre'       : { required:true , minlength: 3 ,lettersonly:true },      
      'apellido'     : { required:true , minlength: 3 ,lettersonly:true },      
      'rut'          : { required:true , rut:true , maxlength:12 },      
      'email'        : { required:true, email: true , minlength: 5 },
      'celular'      : { required:true , minlength: 9, digits:true },
      'unidades'     : { required:true },
      'areas'        : { required:true },
      'carreras'     : { required:true },
      'tipo_ingreso' : { required:true },
      'consulta'     : { required:true, minlength:5, maxlength:170 }
    },
    errorPlacement: function(error,element) {
      element.addClass('error');
      var el = element.next().find('.select2-selection');
      el.addClass('error');
      
    },
    unhighlight: function(element) {
      jQuery(element).removeClass("error");
      var el = jQuery(element).next().find('.select2-selection');
      el.removeClass('error');      
    },
    submitHandler:function() {
        
        if( estado_submit==0 ) {
            estado_submit = 1;
        
            $.ajax({
                url: base_url+'data/check',
                type: 'POST',
                data: {
                        "unidades" : $("#unidades").val(),
                        "areas"    : $("#areas").val(),
                        "carreras" : $("#carreras").val()
                },
                success: function(data) {

                    $.ajax({
                        url: base_url+'app/guardarFormulario',
                        type: 'POST',
                        data: $("#formx").serialize(),
                        success: function(data) {

                            if( data!=="vacio" ) {
                                $("form").hide();
                                var h = $(window).height();
                                var header = $("header").height();
                                var footer = $("footer").height();
                                var new_h = h-(header+footer);
                                $(".content,.content2").height( new_h+"px" );                            
                                //$(".msje-gracias").fadeIn();
                                location.href = "gracias";
                            }else{
                                $("form").show();
                                $(".msje-gracias").hide();
                            }
                            estado_submit = 0;

                        }
                    });                

                }


            });
        
        }

    }
});

$("#unidades").select2({
    placeholder: "Unidades",
    minimumResultsForSearch: Infinity
});

$("#areas").select2({
    placeholder: "Areas",
    minimumResultsForSearch: Infinity
});

$("#carreras").select2({
    placeholder: "Programas",
    minimumResultsForSearch: Infinity
});

$("#tipo_ingreso").select2({
    placeholder: "Tipo ingreso",
    minimumResultsForSearch: Infinity
});

$("#unidades").change(function() {
    //console.log($(this).val());
    $("#formx").addClass('margin');
    $(".group-areas,.group-carreras,.group-tipo-ingreso,.group-consulta").hide();
    $("#unidades").valid();
    $(".group-areas").show();
    $(".group-carreras").show();
    //$(".group-tipo-ingreso").show();
    $(".group-consulta").show();
    resizefn();
    
    /*$(".group-areas").show('fast',function() {
        resizefn();
        $(".group-carreras").show('fast',function() {
            resizefn();
            $(".group-tipo-ingreso").show('fast',function() {
                resizefn();
                $(".group-consulta").show('fast',function() {
                    resizefn();
                });
            });
        });
    });*/
});

$("#areas").change(function() {
    $("#areas").valid();
});

$("#carreras").change(function() {
    $("#carreras").valid();
});

$("#tipo_ingreso").change(function() {
    $("#tipo_ingreso").valid();
});

$(document).ready(function() {
    resizefn();
});

$(window).resize(function() {
    resizefn();  
});

var header = $("header").height();
$(".derecho").height(header+"px");

function resizefn() {
  var w = $(document).width();
  var h = $(document).height();
  header = $("header").height();
  var footer = $("footer").height();
  var new_h = h-(header+footer);
  $(".content2").height( new_h+"px" );
  //$(".content,.content2").height( new_h+"px" );
  //$(".derecho").height(header+"px");    
}