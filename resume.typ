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
    label: "Electrical Engineering First Year @ UTD",
    summary: [Electrical Engineering student passionate about computers, privacy, and teaching],
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
      summary: [ Robotics organization that aims to challenge high schoolers in a multi-disciplinary robotics competition],
      highlights: (
        [Managed multiple subteams and officers],
        [Scheduled check ins and work times],
        [Sustainability award in 2025],
      ),
    ),
    (
      name: "SPARK",
      position: "Coding & Robotics instructor",
      summary: "Organization aiming to provide kids with tutoring at a low price",
      highlights: (
        [ Taught kids grades 5-8 about robotics, 3D design, and electronics ],
        [ Created, refined, and taught multiple curriculums ],
        [ Every kid participated in a final project and took something tangible home ],
      ),
    ),
    (
      name: "Debate club",
      position: "Officer",
      location: "New Tech @ Coppell",
      startDate: "2019-06",
      endDate: "2026-05",
      summary: [Student run club aiming to teach and practice debate],
      highlights: (
        [ Ran weekly workshops and debate nights ],
        [ Reached out to multiple facilitators weekly to find one willing to host a debate that week ],
        [ Helped multiple beguinners become better debaters ],
      ),
    ),
    (
      name: "Coppell High School Band",
      position: "Varsity Saxophone",
      location: "Coppell High School",
      startDate: "2022-07",
      endDate: "2014-05",
      summary: [ Acclaimed 6A high school music program ],
      highlights: (
        [ Alto saxophone player in varisty band ],
        [ Practiced instrument and marching 3+ times per week with whole ensemble],
        [ Placed in regionals ],
      ),
    ),
  ),

  skills: (
    (name: "Languages", keywords: ("Nix", "Python", "C", "Java")),
    (name: "Infra", keywords: ("Nix Server", "PVE Clusters", "Cybersecurity")),
  ),

  languages: (
    (language: "Spanish", fluency: "Native"),
    (language: "English", fluency: "Native"),
  ),

  education: (
    (
      institution: "New Tech @ Coppell",
      url: "https://www.coppellisd.com/o/newtech",
      startDate: "2022",
      endDate: "2026",
    ),
    (
      institution: "UTD",
      url: "https://www.utdallas.edu/",
      startDate: "2022",
      endDate: "2030",
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
        [Assisted two teams of four grades 6-8 in learning robotics with SPIKE PRIME for around 30 hours per year],
        [*Distinguished volunteer* award ],
      ),
    ),
    (
      organization: "Wilson Elementary School",
      position: "Robotics Program Student Mentor",
      startDate: "2025-10",
      endDate: "2026-04",
      highlights: ([Collaborated with teacher to create and teach curriculum], [Organized and ran final competition]),
    ),
  ),

  interests: (
    (name: "Music", keywords: ("Drums", "Saxophone")),
    (name: "Coding", keywords: ("openGL", "NixOS")),
    (name: "Self Hosting", keywords: ("Proxmox", "NixOS")),
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
