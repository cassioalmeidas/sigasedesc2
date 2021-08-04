// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

import Rails from "@rails/ujs"
import Turbolinks from "turbolinks"
import * as ActiveStorage from "@rails/activestorage"
import "channels"

import "bootstrap_includes"
import "sweetalert2_includes"
import "register-service-work"
import "flatpicker-includes"
import $ from 'jquery'
import "select2"

global.sweetalert = require("sweetalert2")
global.bootstrap = require("bootstrap")
global.select2 = require("select2")

$.fn.select2.amd.define('select2/i18n/pt-BR',[],require("select2/src/js/select2/i18n/pt-BR"));

$(document).on('turbolinks:load', function(){
  // Toggle the side navigation
  const sidebarToggle = document.body.querySelector('#sidebarToggle');
  if (sidebarToggle) {
      // Uncomment Below to persist sidebar toggle between refreshes
      if (localStorage.getItem('sb|sidebar-toggle') === 'true') {
          document.body.classList.toggle('sb-sidenav-toggled');
      }
      sidebarToggle.addEventListener('click', event => {
          event.preventDefault();
          document.body.classList.toggle('sb-sidenav-toggled');
          localStorage.setItem('sb|sidebar-toggle', document.body.classList.contains('sb-sidenav-toggled'));
      });
  }

  $('.select2').select2({
    language: "pt-BR",
    theme: "bootstrap-5",
    placeholder: "Pesquise pelo Nome/Descrição",
  });
});




Rails.start()
Turbolinks.start()
ActiveStorage.start()
