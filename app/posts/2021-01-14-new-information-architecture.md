---
title: "Iteration 3: New information architecture"
description: Pages showing a service user’s progress, sentence and attendance
date: 2021-01-14
---

Pages showing a service user’s progress, sentence and attendance

{% from "screenshots/macro.njk" import appScreenshots with context %}
{{ appScreenshots({
  items: [{
      text: "Dylan’s progress",
      img: { src: "iteration-03-01.png" }
    }, {
      text: "Dylan’s sentence",
      img: { src: "iteration-03-02.png" }
    }, {
      text: "Dylan’s details",
      img: { src: "iteration-03-03.png" }
    }, {
      text: "Dylan’s details (expanded)",
      img: { src: "iteration-03-04.png" }
    }, {
      text: "Book appointment",
      img: { src: "iteration-03-05.png" }
    }, {
      text: "Update attendance",
      img: { src: "iteration-03-06.png" }
    }, {
      text: "Update attendance (attended but did not comply)",
      img: { src: "iteration-03-07.png" }
    }, {
      text: "Update attendance (did not attend)",
      img: { src: "iteration-03-08.png" }
    }]
}) }}
