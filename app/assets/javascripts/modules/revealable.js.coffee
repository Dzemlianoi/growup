$ ->
  if $('.reveal').length > 0
    Reveal.initialize(
	    controls: true,
      slideNumber: 'c/t',
      history: true,
      embedded: true,
      transition: 'slide',
      transitionSpeed: 'fast',
      backgroundTransition: 'slide',
      keyboard: {
        8: 'prev',
        13: 'next'
      },
    )
