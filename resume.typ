// Starter CV produced by `typst init @preview/altacv`. Edit in place.
//
// The full data schema is documented in the package README:
//   https://github.com/smur89/alta-typst#data-schema
//
// Every field below is optional except `basics.name`. Sections with
// empty input are skipped, so deleting an entry is enough to hide it.
//
// This file is also the canonical demo for the project — what
// renders as `examples/cv.png` (README static preview) and as
// `thumbnail.png` (Typst Universe package card).

#import "@preview/altacv:1.5.0": alta, avatar-placeholder // x-release-please-version

#let cv = (
  basics: (
    name: "Hector Omar Andre Sanchez",
    label: "Incoming UTD Freshman",
    summary: [Electrical Engineering student passionate about computers, robotics, and teaching TODO (MAKE THIS BETTER)],
    email: "hectoromar.andre@gmail.com",
    phone: "+1 469 644 7132",
    //url: "https://seanomurchu.dev",
    //image: "./resources/me.jpg", //`none` to drop the portrait, or keep `avatar-placeholder`
    image: none, //`none` to drop the portrait, or keep `avatar-placeholder`
    profiles: (
      //(network: "GitHub", username: "seanomurchu", url: "https://github.com/seanomurchu"),
      //(network: "LinkedIn", username: "seanomurchu", url: "https://linkedin.com/in/seanomurchu"),
    ),
  ),

  focusAreas: (
    [Electrical Engineering],
    [NixOS],
    [Functional programming],
    [Self hosting],
  ),

  work: (
    (
      name: "New Tech @ Coppell FTC Robotics",
      position: "President",
      location: "New Tech @ Coppell",
      startDate: "2025-01",
      endDate: "2026-05",
      summary: [ Responsibilities include overseeing other roles, creating schedules for every meet, and creating and supervising committees. ],
      highlights: (
        [Team captain 2024-2025 and 2025-2026],
        [Member for two years before vice presidency & later presidency],
        [Sustainability award in 2025],
        [Multiple marketing awards in 2023-2024],
      ),
    ),
    (
      name: "SPARK",
      position: "Coding & Robotics instructor",
      summary: "Organization aiming to provide kids with tutoring at a low price",
      highlights: (
        [ Created and taught a robotics curriculum for grades 5-8 ],
        [ First year’s curriculum was based on FTC and CAD. ],
        [ Second year’s curriculum was about using microcontrollers and designing a robot out of recycled materials. ],
        [ Third year’s curriculum was expanding on microcontrollers, this time with more coding and more in depth knowledge of circuits. ],
      ),
    ),
    (
      name: "Debate club",
      position: "Officer",
      location: "New Tech @ Coppell",
      startDate: "2019-06",
      endDate: "2026-05",
      //summary: [tbd],
      highlihgts: [Assisted with club organization, dates, roles, and debate topics.],
    ),
    (
      name: "Coppell High School Band",
      position: "Varsity Saxophone",
      location: "Coppell High School",
      startDate: "2022-07",
      endDate: "2014-05",
      //summary: [The Coppell HS Band is one of the leading organizations of its kind in the United States],
      highlights: (
        [JV member for one year],
        [Varsity member for one year],
      ),
    ),
  ),

  skills: (
    (name: "Languages", keywords: ("Scala", "Haskell", "Go")),
    (name: "Infra", keywords: ("Kafka", "AWS", "Kubernetes")),
  ),

  languages: (
    (language: "Spanish", fluency: "Native"),
    (language: "Spanish", fluency: "Native"),
  ),

  education: (
    (
      institution: "New Tech @ Coppell",
      url: "https://www.coppellisd.com/o/newtech",
      startDate: "2022",
      endDate: "2026",
    ),
  ),

  //  certificates: (
  //    (
  //      name: "Certified Kubernetes Administratoraaaaa",
  //      issuer: "CNCF",
  //      date: "2023-09",
  //      url: "https://www.cncf.io/training/certification/cka/",
  //    ),
  //    (
  //      name: "Certified Kubernetes Application Developer",
  //      issuer: "CNCF",
  //      date: "2024-04",
  //      url: "https://www.cncf.io/training/certification/ckad/",
  //    ),
  //  ),
  //
  //  awards: (
  //    (
  //      title: "Best Paper — Distributed Systems Track",
  //      awarder: "EuroSys",
  //      date: "2024-09",
  //      url: "https://example.com/eurosys",
  //    ),
  //  ),
  //
  //  publications: (
  //    (
  //      name: "Event Sourcing in Practice",
  //      publisher: "Personal Blog",
  //      releaseDate: "2024-06-15",
  //      url: "https://example.com/posts/event-sourcing",
  //    ),
  //  ),
  //
  //projects: (
  //  (
  //    name: "open-source: kafka-idempotent",
  //    url: "https://example.com/projects/kafka-idempotent",
  //    description: "Small Scala library for idempotent consumers.",
  //    startDate: "2023-04",
  //    keywords: ("Scala", "Kafka", "OSS"),
  //    highlights: (
  //      [Underpins the awarded EuroSys paper above.],
  //    ),
  //  ),
  //),

  volunteer: (
    (
      organization: "Coppell Education Foundation",
      position: "Summer camp mentor",
      startDate: "2023-06",
      endDate: "2025-06",
      highlights: (
        [Assisted two teams of four grades 6-8 in learning robotics with SPIKE .PRIME for around 30 hours per year],
        [*Distinguished volunteer* award],
      ),
    ),
    (
      organization: "Wilson Elementary School",
      position: "Robotics Program Student Mentor",
      startDate: "2025-10",
      endDate: "2026-04",
      summary: [],
      highlights: ([],),
    ),
  ),

  interests: (
    (name: "Music", keywords: ("Trad", "Jazz")),
    //(name: "Sport", keywords: ("Basketbaaall")),
  ),
)

// Visual preferences for this starter. The portrait stacks above a
// centred header; the rest takes the template's shipped defaults
// (teal accent, two-column layout, long-form dates). Edit any
// preference you like — `alta(cv, preferences: (...))` accepts any
// subset, with unknown keys panicking so typos surface immediately.
#let preferences = (
  imagePosition: "center",
  imageStackOrder: "above",
  headerTextAlign: "center",
)

#alta(cv, preferences: preferences)
