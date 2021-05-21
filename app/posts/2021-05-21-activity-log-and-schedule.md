---
title: Activity log and schedule
description: Splitting communications into two sections
date: 2021-05-21
related:
  items:
  - text: Trello
    href: https://trello.com/c/CF6MuX5k/478-consider-how-to-display-future-and-repeat-appointments-and-arrange-an-appointment
  - text: Prototype PR
    href: https://github.com/ministryofjustice/hmpps-manage-supervisions-prototype/pull/239
---

The communications page was a single page showing in chronological order:

- future appointments
- past appointments
- communications and notes

If a probation practitioner adds many future appointments (for example by using the repeating appointment feature), then these take up the top of the list, hiding more valuable information about communications and recent appointments.

We'd tried to mitigate this using categories for all, upcoming and previous appointments, but those categories were being missed or misinterpreted.

## Splitting up communications

The hypothesis is that there are 2 needs:

1. Checking what’s upcoming and preparing for those appointments
2. Reviewing a history of activity, looking for patterns of behaviour

There was some deliberation about how to cut this, we tried:

- Future appointments, Past appointments and communications
- Contact history, Future appointments
- Contact with [name], Schedule
- A single page with Appointments needing attention, Future appointments, Historic appointments and communications

We wanted to avoid reusing the Delius term "Contact log", partly to avoid using "contact", but also to avoid confusion with what Delius displays.

‘Timeline’ was previously suggested, but practitioners expected it to show everything – for example offence dates, court dates, etc.

We settled on:

Activity log
: A log implies a record of what’s happened. Activity can cover appointments, communications and anything else.

Schedule
: Implies a list of appointments only

## Filters

Categories have been replaced by filters. The filters shown are a first draft.

## Team feedback

We captured team feedback on Miro, key questions were:

- Should we remove time from past appointments? Research suggests it’s not important to users
- Should we group events in the activity log by date? If there are many events on a day, the date as the heading would be repeated and make scanning harder
- What should the filters be?
- How many future and past appointments should be shown in the schedule?

## Notes in the log

We want to make it easier to recognise patterns of behaviour. Notes are a catch-all field where practitioners put down everything that happened in a communication or appointment – they are not easy to digest at a glance.

Discussed alternatives were:

- allowing practitioners to summarise an activity, perhaps with a free text field limited to 50 chars, "like a tweet"
- using labels or tags, much like the risk indicators, to quickly tag an activity – for example "Under the influence", "Aggressive"

{% from "screenshots/macro.njk" import appScreenshots with context %}
{{ appScreenshots({
  items: [{
      text: "Activity log",
      img: { src: "01-activity-log.png" }
    }, {
      text: "Schedule",
      img: { src: "02-schedule.png" }
    }, {
      text: "Appointment page",
      img: { src: "03-appointment-page.png" }
    }, {
      text: "Previous communication design",
      img: { src: "04-old-communication.png" }
    }, {
      text: "Previous design with many future appointments",
      img: { src: "05-old-communication-with-many-future-appointments.png" },
      caption: "Example illustrating the problem of many future appointments"
    }, {
      text: "An early design iteration",
      img: { src: "06-an-early-design-iteration.png" },
      caption: "First attempts added Future appointments as a summary at the top of the list"
    }, {
      text: "Another early design iteration",
      img: { src: "07-another-design-iteration.png" },
      caption: "Another attempt created a single navigation page for 3 types of view, but this buried the most important historic information – the place where practitioners spend most of their time"
    }]
}) }}
