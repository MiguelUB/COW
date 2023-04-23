console.log('Hola mundo ')

let searchBar = $('searchInput')
let reservas = $$('div.reserva')
let reservasBotones= $$('div.reserva button')
let reservaNombre=$$('div.reserva .card-title')
let reservasGrid = $('reservas-turisticas')
let searchBarNoResult = $('searchBarNoResult')
let formulario =$$('form')
let formularioHotelSelector = $$('form select')[0]
let searchSuggestions= $('searchSuggestions')
let floatIcon=$('float-icon')

console.log(formularioHotelSelector)




function reservaHotel(ButtonReserva,index){
    ButtonReserva.addEventListener("click", function(){
        let hotelNombre = reservaNombre[index].innerHTML
        // Cargamos el resultado en el formulario y vamos hasta el
        formularioHotelSelector.value= hotelNombre
        $('hotelform').scrollIntoView()

    })
}
function displayInputResults(textInput) {
    // Ponemos primero todo a su estado inicial
    searchBarNoResult.hide()
    for (let index = 0; index < reservas.length; index++) {
        reservas[index].show()
    }
    // Simple bucle que coge la infomaciond del dataset para filtrar los resultados
    let numberMisses = 0

    for (let index = 0; index < reservas.length; index++) {
        // Usamos el mismo tipo de letra
        textInput = textInput.toLowerCase()
        let nombreHotel = reservas[index].dataset.name.toLowerCase()

        if (nombreHotel.includes(textInput)) {
            reservas[index].appear()

        } else {
            reservas[index].hide()
            numberMisses++
        }
    }
    // Si el numero de resultados es igual 
    if (numberMisses == reservas.length) {
        searchBarNoResult.appear()
    }
}
function showSuggestion(textInput){
    console.log('FFFF',textInput)
    // searchSuggestions.innerHTML=textInput
    var xmlhttp = new XMLHttpRequest();
    xmlhttp.onreadystatechange = function() {
      if (this.readyState == 4 && this.status == 200) {
        let results = this.responseText.split(',')
        console.log(results)
        results.forEach(element => {

            
        });




        searchSuggestions.innerHTML = this.responseText;

      }
    };
    xmlhttp.open("GET", "listaHoteles.php?q=" + textInput, true);
    xmlhttp.send();
  
    return
}


searchBar.addEventListener("input", function (e) {
    displayInputResults(this.value);
    showSuggestion(this.value);
});
floatIcon.addEventListener("click", function(){
    console.log("GOTOP")
    $('navbarNav').scrollIntoView()
})

for (let index = 0; index < reservasBotones.length; index++) {
    reservaHotel(reservasBotones[index], index)
    
}