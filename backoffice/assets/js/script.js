$(document).ready(function(){
   $(".checkbox-estado").click(function() {
       
       var ele = $(this).val();
       
        $.ajax({
          method: "POST",
          url: "data/editarEstadoOpciones",
          data: { id: ele }
        }).done(function( msg ) {
            console.log( msg );
        });       
       
   });
});