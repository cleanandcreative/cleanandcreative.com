class window.Slideshow 
  @el

  constructor: (el) ->
    @el = $(el)
    console.log "hello slideshow"
    this.construct_slides()
    
  construct_slides: () =>
    # alert("ho")
    
    slides = $('> article', @el)
    
    # Path.root(slides.first.attr('id'))

    for slide in slides
      slide = $(slide)
      slide_name = slide.attr('id')

      Path.map("##{slide_name}").to $.proxy(this.goto, this, slide_name)
      
  goto: (slide_name) => 
    console.log slide_name
      
