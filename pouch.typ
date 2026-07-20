/* Title:
* # pouch

* Tags:
* # tags

* Date Created:
* 2026-07-17

* To link first mark heading with <heading> then #link(<heading>)[alias]

* To import image add to resources then use #import-image(name) without including resources/
*/

#import "@local/resources:1.0.0": *
#import "@preview/cheq:0.4.0": checklist
#show: checklist
#set document(
  title: [pouch],
)
#show link: set text(blue)
#title()

What if I use https://www.instructables.com/How-to-3D-Print-Onto-Fabric/ to make a pouch thingie , connect it with hinges and screws to make it modular or something and make the pouch I saw on instagram that connected with two caribeaners

The cad should be a small square of hexagons that I can tile on top of one another (xz plane) and then I should make reproducible edges that have either a screw hole or a snap in fit thingie

= 3D printing
For bulldog clips and tape I spray the glue around after I've fixed it all down and gotten a nice spread of fabric. It locks it down on all the contact points and helps prevent the nozzle from dragging around the fabric and stretching or ripping it out of the tape. Genuinely this was a god send for me.

Adding Z-Hop in the slicer. I didn't test what works best but I really really needed it to work so I went for 0.5mm feel free to experiment with this.

Make sure you have a nice even spread of fabric with no ripples or bumps. Since the fabric i was using was all wonky I slightly and evenly stretched it across the print surface. This requires really good grip so it's kinda time consuming and frustrating with masking tape

Higher layer height. of course this isn't always possible for your needs but the higher the layer height the more tolerance you have between the nozzle and the fabric.

