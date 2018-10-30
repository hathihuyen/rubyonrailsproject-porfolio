ready = ->
  Typed.new '.element',
    strings: [
      "<i>Software development should not be a secret process, when I take on a new project I make it my goal to not only deliver a well crafted product but to also ensure that each stage of the process is fully communicated.</i>",
      "&amp; It is also my goal to ensure that all the delivery of products are well desired level of quality."
    ]
    typeSpeed: 0
    loop: true
    loopCount: Infinity
  return

$(document).ready ready
$(document).on 'turbolinks:load', ready