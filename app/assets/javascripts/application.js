// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require bootstrap-sprockets
//= require turbolinks
//= require underscore
//= require gmaps/google
//= require_tree .
$(document).ready(function(){


  var locations = [];

  $.ajax({url:'/businesses.json'}).success(function(data){
    // console.log(data);
    data.forEach(function(business){
        var temp = [business.title, business.latitude, business.longitude];
      locations.push(temp);
    });
  console.log(locations);

     var map = new google.maps.Map(document.getElementById('geolocation'), {
       zoom: 10,
       center: new google.maps.LatLng(-39.92, 151.25),
       mapTypeId: google.maps.MapTypeId.ROADMAP
     });
     var infowindow = new google.maps.InfoWindow();
     var marker, i;
     var markers = new Array();
     for (i = 0; i < locations.length; i++) {
       marker = new google.maps.Marker({
         position: new google.maps.LatLng(locations[i][1], locations[i][2]),
         map: map
       });
       markers.push(marker);
       google.maps.event.addListener(marker, 'click', (function(marker, i) {
         return function() {
           infowindow.setContent(locations[i][0]);
           infowindow.open(map, marker);
         }
       })(marker, i));
     }
     function AutoCenter() {
       //  Create a new viewpoint bound
       var bounds = new google.maps.LatLngBounds();
       //  Go through each...
       $.each(markers, function (index, marker) {
       bounds.extend(marker.position);
       });
       //  Fit these bounds to the map
       map.fitBounds(bounds);
     }
     AutoCenter();
  });
//
//
//
//
//
//
//
//
//
//
// var handler = Gmaps.build('Google');
//
//
// handler.buildMap({ internal: {id: 'geolocation'} }, function(){
//   if(navigator.geolocation)
//     navigator.geolocation.getCurrentPosition(displayOnMap);
// });
//
// function displayOnMap(position){
//   var marker = handler.addMarker({
//     lat: position.coords.latitude,
//     lng: position.coords.longitude
//   });
//   handler.map.centerOn(marker);
// };
});
