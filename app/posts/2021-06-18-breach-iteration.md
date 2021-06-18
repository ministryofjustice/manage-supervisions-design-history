---
title: Breach iteration
description: Different compliance states and Delius mechanisms
date: 2021-06-18
---

An iteration following our [original designs](/breach-design-sprint).

## Key changes

- Reducing the size and complexity of the ‘red box’, replacing with more of a status banner
- Creating designs for different failure to comply and breach states
- Showing appointment statistics with links to a filtered activity log, rather than a list of appointments that caused a failure to comply
- Indicating whether a failure to comply was due to unacceptable absence or behaviour
- Showing order requirements, and marking failures to comply against a requirement
- Add important order information like start date, length and previous breaches
- Also include these details on previous orders, while removing appointment count and number of failures to comply

## Research

We tested these designs with 4 practitioners over 2 days.

After the first 2 sessions we made some small changes.

When a service user has multiple failures to comply but breach hasn’t started, we didn’t explicitly say that breach proceedings hadn't started yet. We added a line to clarify.

Warning letters were added to the activity log and related to prior failures to comply, but when a user clicked to see failures from the compliance tab, the filtered view didn’t show them. We've added "Warning letters sent within the last 12 months" to the summary list, with a link to see those letters. We may also want to consider a "compliance" view of the activity log, that shows all warning letters, failures to comply, and perhaps acceptable absences.

## Breach mechanisms in Delius

### When in breach

In Delius, if a service user is in breach a yellow warning icon shows alongside the registrations (bingo balls).

'Event 4' is the event number indicating which order the breach is against.

{% from "figure/macro.njk" import appFigure with context %}
{{ appFigure({
  title: 'Delius header when service user is in breach',
  image: {
    file: 'service-user-in-breach.png',
    alt: 'A warning icon shows next to the registrations'
  }
}) }}

### Ending breach

Each order in Delius shows:

- Breached? (Yes or No)
- Failures to Comply since [date]

The number of failures to comply resets to 0 after a breach resolves, even if it's an unproven breach. Unproven breaches are rare, and are essentially a not-guilty verdict from the court.

In our designs we show counts for appointments, complied, absences and warning letters too. Each of these also resets when a breach resolves. Essentially the compliance tab starts with a clean slate.

The labels on the compliance tab now need to state "since previous breach" rather than "within 12 months". For example, a failure to comply that occurred before the breach resolved, but still within 12 months, will not be counted. Once the previous breach is older than 12 months, we might want to revert to the original label.

### Further failures to comply during breach

If more failures to comply are recorded in Delius while a breach is in progress (or an Enforcement Under Review), the failure to comply count shown on the order will not increase. When the breach is resolved the count will go back to 0.

This does not mean those failures to comply are ignored, but we haven’t heard what a practitioner might do in this scenario. (For example, do they notify the court with new details, or update the breach information pack).

### List of breach statuses

EDM means [Exceptional Delivery Model and is Covid related](https://www.justiceinspectorates.gov.uk/hmiprobation/wp-content/uploads/sites/5/2020/11/A-thematic-review-of-the-EDM-arrangements-in-probation-services-in-response-to-the-COVID-19-pandemic.pdf).

```
BRE01 – Breach Initiated
BRE02 – Breach Information Pack Requested
BRE03 – Breach Information Pack Prepared
BRE04 – Breach Report/ Information Pack Checked
BRE05 – Breach Summons Issued
BRE06 – Breach Withdrawn / de-listed
BRE07 – Breach Not Proven
BRE08 – Breach Proven - Order to Continue
BRE09 – Breach Proven - Resentenced
BRE11 – Warrant Issued
BRE12 – Warrant Executed
BRE15 – Breach Proven - SDO Imposed
BRE16 – Breach Proven - Committed to Custody
BRE17 – Breach Referral Returned to RO for Further Work
BRE18 – Breach Report/ Information Pack Checked
BRE19 – Warrant/ Summons Requested
BRE26 – Breach Suspended - EDM
BRE27 – Breach Resumed - EDM
BRE28 – Remains Suspended - EDM
BRE29 – Remains - Forward Listed - EDM
CRT15 – Remains Suspended (EDM)
CRT16 – Remains - Forward Listed (EDM)
SPG003 – Rejected - Unable to Proceed
```

{% from "screenshots/macro.njk" import appScreenshots with context %}
{{ appScreenshots({
  items: [{
      text: "Good compliance",
      img: { src: "01-good-compliance.png" }
    }, {
      text: "1 failure to comply behaviour",
      img: { src: "02-1-failure-to-comply-behaviour.png" }
    }, {
      text: "2 failures to comply, breach not started",
      img: { src: "03-2-failures-to-comply-breach-not-started.png" }
    }, {
      text: "Breach started",
      img: { src: "04-breach-started.png" }
    }, {
      text: "Breach resolved: Order continues",
      img: { src: "05-breach-resolved-order-continues.png" }
    }, {
      text: "Breach resolved: Unproven",
      img: { src: "06-breach-resolved-unproven.png" }
    }]
}) }}
