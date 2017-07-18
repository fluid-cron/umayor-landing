var base_url = $('#base_url').val();

$(document).ready(function() {
    
   $(".checkbox-estado").click(function() {
       
       var ele = $(this).val();
       
        $.ajax({
          method: "POST",
          url: base_url+"data/editarEstadoOpciones",
          data: { id: ele }
        }).done(function( msg ) {
            console.log( msg );
        });       
       
   });
   
   $("#select-unidad").select2();
   $("#select-area").select2();
   $("#select-carrera").select2();
   
});