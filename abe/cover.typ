#let custom-cover(meta, cfg) = {
  if type(meta.authors) == array { meta.authors = meta.authors.join(", ") }

  // Your custom cover background
  let cover-bg = image(
    "ornamental-cover-01.jpg",
    width: 100% + 1pt,
    height: 100% + 1pt,
    fit: "stretch",
  )


  meta.volume = if meta.volume > 0 {
    import "@preview/transl:0.1.0": transl
    transl("volume", args: (n: meta.volume)) + "\n"
  } else { "" }

  set text(
    fill: cfg.cover-txtcolor,
    hyphenate: false,
  )
  set par(justify: false)

  page(
    margin: (x: 12%, y: 12%),
    fill: cfg.cover-bgcolor,
    background: cover-bg,
  )[
    #align(center + horizon)[
      #set par(leading: 2em)
      #context text(
        size: page.width * 0.06,
        font: cfg.cover-fonts.at(0),
        meta.title,
      )
      #linebreak()
      #set par(leading: cfg.line-space)
      #if meta.subtitle != none {
        v(1cm)
        context text(
          size: page.width * 0.04,
          font: cfg.cover-fonts.at(1),
          meta.subtitle,
        )
        //v(4cm)
      }
    ]
    #align(center + bottom)[
      #block(width: 52%)[
        #context text(
          size: page.width * 0.035,
          font: cfg.cover-fonts.at(1),
          meta.volume + meta.authors + "\n" + meta.date.display("[year]"),
        )
      ]
    ]
  ]
}
