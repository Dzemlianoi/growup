$ ->
  if $('.reveal').length > 0
    Reveal.initialize(
	    controls: true,
      slideNumber: 'c/t',
      history: true,
      transition: 'slide',
      transitionSpeed: 'fast',
      touch: true
      backgroundTransition: 'slide',
      keyboard: {
        8: 'prev',
        13: 'next'
      },
      width: 1440,
      height: 900,
      margin: 0.01,
      minScale: 0.2,
      maxScale: 1.5
    )
