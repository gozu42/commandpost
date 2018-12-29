// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require rails-ujs
//= require jquery
//= require_tree .




$(document).ready(function() {


})




function createMarker(lat,lng) {

	$.get("/createmarker?lat=" + lat + "&lng=" + lng, function(data){

		console.log(data)

	})
}



function checkMarkers() {

	$.get("/checkmarkers", function(data){

		console.log(JSON.parse(data))

		var l = JSON.parse(data).lat
		var n = JSON.parse(data).lng

		var marker = new mapboxgl.Marker().setLngLat([n,l]).addTo(map);
	})
}