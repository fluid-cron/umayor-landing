var base_url = $("#base_url").val();

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
      'consulta' : { required:true, minlength:5 }
    },
    errorPlacement: function(error,element) {
      element.addClass('error');
    },
    unhighlight: function(element) {
      jQuery(element).removeClass("error");
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

                        if( data!="vacio" ) {
                            alert("ok");
                        }else{
                            alert("error");
                        }

                    }
                });                
                                
            }
        });

    }
});

$(document).ready(function() {
   $("#areas").change(function() {
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
                }else{
                    $("#carreras").rules( "remove","required");                         
                }
            }
        });        
   });
   $("#unidades").change(function() {
       $("#carreras").rules("remove","required");
       $("#carreras").focus();
       
   }); 
});