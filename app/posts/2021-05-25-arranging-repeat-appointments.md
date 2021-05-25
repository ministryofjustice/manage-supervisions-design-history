---
title: Arranging repeat appointments
description: How we ask about notes, RAR and sensitive information
date: 2021-05-25
related:
  items:
  - text: Trello
    href: https://trello.com/c/CF6MuX5k/478-consider-how-to-display-future-and-repeat-appointments-and-arrange-an-appointment
  - text: Prototype PR – Add questions
    href: https://github.com/ministryofjustice/hmpps-manage-supervisions-prototype/pull/243
  - text: Prototype PR – Show dates
    href: https://github.com/ministryofjustice/hmpps-manage-supervisions-prototype/pull/244
---

When arranging an appointment we ask if it will be a repeating appointment. If it repeats, what aspects of it should be copied?

In research we copied everything, but that sometimes surprised participants – they weren’t always expecting RAR categories and notes to be copied.

## What gets copied

If an appointment is marked as repeating, for all repeat appointments we now ask:

- does the current RAR category also apply
- should notes be copied across
- if the repeat appointments are also sensitive

| Attribute | Copied to repeat appointments? |
|--|--|
| Type of appointment | Yes |
| Location | Yes |
| Time | Yes |
| RAR category | Optional, only if main appointment has a RAR activity |
| Notes | Optional |
| Sensitive | Optional, only if main appointment is also sensitive |

Users cannot edit the RAR category for each repeat appointment. One user in the model office expressed a desire to do this, but we aren't sure how common this need is. We expect most appointments to repeat the same activity.

## Show repeat appointment dates

We ask for the frequency and number of repeat appointments, but we were not showing users the actual dates appointments would be scheduled for. We've introduced a new page immediately following the repeat question, showing a list of dates. That list is also repeated on the Check your answers page.

## Design notes

At the end of arranging an appointment we now return users to the schedule, where they can see all the confirmed appointments in a list.

The question about whether an appointment is a repeating one has been moved onto its own page.

When arranging repeat appointments some of the language has been tweaked to indicate there are many, for example "Confirm appointments" and "Appointments confirmed".

{% from "screenshots/macro.njk" import appScreenshots with context %}
{{ appScreenshots({
  items: [{
      text: "When will the appointment be?",
      img: { src: "01-when-will-the-appointment-be.png" }
    }, {
      text: "Is it repeating?",
      img: { src: "02-is-it-repeating.png" }
    }, {
      text: "Appointments arranging",
      img: { src: "03-appointments-arranging.png" }
    }, {
      text: "RAR categories with repeat question",
      img: { src: "04-rar-categories-with-repeat-question.png" }
    }, {
      text: "Notes with repeat question",
      img: { src: "05-notes-with-repeat-question.png" }
    }, {
      text: "Is it sensitive with repeat question",
      img: { src: "06-is-it-sensitive-with-repeat-question.png" }
    }, {
      text: "Check answers with repeat dates and repeat answers",
      img: { src: "07-check-answers-with-repeat-dates-and-repeat-answers.png" }
    }, {
      text: "Confirmation",
      img: { src: "08-confirmation.png" }
    }, {
      text: "Schedule",
      img: { src: "09-schedule.png" }
    }]
}) }}
