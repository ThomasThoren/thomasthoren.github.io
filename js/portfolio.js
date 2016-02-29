'use strict';
/*global $ */
/*jslint browser: true*/

function updateDeferredImagesSrc() {
  /* Add src URLs for all defered images. */

  var i,
      images = document.getElementsByTagName("img");

  // Loop through images and change src attributes.
  for (i = 0; i < images.length; i++) {
    if (images[i].getAttribute('data-src')) {  // If a deferred image...
      images[i].setAttribute('src', images[i].getAttribute('data-src'));
    }
  }
}

$(document).ready(function () {
  updateDeferredImagesSrc();
});
