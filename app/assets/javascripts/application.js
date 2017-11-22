//= require jquery
//= require bootstrap-sprockets
//= require jquery_ujs
//= require_tree .

$(document).ready(
  function() {
$( "#calendar_input" ).change(function() {
  window.location = "http://localhost:3000/matches?date=2017-11-22";
});
});
