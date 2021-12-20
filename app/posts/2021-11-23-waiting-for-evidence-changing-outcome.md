---
title: Waiting for evidence and changing an outcome
description: Practitioners sometimes do not know if an absence is acceptable until evidence is submitted
date: 2021-11-23
related:
  items:
  - text: Prototype PR
    href: https://github.com/ministryofjustice/hmpps-manage-supervisions-prototype/pull/390
  - text: Video of journey (YouTube)
    href: https://www.youtube.com/watch?v=n5XHItZGklQ
  - text: Video of journey (download)
    href: https://user-images.githubusercontent.com/319055/142901619-7cf8fe02-77ec-4b4b-9c4c-13ab3cfe97a2.mov
  - text: Trello ticket
    href: https://trello.com/c/IVIq03M6/995-amending-an-outcome-for-an-appointment-based-on-new-information
---

Our original journey asked ‘[Was their absence acceptable?](/record-an-outcome/#if-they-did-not-attend-was-absence-acceptable)’ and had 2 options: yes or no. Practitioners sometimes do not know if an absence is acceptable until evidence is submitted, but they still need to record an outcome and choose an enforcement action.

Delius uses the ‘Failed to attend’ option as a holding state – a practitioner records that the person on probation did not attend, but reserves judgement on whether this was acceptable or not.

Policy states that they should inform the person on probation and give them 5 working days to provide evidence to justify their absence. Once that time is up, or once evidence has been received, practitioners should change ‘Failed to attend’ to an acceptable or unacceptable absence.

## Waiting for evidence

To accommodate this journey we’ve rephrased the compliance and absence questions.

### Was their absence acceptable?

When we ask if the absence was acceptable there are now 3 options:

1. Yes
2. No, it was unacceptable
3. I am waiting for evidence about their absence

If they pick ‘waiting for evidence’, we:

- still ask them to pick an enforcement action
- set the compliance status to ‘Failed to attend’ in Delius
- show a waiting for evidence status on the appointment page and timeline
- include a call to action to change the outcome

When we have a better understanding of timeframes we expect to also prompt the practitioner to update the outcome, using alerts and emails.

### Did they comply?

We previously asked if they had [attended and complied](/record-an-outcome/#did-they-attend-and-comply):

1. Yes
2. No, they attended but failed to comply
3. No, they were absent

An absence happens more frequently than attending and not complying – we’ve reworded the options so that the more common choice comes first:

1. Yes, they attended and complied
2. They were absent
3. They attended but failed to comply

We avoid saying ‘No’ at this stage, as we do not want to infer that the absence was a failure to comply.

## Changing an outcome

When changing an outcome for an appointment, we effectively take the user back through the ‘Record an outcome’ journey, with some changes to content to set expectations.

User error is a possibility – examples could include a user that:

- mistakenly marking something as complied (because that’s the most common action they perform)
- picks failed to comply instead of absence

A practitioner needs to be able to recover from these errors and put the appointment into the correct state. For this reason we do not limit the available choices based on the current state.

A future iteration might instead make the common choices for a particular state the most obvious, and hide away anything less common. This would be a consideration for an iteration to the ‘Pick an enforcement action’ page.

### Differences with the record an outcome journey

There are some small but important differences:

- the start page says ‘Change outcome’ rather than ‘Record an outcome’
- when an enforcement action already exists, we ask if it needs to change
- when asking about adding notes, we encourage adding with content about explaining the change in outcome
- on the notes page we replace the use paragraphs hint with a hint about why the outcome has changed
- the title and button text on the check your answers page is contextual
- the success text on the confirmation page is contextual

After both the record an outcome and change outcome journeys we now take the user back to the appointment page, rather than the timeline. Here they can see the effect of their changes, and are more likely to spot and fix any errors.

### Changing an enforcement action

Currently the ‘Pick an enforcement action’ page only shows if there is a failure to comply or unacceptable absence.

It must now also show when changing the outcome for any appointment with an enforcement action already set.

For example: If an appointment was ‘Absent’ and ‘Waiting for evidence’ with an action ‘Warning letter requested’. Should the practitioner change this to ‘Complied’ – we need to ask if the enforcement action should also change (a likely scenario is that it would change to ‘No further action’ or ‘Withdraw warning letter’).

Journeys showing the ‘Change enforcement action’ page:

- changing outcome to complied (shows before we ask if the appointment was a RAR activity)
- changing outcome to acceptable absence (shows after absence reason)

## Other considerations

If any complied appointment changes to a failure or absence, we must remove any associated RAR activities.

## Video of journey

{% from "embed/macro.njk" import appEmbed with context %}
{{ appEmbed({
  youtubeId: 'n5XHItZGklQ'
}) }}

{% from "screenshots/macro.njk" import appScreenshots with context %}
{{ appScreenshots({
  items: [{
      text: "Record an outcome",
      img: { src: "01-record-an-outcome.png" }
    }, {
      text: "Record an outcome: Did they comply?",
      img: { src: "02-did-they-comply.png" }
    }, {
      text: "Record an outcome: Was absence acceptable?",
      img: { src: "03-was-absence-acceptable.png" }
    }, {
      text: "Record an outcome: Do you need to add notes?",
      img: { src: "04-do-you-need-to-add-notes.png" }
    }, {
      text: "Record an outcome: Pick an enforcement action",
      img: { src: "05-pick-an-enforcement-action.png" }
    }, {
      text: "Record an outcome: Add notes",
      img: { src: "06-add-notes.png" }
    }, {
      text: "Record an outcome: Is this sensitive?",
      img: { src: "07-is-this-sensitive.png" }
    }, {
      text: "Record an outcome: Check your answers",
      img: { src: "08-check-your-answers.png" }
    }, {
      text: "Record an outcome: Confirmation",
      img: { src: "09-confirmation.png" }
    }, {
      text: "Appointment waiting for evidence",
      img: { src: "10-appointment-waiting-for-evidence.png" }
    }, {
      text: "Timeline waiting for evidence",
      img: { src: "11-timeline-waiting-for-evidence.png" }
    }, {
      text: "Change outcome",
      img: { src: "12-change-outcome.png" }
    }, {
      text: "Change outcome: Did they comply?",
      img: { src: "13-change-outcome-did-they-comply.png" }
    }, {
      text: "Change outcome: Was absence acceptable?",
      img: { src: "14-change-outcome-was-absence-acceptable.png" }
    }, {
      text: "Change outcome: Do you need to change enforcement action?",
      img: { src: "15-change-outcome-do-you-need-to-change-enforcement-action.png" }
    }, {
      text: "Change outcome: Do you need to add notes?",
      img: { src: "16-change-outcome-do-you-need-to-add-notes.png" }
    }, {
      text: "Change outcome: Add notes",
      img: { src: "17-change-outcome-add-notes.png" }
    }, {
      text: "Change outcome: Check your answers",
      img: { src: "18-change-outcome-check-your-answers.png" }
    }, {
      text: "Change outcome: Confirmation",
      img: { src: "19-change-outcome-confirmation.png" }
    }, {
      text: "Appointment outcome changed",
      img: { src: "20-appointment-outcome-changed.png" }
    }]
}) }}
