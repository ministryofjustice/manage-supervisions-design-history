---
title: Activity log iteration
description: Refining the design to make it more compact, and to handle more contact types
date: 2021-09-06
related:
  items:
  - text: Show and tell slides
    href: https://docs.google.com/presentation/d/1eYbQ1iEXuUgnGeR5i8PUAqWrpuKOqLVqZIopATFWkIQ/edit#slide=id.p
  - text: Trello
    href: https://trello.com/c/IGUKIEp1/525-improve-activity-log-layout-and-entries
  - text: Prototype PR
    href: https://github.com/ministryofjustice/hmpps-manage-supervisions-prototype/pull/349
  - text: Prototype PR - system contacts
    href: https://github.com/ministryofjustice/hmpps-manage-supervisions-prototype/pull/351
---
{% from "figure/macro.njk" import appFigure with context %}

## User research

In research with probation practitioners we found that our [previous activity log designs](/activity-log-and-schedule/) weren’t working well:

- The information displayed still isn't as clear as it could be, in particular ensuring that the PP can see patterns of behaviour at a glance
- We know that multiple entries are made to the log each day, so we know that the date will become repetitive, and therefore reduce its value and add to cognitive load.
- Practitioners want to look at the last 2-3 contacts and be able to compare and see information together.

## Full notes in the log

In research we’ve observed 2 important needs that weren’t being met.

Practitioners want to quickly look at the notes for the 2 or 3 most recent appointments before they meet with someone, to remind themselves what has happened.

They also want to look at the full notes for multiple entries, so they an compare them.

We’ve updated the design so that:

- full notes are available from the activity log, behind a disclosure, to allow practitioners to open and compare them
- any entry with notes less than 250 characters show the full notes by default
- notes on the first 3 entries are expanded by default to make it easier to see what’s happened recently

We also discussed automatically expanding any entry with a failure to comply, but chose not to implement this feature yet.

## Grouping by day

We have removed the date label from each activity log entry, replacing it with a single title for all entries that happen on a day. This groups together a day’s events, which is especially helpful when a lot has happened.

There is also a relative date feature which will show ‘Today’ or ‘Yesterday’ rather than the date.

### Ordering

- Days are ordered newest first
- Within a day, entries are ordered oldest first, ie as you read through the day it goes from morning to evening
- If we implement pagination we should always show a full day and not split a day between pages
- We might choose to put all system generated contacts at the end of the day

## Simplifying tags

We were using tags to display:

- compliance
- RAR appointments
- national standard (NS)
- sensitive contacts

These tags could sometimes be muddled and made scanning log entries difficult. It wasn’t clear why we chose tags for some things and not others.

We’ve simplified our use of tags to represent only compliance. By placing the compliance tag in the top right of the activity box, the log can easily be scanned to look for patterns of behaviour (for example acceptable absences or failures to comply).

The other information remains available, but has been designed into other parts of the activity box.

### National standard

For national standard contacts the tag has been replaced with a line beneath the contact type, ‘National standard appointment’.

### Sensitive contacts

If a tag is sensitive we appended ‘(sensitive)’ to the end of the notes disclosure. Sensitive notes should always be hidden behind a disclosure, even if they are short.

{{ appFigure({
  title: 'A sensitive contact',
  image: {
    file: '10-sensitive-notes.png'
  }
}) }}

It’s possible for a contact to be marked as sensitive but have no notes:

{{ appFigure({
  title: 'A sensitive contact without any notes',
  image: {
    file: '11-sensitive-no-notes.png'
  }
}) }}

## Record an outcome

Now that the outcome has a default place to live in the activity box, when an outcome has not been recorded, this is where we can place the call to action to record one.

{{ appFigure({
  title: 'An appointment without a recorded outcome',
  image: {
    file: '13-outcome-not-recorded.png'
  }
}) }}

## Pulling out useful appointment details

### RAR

Probation practitioners described to us that they needed to see not only whether the appointment was RAR, but also what type of RAR session it was.

As part of simplifying the tags we removed the purple RAR tag. We instead show a summary list within the activity box to indicate that it’s a RAR session, and what type of session took place:

{{ appFigure({
  title: 'A RAR session',
  image: {
    file: '05-rar-appointment-with-rar-category.png'
  }
}) }}

### Reasons for failures to comply or absences

This summary list can be reused to pull out other important details:

When there’s:

- an acceptable absence, we show the reason
- a failure to comply, we show the type of failure and the enforcement action

{{ appFigure({
  title: 'An example failure to comply with an enforcement action',
  image: {
    file: '12-showing-enforcement-action.png'
  }
}) }}

## A visual hierarchy

Rather than treating every entry equally we’ve opted to give prominence to national standard appointments.

- National standards appointments have the full summary card styles, with grey header and a complied tag
- Communications and other types of activity appear with a simpler white box and border (ie anything that's not a national standard or system generated)
- System generated contacts have a single grey line entry

### System generated contacts

There are a lot of system generated contacts on Delius - we’ve heard these described as ‘garbage’ contacts by users.

Rather than eliminating them we are displaying them unobtrusively with the option to click through for more info.

{{ appFigure({
  title: 'System generated contacts',
  image: {
    file: '08-system-generated-contacts.png'
  }
}) }}

{% from "screenshots/macro.njk" import appScreenshots with context %}
{{ appScreenshots({
  items: [{
      text: "Activity log",
      img: { src: "01-activity-log.png" }
    }, {
      text: "Appointment with expanded notes",
      img: { src: "02-appointment-with-expanded-notes.png" }
    }, {
      text: "Communication with expanded notes",
      img: { src: "03-communication-with-expanded-notes.png" }
    }, {
      text: "Multiple entries grouped by date",
      img: { src: "04-multiple-entries-grouped-by-date.png" }
    }, {
      text: "RAR appointment with RAR category",
      img: { src: "05-rar-appointment-with-rar-category.png" }
    }, {
      text: "Other activity",
      img: { src: "06-other-activity.png" }
    }, {
      text: "Activity with short notes showing in full",
      img: { src: "07-activity-with-short-notes-showing-in-full.png" }
    }, {
      text: "System generated contacts",
      img: { src: "08-system-generated-contacts.png" }
    }, {
      text: "Record an outcome call to action",
      img: { src: "09-record-an-outcome-call-to-action.png" }
    }, {
      text: "Sensitive notes",
      img: { src: "10-sensitive-notes.png" }
    }, {
      text: "Previous design",
      img: { src: "50-previous-design.png" }
    }, {
      text: "Experimental design 1 - with notes expanded",
      img: { src: "51-experimental-design-1.png" }
    }, {
      text: "Experimental design 1 - list",
      img: { src: "52-experimental-design-2.png" }
    }, {
      text: "Experimental design 2 - with accordion",
      img: { src: "53-experimental-design-3-accordion.png" }
    }, {
      text: "Experimental design 2 - accordion notes open",
      img: { src: "54-experimental-design-4-accordion-notes-open.png" }
    }, {
      text: "Experimental design 2 - accordion details open",
      img: { src: "55-experimental-design-5-accordion-details-open.png" }
    }]
}) }}
