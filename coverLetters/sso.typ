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
  subject: "Student Assistant 2 - SSO Implementer",
)
/*
 * "Monitor system logs and assists with routine maintenance tasks." Self hosting??
 * "Assist with testing integrations for new applications and services." Self hosting again, this one sounds fun
 */

I am writing to apply for the position of student assistant - SSO Implementer because I want to translate my hobbyist programming and self hosting experience into real world experience and helping people.

//  "Monitor system logs and assists with routine maintenance tasks." Self hosting??
//  "Assist with testing integrations for new applications and services." Self hosting again, this one sounds fun
My interest in implementation comes from my enjoyment of self-hosting. I've had a self hosted server for five years, it has taught me about linux systems, bash scripting, DNS, SSL, and general troubleshooting, documentation, and maintenance skills. I used proxmox and LXC containers four of those years, then transitioning to a more declarative configuration using NixOS that I'm using now.

I have familiarity with both python and javascript. Attending ACM devday gave familiarity with using python to build a basic backend and I have used javascript before to make a

// Javascript & Python
