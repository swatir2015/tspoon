TS.reservations = function () {  
  function refreshCities( e ){
    $( '#reservation_city' ).empty();
    
    for (var i = 0; i < TS.Countries[this.value].length; i++){
      var opt = document.createElement('option');
      opt.value = TS.Countries[this.value][i].id;
      opt.text = TS.Countries[this.value][i].name;
      $( '#reservation_city' ).append(opt);
    }
  };
  function setCity( e ){
    $( '#reservation_cities_id').val($( '#reservation_city option:selected' ).val());
  };

  return {
    init: function() {
      $( '#reservation_country' ).change(refreshCities);
      $( '#new_reservation' ).submit(setCity);
      //add event handler for country filter
      //add event handler for form validation
      //add event handler for number of drinks
      //add allergies/restriction
    }
  };
}();
$( TS.reservations.init );