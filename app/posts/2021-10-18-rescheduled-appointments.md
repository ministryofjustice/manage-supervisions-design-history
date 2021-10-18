---
title: Rescheduled appointments
description: Designs for the activity log and appointment pages
date: 2021-10-18
related:
  items:
  - text: Prototype PR
    href: https://github.com/ministryofjustice/hmpps-manage-supervisions-prototype/pull/369
  - text: Trello
    href: https://trello.com/c/U9p9Q0hZ/874-design-for-showing-that-an-appointment-has-been-rescheduled
---

Appointments can be rescheduled, either by the person on probation or by the ‘service’ (practitioner, staff or third party). There are two outcomes that relate to rescheduling:

- Rescheduled – Offender Request (RSOF)
- Rescheduled – Service Request (RSSR)

A rescheduled appointment will:

- show a blue ‘Rescheduled‘ tag in place of ‘Complied’
- hide any outcome or prompt to record an outcome
- show who requested the reschedule (either staff, or the person on probation’s name)

Blue has been chosen as a neutral colour, rather than a positive or negative.

## Patterns of behaviour

If someone on probation is frequently rearranging appointments, this could indicate a pattern of behaviour that the practitioner might want to follow up on. We include who requested the reschedule on the activity log to help identify behaviour.

{% from "screenshots/macro.njk" import appScreenshots with context %}
{{ appScreenshots({
  items: [{
      text: "Rescheduled appointment in activity log",
      img: { src: "01-rescheduled-appointment-in-activity-log.png" }
    }, {
      text: "Rescheduled appointment: Requested by staff",
      img: { src: "02-rescheduled-appointment-staff.png" }
    }, {
      text: "Rescheduled appointment: Requested by person on probation",
      img: { src: "03-rescheduled-appointment-person-on-probation.png" }
    }]
}) }}
