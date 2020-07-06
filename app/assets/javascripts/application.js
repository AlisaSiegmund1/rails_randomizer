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


// // Wrap every letter in a span
// var textWrapper = document.querySelector('.page-header .letters');
// // textWrapper.addEventListener('mouseout', animationfalse);

// function animation () {
//   textWrapper.innerHTML = textWrapper.textContent.replace(/\S/g, "<span class='letter'>$&</span>");

//   anime.timeline({loop: true})
//     .add({
//       targets: '.page-header .letter',
//       translateY: ["1.1em", 0],
//       translateZ: 0,
//       duration: 10000,
//       delay: (el, i) => 50 * i
//     }).add({
//       targets: '.page-header',
//       opacity: 0,
//       duration: 10000,
//       easing: "easeOutExpo",
//       delay: 10000
//     });

// }


// var buttons = document.querySelectorAll('.btn');

// buttons.forEach((item) => {
//   item.addEventListener("click",function() {
//     buttons.forEach((btn) => {
//       btn.classList.remove('active-btn');
//       this.classList.add('active-btn')
//   });
// });
// });

// (window).on("load",function(){
//      (".loader-wrapper").fadeOut("slow");
// });

var loader = document.querySelector('#mydiv')

setTimeout(function() { loader.hidden = true; }, 2000);
