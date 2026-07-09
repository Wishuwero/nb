/* #resume\n
 * #personal #employment
 *
 */
#let primary_colour = rgb("#3E0C87") // vivid purple
#let link_colour = rgb("#12348e") // blue

// polyfill, as of Typst 0.14.0 target() only works when compiling with --features html
// and you can't set --features html on typst.app

#let icon(name, shift: 1.5pt) = context {
  let body = box(
    baseline: shift,
    height: 10pt,
    image("icons/" + name + ".svg"),
  )
  if target() == "paged" {
    body
    h(3pt)
  } else {
    html.frame(body)
  }
}

#let name(name) = context {
  if target() == "paged" {
    emph(name)
    [\ ]
  } else {
    html.div(
      class: "name",
      emph(name),
    )
  }
}

#let findMe(services) = {
  set text(8pt)
  let icon = icon.with(shift: 2.5pt)

  services
    .map(service => {
      icon(service.name)

      if "display" in service.keys() {
        link(service.link)[#{ service.display }]
      } else {
        link(service.link)
      }
    })
    .join(h(10pt))
  [

  ]
}

#let term(period, location) = context {
  if target() == "paged" {
    text(9pt, {
      icon("calendar")
      period
      h(1fr)
      icon("location")
      location
    })
  } else {
    html.div(
      style: "display: flex; align-items: center; gap: 10px;",
      {
        icon("calendar")
        html.div(period)
        icon("location")
        html.div(location)
      },
    )
  }
}


#let max_rating = 5
#let skill(name, rating) = context {
  let done = false
  let i = 1
  let dots = {
    while (not done) {
      let colour = rgb("#c0c0c0") // grey

      if (i <= rating) {
        colour = link_colour
      }

      let boxed_circle = box(circle(
        radius: 4pt,
        fill: colour,
      ))
      if target() == "paged" {
        boxed_circle
      } else {
        html.frame(boxed_circle)
      }

      if (max_rating == i) {
        done = true
      }

      if target() == "paged" {
        if (max_rating == i) {
          done = true
        } else {
          // no spacing on last
          h(2pt)
        }
      }

      i += 1
    }
  }

  if target() == "paged" {
    name
    h(1fr)
    dots
    [\ ]
  } else {
    html.div(
      style: "display: flex; align-items: center; gap: 5px; max-width: 200px; justify-content: space-between;",
      {
        text(name)
        html.span(
          style: "display: flex; gap: 5px; align-items: center;",
          dots,
        )
      },
    )
  }
}

#let styled-link(dest, content) = emph(text(
  fill: link_colour,
  link(dest, content),
))

#let alta(
  name: "",
  links: (),
  tagline: [],
  content,
) = {
  set document(
    title: name + "'s CV",
    author: name,
  )
  set text(9.7pt, font: "IBM Plex Sans")
  set page(
    margin: (x: 54pt, y: 52pt),
  )

  let body = {
    [= #name]

    if target() == "paged" {
      findMe(links)
    }

    tagline

    if target() == "paged" {
      columns(
        2,
        gutter: 15pt,
        content,
      )
    } else {
      content
    }
  }

  // apply styling only for non-HTML output
  if target() == "paged" {
    set document(
      title: name + "'s CV",
      author: name,
    )
    set page(
      margin: (x: 54pt, y: 52pt),
    )

    show heading.where(
      level: 2,
    ): it => text(
      fill: primary_colour,
      [
        #{ it.body }
        #v(-7pt)
        #line(length: 100%, stroke: 1pt + primary_colour)
      ],
    )

    show heading.where(
      level: 3,
    ): it => text(it.body)

    show heading.where(
      level: 4,
    ): it => text(
      fill: primary_colour,
      it.body,
    )

    body
  } else {
    html.div(body)
  }
}


#alta(
  name: "John Smith",
  links: (
    (name: "email", link: "mailto:contact@example.com"),
    (name: "website", link: "https://example.com/", display: "example.com"),
    (name: "github", link: "https://github.com/example", display: "@example"),
    (name: "linkedin", link: "https://linkedin.com/in/example", display: "John Smith"),
  ),
  tagline: [Software Engineer. #lorem(10)],
  context [
    == Experience

    === Junior Software Engineer \
    #name[_Company Two_]
    #term[Jul 2021 --- Jul 2022][London, UK]

    - #lorem(15)
    - #lorem(10)
    - #lorem(24)

    === Junior Systems Administrator \
    #name[Company 1]
    #term[Oct 2019 --- Jul 2021][Bournemouth, UK]

    - #lorem(20)
    - #lorem(10)

    References available on request

    == Education

    === Higher \
    #name[University Name]
    #term[Sep 2019 --- Jul 2023][Location, UK]

    B.Sc. Computer Science with Year in Industry. #lorem(10)

    === A-Levels \
    #name[Place Grammar School]
    #term[Sep 2017 --- Aug 2019][Place, UK]

    #lorem(10)

    == Interests

    - Walks on the beach
    - #lorem(8)
    - #lorem(6)
    - #lorem(4)
    - #lorem(12)

    #if target() == "paged" {
      colbreak()
    }

    == Projects

    ==== #link("https://example.com")[Some project]

    #lorem(30)

    #styled-link("https://example.com")[Example page]

    ==== Project with a longer name

    #lorem(20)

    ==== Employee Appraisal System

    - #lorem(15)
    - #lorem(10)
    - #lorem(20)

    ==== Hackathons

    / Hack1: #lorem(20)
    / TwoHackTwo: #lorem(15)

    ==== Project 4

    - #lorem(30)
    - #lorem(10)

    ==== Project Five

    - #lorem(23)

    == Skills

    #skill("Go", 5)
    #skill("TypeScript", 3)
    #skill("Git", 1)
    #skill("Typst", 1)
  ],
)
