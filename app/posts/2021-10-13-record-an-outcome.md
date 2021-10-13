---
title: Record an outcome iteration
description: Disabling RAR, language improvements and appending notes
date: 2021-10-13
---

We’ve iterated our Record an outcome journey to accommodate:

- descoping RAR recording for now, instead we will point users to Delius
- playing back existing appointment notes when adding new notes
- simplifying the enforcement actions design

## Descoping RAR

The way practitioners record RAR is complex. Practitioners do so in different ways, and [RAR is also changing](/rar-nsi/). Based on our pilot participants, we believe most RAR activities are happening via third parties, rather than in 1 to 1 sessions.

We do not expect a high volume of 1 to 1 RAR activities, making it safer for us to descope this feature.

We will still ask whether an appointment counted towards RAR, and if it did, [we will direct them to Delius](#if-yes-to-rar-cannot-record-rar-yet).

## Playing back notes

We needed to:

- make it clear that new notes get appended to existing notes
- show any existing notes so that information does not get repeated
- give guidance on using paragraphs to try and improve the readability of notes

If the existing notes are long we should hide them using the details component. Long in this case is probably 1,000 characters or more, but we should experiment with this.

## Simplifying enforcement actions

An enforcement action is a required field to write-back an outcome to Delius if there is a non-compliance.

Our [existing enforcement actions design](/enforcement-action-when-recording-attendance/) did not test well. It presented options that confused practitioners, partly due to the split in roles between practitioner and case admin.

We recognise that the options Delius gives are confusing, but also that this list is familiar – practitioners should be able to pick the same option they’d give in Delius, without having to interpret our updated language.

We are [now using a simple select component](#pick-an-enforcement-action) that [lists all options in alphabetical order](#pick-an-enforcement-action-options) – as they are shown in Delius. ([More context on enforcement actions](enforcement-actions/))

The previous design should continue to be iterated so we can reach a better solution.

{% from "screenshots/macro.njk" import appScreenshots with context %}
{{ appScreenshots({
  items: [{
      text: "Record an outcome",
      img: { src: "01-record-an-outcome.png" }
    }, {
      text: "Did they attend and comply?",
      img: { src: "02-did-they-attend-and-comply.png" }
    }, {
      text: "If they attended and complied: Did this count towards RAR?",
      img: { src: "03-if-yes-did-this-count-towards-rar.png" }
    }, {
      text: "If yes to RAR: Cannot record RAR yet",
      img: { src: "04-cannot-record-rar-yet.png" }
    }, {
      text: "Do you want to add notes?",
      img: { src: "05-do-you-want-to-add-notes.png" }
    }, {
      text: "Add appointment notes",
      img: { src: "06-add-appointment-notes.png" }
    }, {
      text: "Add appointment notes with help expanded",
      img: { src: "07-add-appointment-notes-help-expanded.png" }
    }, {
      text: "Add appointment notes with previous notes",
      img: { src: "08-add-appointment-notes-with-previous-notes.png" }
    }, {
      text: "Does this appointment include sensitive information?",
      img: { src: "09-does-this-appointment-include-sensitive-information.png" }
    }, {
      text: "If they did not comply: How did they not comply?",
      img: { src: "10-if-did-not-comply-how-did-they-not-comply.png" }
    }, {
      text: "Pick an enforcement action",
      img: { src: "11-pick-an-enforcement-action.png" }
    }, {
      text: "Pick an enforcement action options",
      img: { src: "12-pick-an-enforcement-action-options.png" }
    }, {
      text: "If they did not attend: Was absence acceptable?",
      img: { src: "12-if-did-not-attend-was-absence-acceptable.png" }
    }, {
      text: "If absence was acceptable: Why were they absent?",
      img: { src: "13-if-absence-was-acceptable-why-were-they-absent.png" }
    }, {
      text: "Check answers – complied",
      img: { src: "14-check-answers-complied.png" }
    }, {
      text: "Check answers – failure to comply",
      img: { src: "15-check-answers-failure-to-comply.png" }
    }, {
      text: "Check answers – acceptable absence",
      img: { src: "16-check-answers-acceptable-absence.png" }
    }, {
      text: "Check answers – unacceptable absence",
      img: { src: "17-check-answers-unacceptable-absence.png" }
    }]
}) }}
