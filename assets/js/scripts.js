var base_url = $("#base_url").val();
var origen   = $("#origen").val();

$("#unidades").change(function() {
   
    var id = $(this).val();
    
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
      'nombre'   : { required:true , minlength: 3 },      
      'email'    : { required:true, email: true , minlength: 5 },
      'celular'  : { required:true , minlength: 8, digits:true },
      'unidades' : { required:true },
      'areas'    : { required:true },
      'carreras' : { required:true },
      'consulta' : { required:true, minlength:5, maxlength:200 }
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
                            $(".msje-gracias").fadeIn();
                        }else{
                            $("form").show();
                            $(".msje-gracias").hide();
                        }

                    }
                });                
                                
            }
        });

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

$("#unidades").change(function(){
    $("#unidades").valid();
});

$("#areas").change(function(){
    $("#areas").valid();
});

$("#carreras").change(function(){
    $("#carreras").valid();
});

$(document).ready(function() {
  var h = $(this).height();
  var header = $("header").height();
  var footer = $("footer").height();
  var new_h = h-(header+footer);
  $(".content,.content2").height( new_h+"px" );
});

if( origen=="desktop" ) {
    $(window).resize(function() {
      var h = $(this).height();
      var header = $("header").height();
      var footer = $("footer").height();
      var new_h = h-(header+footer);
      $(".content,.content2").height( new_h+"px" );
    });
}