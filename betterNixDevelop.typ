/* Title:
* # betterNixDevelop

* Tags:
* # tags

* Date Created:
* 2026-07-16

* To link first mark heading with <heading> then #link(<heading>)[alias]

* To import image add to resources then use #import-image(name) without including resources/
*/

#import "@local/resources:1.0.0": *
#set document(
  title: [betterNixDevelop],
)
#show link: set text(blue)
#title()

= Yap Summary
What if I could figure out how nix develop worked and then put multiple kitty instances whenever I wanted. Maybe by declaring niri sessions that include a flake.nix and multiple instances of that derivation in nvim stufff and kitty stuffs or maybe yazi things that enter the existing derivation.

