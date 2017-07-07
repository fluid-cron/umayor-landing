    /*
    var clients = [
        { "Name": "Otto Clay", "Age": 25, "Country": 1, "Address": "Ap #897-1459 Quam Avenue", "Married": false },
        { "Name": "Connor Johnston", "Age": 45, "Country": 2, "Address": "Ap #370-4647 Dis Av.", "Married": true },
        { "Name": "Lacey Hess", "Age": 29, "Country": 3, "Address": "Ap #365-8835 Integer St.", "Married": false },
        { "Name": "Timothy Henson", "Age": 56, "Country": 1, "Address": "911-5143 Luctus Ave", "Married": true },
        { "Name": "Ramona Benton", "Age": 32, "Country": 3, "Address": "Ap #614-689 Vehicula Street", "Married": false }
    ];
    */
 
    /*var countries = [
        { Name: "", Id: 0 },
        { Name: "United States", Id: 1 },
        { Name: "Canada", Id: 2 },
        { Name: "United Kingdom", Id: 3 }
    ];*/
    
    $.ajax({
        type: "GET",
        url: "obtenerUnidades/"
    }).done(function(unidades) {
        
       $.ajax({
            type: "GET",
            url: "obtenerAreas/"
        }).done(function(areas) {    
        
        $.ajax({
             type: "GET",
             url: "obtenerCarreras/"
         }).done(function(carreras) {

            $("#jsGrid").jsGrid({

                height: "90%",
                width: "100%",

                inserting: true,
                editing: true,
                sorting: true,
                paging: true,
                autoload: true,
                filtering: true,

                deleteConfirm: "Do you really want to delete the client?",

                pageSize: 30,
                pageButtonCount: 5,
                
                controller: {
                    loadData: function(filter) {
                        return $.ajax({
                            type: "GET",
                            url: "obtenerOpciones/",
                            data: filter
                        });
                    }      
                },               
                
                /*insertItem: function(item) {
                    return $.ajax({
                        type: "POST",
                        url: "guardarOpciones/",
                        data: item
                    });
                },*/                

                //data: clients,

                fields: [
                    { name: "Unidad", type: "select", items: unidades, title: "Unidad", valueField: "id_unidad", textField: "nombre_unidad" ,validate: "required" },
                    { name: "Area", type: "select", items: areas, title: "Area", valueField: "id_area", textField: "nombre_area" ,validate: "required" },
                    { name: "Carrera u otro", type: "select", title: "Carrera u otro", items: carreras, valueField: "id_carrera", textField: "nombre_carrera" ,validate: "required" },
                    //{ name: "Disponible", type: "checkbox", title: "Disponible", sorting: false },
                    { 
                        type: "control", 
                        width: 10
                    }
                ]
            });

        });

    });
    
});