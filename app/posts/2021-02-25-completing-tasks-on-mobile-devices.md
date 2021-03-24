---
title: "Iteration 5: Completing tasks on mobile devices"
description: Try to enable Probation Practitioners to complete quick recording tasks during and between meetings with service users
date: 2021-02-25
---

We know that Probation Practitioners save up their recording tasks until they can get back to their desks and input into Delius.

Enable Probation Practitioners to complete quick recording tasks during and between meetings with service users, reducing the administrative burden when they get back to their desk?

Tasks covered:

* Scenario 1 - Mark a service user as complied
* Scenario 2 - Arrange the next session
* Scenario 3 - Update service user’s personal details - Address and phone number

## Findings

Users:

* welcomed the idea of being able to use their mobiles to record information directly into the system
* would use it as a reference to check details on a case if they are making a home visit
* are already using their mobiles - but as a workaround. They then have to add information into the system manually.
* want to see the type of appointment on their calendar view, so they can prepare
* needed an option for evening time slots, as they sometimes have late appointments
* found ‘Other names’ confusing, and used the term ‘Aliases’
* wanted to be able to integrate with their phone contacts (eg: when updating mobile number)

A dictation feature would help when adding case notes (user tested with dyslexia who uses Dragon)

{% from "screenshots/macro.njk" import appScreenshots with context %}
{{ appScreenshots({
  items: [{
      text: "Choose a time (time of day)",
      img: { src: "iteration-05-01.png" }
    }, {
      text: "Choose a time (specific time)",
      img: { src: "iteration-05-02.png" }
    }, {
      text: "Session confirmed",
      img: { src: "iteration-05-03.png" }
    }, {
      text: "Compliance confirmed",
      img: { src: "iteration-05-04.png" }
    }, {
      text: "Personal details",
      img: { src: "iteration-05-05.png" }
    }, {
      text: "Update temporary addresses",
      img: { src: "iteration-05-06.png" }
    }, {
      text: "Add a temporary address",
      img: { src: "iteration-05-07.png" }
    }, {
      text: "Update phone number",
      img: { src: "iteration-05-08.png" }
    }, {
      text: "Replace phone number",
      img: { src: "iteration-05-09.png" }
    }, {
      text: "Add number or edit existing?",
      img: { src: "iteration-05-10.png" }
    }, {
      text: "Add additional number",
      img: { src: "iteration-05-11.png" }
    }, {
      text: "Update email",
      img: { src: "iteration-05-12.png" }
    }]
}) }}
