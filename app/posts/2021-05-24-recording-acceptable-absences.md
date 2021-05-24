---
title: Recording acceptable absences
description:
date: 2021-05-24
---

Probation Practitioners (PPs) need to record whether someone on probation attends appointments. If they’re absent, there can be either an acceptable absence or an unacceptable absence.

In Delius, there’s several options available for acceptable absences:

- Acceptable absence - court/legal
- Acceptable absence - employment
- Acceptable absence - family/childcare
- Acceptable absence - holiday
- Acceptable absence - medical
- Acceptable absence - other
- Acceptable absence - religious
- Acceptable absence - ric
- Acceptable absence - stood down
- Acceptable absence - professional judgment decision
- Rescheduled - offender request
- Rescheduled - service request
- Suspended
- YOT breach  - not enforceable

## Original design

We added these options to the prototype straight from Delius however we realised that some of them weren’t necessary or relevant for our service:

- We moved the reasons for acceptable absence reasons to the following screen so that we’re only asking one question per screen
- We removed the “Acceptable absence” prefix before all of the options as there’s no user need to include this on every radio button
- We also moved “Other” to the bottom as this follows the design pattern for GOV.UK
- We wrote “ric” in full
- We removed the “Professional judgment” as all of the options are categorised this way
- We also removed “Suspended” and “YOT breach” as they aren’t relevant right now for our MVP
- We changed the wording of the question to make it more active

{% from "screenshots/macro.njk" import appScreenshots with context %}
{{ appScreenshots({
  items: [{
      text: "Old design",
      img: { src: "01-old-design.png" }
    }, {
      text: "Acceptable absence",
      img: { src: "02-acceptable-absence.png" }
    }, {
      text: "Acceptable absence reasons",
      img: { src: "03-acceptable-absence-reasons.png" }
    }]
}) }}
