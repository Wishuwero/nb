/* Title:
* #

* Tags:
* # tags

* Date Created:
* 2026-09-23

* To link first mark heading with <heading> then #link(<heading>)[alias]

* To import image add to resources then use #import-image(name) without including resources/
*/

#import "@local/resources:1.0.0": *
#import "@preview/cheq:0.4.0": checklist
#show: checklist
#show link: set text(blue)
#import "@preview/chuli-cv:0.1.0": *
#show: cover-letter

#import "@preview/coral-cv:0.1.0": cover-letter

#show: cover-letter.with(
  author: "Hector Omar\nAndre Sanchez",
  //location: "Auckland, New Zealand",
  email: "dal878315",
  phone: "+1 469 644 7132",
  //website: "yourname.dev",
  date: datetime.today().display("[day] [month repr:long] [year]"),
  recipient: [
    Hiring Manager \
    Office of Information Technology\
    UT Dallas\
  ],
  subject: "UTDesign fab shop assistant",
)

