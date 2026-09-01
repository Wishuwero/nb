/* Title:
 * # scriptOne

 * Tags:
 * # tags

 * Date Created:
 * 2026-09-01

 * To link first mark heading with <heading> then #link(<heading>)[alias]

 * To import image add to resources then use #import-image(name) without including resources/
 */

#import "@local/resources:1.0.0": *
#import "@preview/cheq:0.4.0": checklist
#show: checklist
#set document(
  title: [scriptOne],
)
#show link: set text(blue)
#title()


//People
