---
title: Pick a location iteration
description: Add options for when a location is not showing in the list
date: 2021-11-01
related:
  items:
  - text: Original design
    href: /pick-a-location/
  - text: Prototype PR
    href: https://github.com/ministryofjustice/hmpps-manage-supervisions-prototype/pull/376
---

Our designs restrict the locations shown to those associated with the team or teams that the offender manager is a member of. There is no way to select a location from a different team in our service, but also no way of identifying if probation practitioners wanted to choose a different location, one not shown in the list.

This is an update on our [previous design](/pick-a-location/), where we’ve split ‘None of the above’ into two options:

- The location I’m looking for is not in this list
- I do not need to pick a location

## The location I’m looking for is not in this list

We’re using this option to capture any user who might be looking for a specific location that we are not showing.

We’ll direct them to Delius – on Delius they can select a team and find the location. We also point them to our support email so we can find out more about their particular scenario.

This option is always available.

## I do not need to pick a location

This option will only show when:

- we’ve decided to show the location screen (ie phone, video and home visits skip this step)
- a location is optional and the user needs a way to continue without selecting one

On the check answers screen ‘I do not need to pick a location’ will show as ‘No location’.

{% from "screenshots/macro.njk" import appScreenshots with context %}
{{ appScreenshots({
  items: [{
      text: "Pick a location with new options",
      img: { src: "01-pick-a-location-with-new-options.png" }
    }, {
      text: "Arrange an appointment in another location",
      img: { src: "02-arrange-an-appointment-in-another-location.png" }
    }, {
      text: "Location in check answers",
      img: { src: "03-location-in-check-answers.png" }
    }, {
      text: "Location on appointment page",
      img: { src: "04-location-on-appointment-page.png" }
    }]
}) }}
