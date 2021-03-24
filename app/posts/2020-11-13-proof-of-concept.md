---
title: "Iteration 1: Proof of concept"
description: "An initial look at what’s need to prepare for an appointment with a new service user"
date: 2020-11-13
---

An initial look at what’s need to prepare for an appointment with a new service user

Screens were shown to users for feedback.

## Findings

- Received positive comments that GOV.UK style is better than the current system.
- Didn't get to the core user needs.
- Next steps - Run co-design workshops with Probation Practitioners on "How might we make the start of the probation journey better?".

{% from "screenshots/macro.njk" import appScreenshots with context %}
{{ appScreenshots({
  items: [{
      text: "My cases",
      img: { src: "iteration-01-01.png" }
    }, {
      text: "Case page",
      img: { src: "iteration-01-02.png" }
    }, {
      text: "Case summary",
      img: { src: "iteration-01-03.png" }
    }, {
      text: "Schedule an appointment",
      img: { src: "iteration-01-04.png" }
    }, {
      text: "Case history",
      img: { src: "iteration-01-05.png" }
    }, {
      text: "Add case notes",
      img: { src: "iteration-01-06.png" }
    }]
}) }}
