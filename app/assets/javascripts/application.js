//= require jquery
//= require jquery-ui
//= require jquery_ujs
//= require turbolinks
//= require_tree .



// Main Nav bar
function NavFunction() {
    var x = document.getElementById("mainTopnav");
    if (x.className === "topnav") {
        x.className += " responsive";
    } else {
        x.className = "topnav";
    }
}

