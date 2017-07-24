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
   
    $('#datetimepicker6').datetimepicker({
        format: 'DD/MM/YYYY',
        allowInputToggle:true,
        useCurrent: false
    });

    $('#datetimepicker7').datetimepicker({
        format: 'DD/MM/YYYY',
        allowInputToggle:true,
        useCurrent: false        
    });
    
    $("#datetimepicker6").on("dp.change", function (e) {
        $('#datetimepicker7').data("DateTimePicker").minDate(e.date);
    });
    
    $("#datetimepicker7").on("dp.change", function (e) {
        $('#datetimepicker6').data("DateTimePicker").maxDate(e.date);
    });
    
    $(function () {
        $('[data-toggle="tooltip"]').tooltip()
    });   
   
});