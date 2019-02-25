ready = ->
  Typed.new '.element',
    strings: [
      "<i>I am very detail-oriented person, curious, ambitious to learn new things, and a strong team player. I like solving problems and be a motivated self-starter, continuously seeking to find new, innovative ways to make testing more impactful, accurate, and efficient.</i>",
      "&amp; It is also my goal to ensure that all the delivery of products are well desired level of quality."
    ]
    typeSpeed: 0
    loop: true
    loopCount: Infinity
  return

$(document).ready ready
$(document).on 'turbolinks:load', ready