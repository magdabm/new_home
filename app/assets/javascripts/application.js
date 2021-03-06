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
//= require jquery3
//= require popper
//= require bootstrap-sprockets
//= require rails-ujs
//= require activestorage
//= require_tree .

window.addEventListener('load', function () {

	document.getElementById('full')
	.addEventListener('click', function () {
    if(document.getElementById('quest').style.display == 'none') {
      document.getElementById('quest').style.display = 'block';
      document.getElementById('full').innerHTML = "Hide questions";
			document.getElementById('icon_best').className = "fa fa-angle-double-up"
    } else {
      document.getElementById('quest').style.display = 'none';
      document.getElementById('full').innerHTML = "Show questions";
			document.getElementById('icon_best').className = "fa fa-angle-double-down"
    }
  })
})


window.addEventListener('load', function () {

  document.getElementById('hide_best')
	.addEventListener('click', function () {
    if(document.getElementById('best').style.display == 'none') {
      document.getElementById('best').style.display = 'block';
      document.getElementById('hide_best').innerHTML = "Hide best offers";
			document.getElementById('icon_best').className = "fa fa-angle-double-up"
    } else {
      document.getElementById('best').style.display = 'none';
      document.getElementById('hide_best').innerHTML = "Show best offers";
			document.getElementById('icon_best').className = "fa fa-angle-double-down"
    }
  })
})
