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
//= require activestorage
//= require turbolinks
//= require_tree .


function showCapacity(event) {
  if(document.getElementById('tables-capacities')) {
    document.getElementById('tables-capacities').remove();
  }
  let html = document.createElement('div');
  html.id = 'tables-capacities';
  [...event.target.children].forEach(function(child) {
    if(child.selected) {
      let c = document.createElement('div')
      c.append(`${child.innerHTML} Capacity = ${child.dataset['capacity']}`);
      html.appendChild(c);
    }
  })
  event.target.parentElement.appendChild(html);
}

function getCapacity() {
  let capacity = 0;
  [...document.getElementById('reservation_number_of_tables').children].forEach(function(child) {
    if(child.selected) {
      capacity += parseInt(child.dataset['capacity'])
    }
  })
  return capacity;
}

function submitForm(event) {
  console.log(this.getCapacity());
  if(this.getCapacity() < (parseInt(document.getElementById('reservation_seating_capacity').value) || 0)) {
    alert('Capacity is greater than selected tables')
    event.preventDefault();
    return false;
  }
}

$(document).on('turbolinks:load', function() {
  if($('.alert').length > 0) {
    setTimeout(() => {
      $('.alert').remove();
    }, 3000);
  }
})