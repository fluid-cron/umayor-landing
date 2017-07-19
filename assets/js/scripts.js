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
   
    var id = $(this).val();
    
    $.ajax({
      method: "POST",
      url: base_url+"data/getCarreras",
      data: { id: id }
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
      'areas'    : { required:true }//,'carreras' : { required:true}
    },
    errorPlacement: function(error,element) {
      element.addClass('error');
    },
    unhighlight: function(element) {
      jQuery(element).removeClass("error");
    },
    submitHandler:function() {

        $.ajax({
          method: "POST",
          url: base_url+"app/guardarFormulario",
          data: $("#formx").serialize()
        }).done(function( msg ) {
            if( msg==="ok" ) {
                alert("guardado ok");
            }else{
                alert("error");
            }
        });

    }
});