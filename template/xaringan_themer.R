# PAS TOUCHE SVP !!!!!!

## Colors variables          ----------

colors_pal <- c(
  "#294557",      # Dark Blue
  "#e1ddc0",      # Tan
  "#49847b",      # Green
  "#7c4e20",      # Brown
  "#a52a2a",      # Red/Brown
  "#3f3f3f"       # Dark Gray
)


## Custom theme              ----------

xaringanthemer::write_xaringan_theme(


  ## Fonts family            ----------

  header_font_google              = xaringanthemer::google_font("Varela"),
  text_font_google                = xaringanthemer::google_font("Montserrat", "300", "300i", "500"),
  code_font_google                = xaringanthemer::google_font("Droid Mono"),


  ## Fonts sizes             ----------

  header_h1_font_size             = "3.25em",
  header_h2_font_size             = "2.00em",
  header_h3_font_size             = "1.25em",
  text_font_size                  = "1.25em",
  code_font_size                  = "0.75em",
  code_inline_font_size           = "1.00em",
  text_slide_number_font_size     = "0.75em",


  ## Fonts weights           ----------

  header_font_weight              = "normal",
  text_font_weight                = "normal",


  ## Colors                  ----------

  header_color                    = colors_pal[1],
  text_color                      = colors_pal[3],
  background_color                = colors_pal[2],
  link_color                      = colors_pal[5],
  text_slide_number_color         = colors_pal[1],
  code_inline_color               = colors_pal[4],
  code_highlight_color            = colors_pal[3],


  ## Inverse colors          ----------

  inverse_text_color              = colors_pal[2],
  inverse_header_color            = colors_pal[2],
  inverse_background_color        = colors_pal[6],


  ## Title slide             ----------

  title_slide_text_color          = colors_pal[2],
  title_slide_background_color    = colors_pal[6],
  title_slide_background_image    = NA,


  ## Others                  ----------

  outfile = "assets/css/xaringan-themer.css"
)
