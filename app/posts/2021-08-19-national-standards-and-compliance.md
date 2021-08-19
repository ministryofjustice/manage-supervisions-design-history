---
title: National standards, compliance and activity log
description: Only national standards contact types are enforced
date: 2021-08-19
related:
  items:
  - text: Trello
    href: https://trello.com/c/wQ9vlNoP/700-weave-in-national-standard-into-activity-log-filters-and-compliance-page
  - text: Data investigation
    href: https://trello.com/c/XTJVNcn6/695-data-investigate-outcomes-recorded-against-non-national-standard-appointments
  - text: UI changes in Prototype
    href: https://github.com/ministryofjustice/hmpps-manage-supervisions-prototype/pull/334
  - text: Data changes in Prototype
    href: https://github.com/ministryofjustice/hmpps-manage-supervisions-prototype/pull/332
---

Our [compliance tab design](/breach-iteration/) shows the total number of:

- appointments
- those that were complied
- those that that had failures to comply
- acceptable absences

In our prototype we applied this to all activity. In reality the Delius data is more complex and compliance only relates to a subset of all contact types.

When we were building this design we found that the filters and counts on the activity log and the compliance view did not sum up.

## National standards (NS)

Only national standards contact types contribute to compliance. It’s only these types that are enforced.

In Delius contact types are flagged as being a national standard, and many contacts (but perhaps not all) have ‘(NS)’ appended to them, for example "Planned Office Visit (NS)" (as opposed to "Planned Office Visit (Non-NS)").

A data analysis showed a small proportion of non-NS contact types have "not complied" or "not attended" recorded against them.

## Design notes

We’ve taken a minimal approach to resolving this, and there are still outstanding questions.

- Each NS activity log entry is now labelled with a grey "National Standard (NS)" tag, on the log and on the appointment page
- Filters on the activity log are given a national standard context
- The appointments count on the compliance tab is labelled as "X national standard appointments"

We do not:

- know if practitioners recognise and understand the distinction between national standard and non-national standard contact types in Delius, especially in reference to counting towards compliance (also, they may know that national standard means something is enforceable, but the ‘NS’ reference in Delius might not be enough of an indication)
- know how practitioners will interpret the tag we’ve added
- have confidence to describe what national standard means in this context
- have confidence to describe this functionality without referring to national standards

If NS/non-NS is not understood in Delius, then there’s an increased chance that contacts are being recorded incorrectly.

{% from "screenshots/macro.njk" import appScreenshots with context %}
{{ appScreenshots({
  items: [{
      text: "Updated compliance tab",
      img: { src: "01-updated-compliance-tab.png" }
    }, {
      text: "Activity log with compliance filters",
      img: { src: "02-activity-log-with-compliance-filters.png" }
    }, {
      text: "Activity log with nothing filtered",
      img: { src: "03-activity-log-with-nothing-filtered.png" }
    }, {
      text: "Appointment page with national standard flag",
      img: { src: "04-appointment-page-with-national-standard-flag.png" }
    }]
}) }}
