// APA 7th Edition Template for Typst
// ====================================
// This file contains only the template function and helpers.

// ---- Helper Functions ----
#let blockquote(body) = {
  par(first-line-indent: 0in, left-indent: 0.5in)[#body]
}

// ---- Template Function ----
#let apa7(
  body,
  title: "Your Paper Title Here",
  author: "Author Name",
  department: "Department, University",
  course: "Course Number: Course Name",
  instructor: "Instructor Name",
  duedate: "Month Day, Year",
  lang: "en",
) = {
  set page(
    margin: 1in,
    paper: "us-letter",
  )

  set text(
    font: "New Computer Modern",
    size: 10pt,
    lang: lang,
  )

  set par(first-line-indent: (all: true, amount: 0.5in))

  set heading(numbering: "1.1)")

  show heading: set text(size: 10pt, font: "New Computer Modern")

  // Bibliography setup
  show bibliography: it => {
    set heading(numbering: none)
    set par(first-line-indent: 0in, hanging-indent: 0.5in)
    it
  }

  show outline: it => {
    show heading: set align(center)
    it
  }

  // Title page
  align(center, [
    #v(1in)
    #text(weight: "bold")[#title]
    #v(1em)
    #author
    #v(0.5em)
    #department
    #v(0.5em)
    #course
    #v(0.5em)
    #instructor
    #v(0.5em)
    #duedate
  ])

  pagebreak()
  set page(header: context align(right)[#counter(page).display()])
  body
}
