console.log('Hola mundo ')

let searchBar = $('searchInput')
let reservas = $$('div.reserva')
let reservasGrid = $('reservas-turisticas')
let searchBarNoResult = $('searchBarNoResult')
let formulario =$$('form')
let formularioHotelSelector = $$('form select')[0]

console.log(formularioHotelSelector)




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


searchBar.addEventListener("input", function (e) {
    displayInputResults(this.value);
});