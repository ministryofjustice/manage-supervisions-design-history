---
title: Enforcement action when recording attendance
description: Allow practitioners to record an action in journey
date: 2021-08-06
related:
  items:
  - text: Trello
    href: https://trello.com/c/PkQmPoEa/498-design-in-enforcement-actions-data-when-a-service-user-has-failed-to-comply-failed-to-attend-an-appointment
  - text: Prototype PR
    href: https://github.com/ministryofjustice/hmpps-manage-supervisions-prototype/pull/298
  - text: Enforcement action analysis
    href: /enforcement-actions/
---

Following on from our [analysis of available enforcement actions](/enforcement-actions), and building on our record attendance journey, if a practitioner records a person on probation as being unacceptably absent, or another type failure to comply, they must record an enforcement action. This is a required field in Delius.

By a process of elimination we reduced down the enforcement action Delius options to:

- Enforcement letter requested (picking ‘request that a warning letter is sent’)
- Breach letter sent
- First warning letter sent
- Second warning letter sent
- Final warning letter sent
- Other enforcement letter
- Immediate breach

## Notes when requesting a warning letter is sent

When requesting a letter the practitioner needs to be able to give notes about what letter is needed to the case admin. There's only 1 notes field for an appointment. Our expectation with this feature is that these notes will be appended or prepended to any appointment notes they add.

We’ve also observed in research that a practitioner might use this field for all of their appointment notes.

When a user reaches the notes field, we might want to show what they’ve already added.

## Immediate breach and expedited breach

In research we’ve seen users question whether immediate breach is the same as an expedited breach.

{% from "screenshots/macro.njk" import appScreenshots with context %}
{{ appScreenshots({
  items: [{
      text: "Pick an enforcement action",
      img: { src: "01-pick-an-enforcement-action.png" }
    }, {
      text: "Request that a warning letter is sent",
      img: { src: "02-request-that-a-warning-letter-is-sent.png" }
    }, {
      text: "Warning letter sent",
      img: { src: "03-warning-letter-sent.png" }
    }, {
      text: "Check answers",
      img: { src: "04-check-answers.png" }
    }, {
      text: "Appointment page",
      img: { src: "05-appointment-page.png" }
    }, {
      text: "Earlier design with all options",
      img: { src: "06-earlier-design-with-all-options.png" }
    }]
}) }}
