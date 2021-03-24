---
title: Recording RAR
description: Planning RAR activities, unplanned RAR, and missed RAR
date: 2021-03-11
---

Tasks covered:

* Scenario 1 - Arranging a session where a RAR activity is planned in advance
* Scenario 2 - Confirming attendance whereby a RAR session didn’t go ahead as planned
* Scenario 3 - Confirming attendance whereby a RAR activity was carried out that was unplanned

## Findings

* All three users were able to complete each scenario with relative ease bar the odd prompt for one of our participants, we are now confident in the usability of these transactions
* Users were confused about the policy around compliance if a Service User attends but isn’t able to complete the planned activity. Whilst it didn’t affect their ability to complete the transaction, they weren’t sure they had recorded the right answer

{% from "screenshots/macro.njk" import appScreenshots with context %}
{{ appScreenshots({
  items: [{
      text: "What type of session would you like to arrange?",
      img: { src: "iteration-06-01.png" }
    }, {
      text: "When would you like to arrange?",
      img: { src: "iteration-06-02.png" }
    }, {
      text: "Count towards RAR?",
      img: { src: "iteration-06-03.png" }
    }, {
      text: "Count towards RAR? (Yes)",
      img: { src: "iteration-06-04.png" }
    }, {
      text: "Check your answers",
      img: { src: "iteration-06-05.png" }
    }, {
      text: "Session arranged",
      img: { src: "iteration-06-06.png" }
    }, {
      text: "Confirm attendance",
      img: { src: "iteration-06-07.png" }
    }, {
      text: "Count towards RAR? (previous session)",
      img: { src: "iteration-06-08.png" }
    }, {
      text: "Did service user comply?",
      img: { src: "iteration-06-09.png" }
    }, {
      text: "Add notes about session?",
      img: { src: "iteration-06-10.png" }
    }, {
      text: "Check your answers (no RAR)",
      img: { src: "iteration-06-11.png" }
    }, {
      text: "Attendance confirmed",
      img: { src: "iteration-06-12.png" }
    }, {
      text: "Confirm attendance",
      img: { src: "iteration-06-13.png" }
    }, {
      text: "Count towards RAR? (No)",
      img: { src: "iteration-06-14.png" }
    }, {
      text: "Add notes?",
      img: { src: "iteration-06-16.png" }
    }, {
      text: "Check your answers (with RAR)",
      img: { src: "iteration-06-17.png" }
    }, {
      text: "Attendance confirmed",
      img: { src: "iteration-06-18.png" }
    }]
}) }}
