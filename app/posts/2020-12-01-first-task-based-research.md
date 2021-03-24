---
title: "Iteration 2: First task-based research"
description: First task based research following co-design workshops
date: 2020-12-01
---

First task based research following co-design workshops.

## Co-design workshops with Probation Practitioners

Theme of the workshop: "How might we make the start of the probation journey better?"

Tasks covered:

* preparing for the first appointment
* recording an appointment
* booking the next appointment

### User stories from the workshops

As a Probation Practitioner, in order to prepare for an appointment I need to…

…see their previous offences
…see their risk score
…see their past appointments
…see their how much time is left on their current order / RAR days
…see my past notes

Next steps - Use findings to update and test the prototype.

## Research

Tasks covered in research:

* preparing for induction
* adding session notes
* arranging a session

### Findings

* Using the 'Prepare a case for sentence' prototype as a starting point for our prototype was making it difficult to know how users needed the information to be structured.
* Didn't get to the core user needs.
* Next steps - Run card sorting workshops with Probation Practitioners, asking them to group information and prioritise when they would need the information.

{% from "screenshots/macro.njk" import appScreenshots with context %}
{{ appScreenshots({
  items: [{
      text: "My cases",
      img: { src: "iteration-02-01.png" }
    }, {
      text: "Case page",
      img: { src: "iteration-02-02.png" }
    }, {
      text: "Case summary",
      img: { src: "iteration-02-03.png" }
    }, {
      text: "Case summary (expanded)",
      img: { src: "iteration-02-04.png" }
    }, {
      text: "Probation record",
      img: { src: "iteration-02-05.png" }
    }, {
      text: "Community order",
      img: { src: "iteration-02-06.png" }
    }, {
      text: "Book appointment",
      img: { src: "iteration-02-07.png" }
    }, {
      text: "Contact history",
      img: { src: "iteration-02-08.png" }
    }, {
      text: "Add to contact history",
      img: { src: "iteration-02-09.png" }
    }, {
      text: "Add contact with service user to history",
      img: { src: "iteration-02-10.png" }
    }]
}) }}
