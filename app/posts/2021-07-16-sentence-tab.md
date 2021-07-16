---
title: Sentence tab
description: Making a place for all sentence and offence information
date: 2021-07-16
related:
  items:
  - text: Prototype PR
    href: https://github.com/ministryofjustice/hmpps-manage-supervisions-prototype/pull/282
  - text: Prototype PR 2
    href: https://github.com/ministryofjustice/hmpps-manage-supervisions-prototype/pull/284
  - text: Trello
    href: https://trello.com/c/XIUJ5wbX/617-reconcile-sentence-page-designs-with-ndelius-data
---

Much like the personal details and risk work, our sentence tab did not include all of the relevant data available on Delius.

It was not clear if:

- data was being intentionally suppressed
- the designs had considered all the data available
- if Delius's own behaviour had been considered

## Field by field

To make decisions easier, there’s now [a field by field breakdown of what we include](/sentence-data) in the sentence section.

The breakdown shows:

- where the field is in Delius
- where it shows on our service
- any decisions we’ve made about that field
- being explicit if we haven’t thought much about a field yet

## Overall order

The sections on the sentence tab are largely ordered chronologically, ie an offence is committed, the service user is convicted, then sentenced, and then they must meet the requirements of their sentence:

1. Offence
2. Conviction
3. Sentence and requirements
4. Probation history

## Offence section

View Delius fields for:
- [Main offence](/sentence-data/#event-details%3A-offence-details)
- [Additional offences](/sentence-data/#additional-offences)

The main offence is shown (The Delius Subcategory is shown as the Main offence, and the Main category as Category), with a list of additional offences at the bottom.

For each additional offence we list the subcategory (ie the part of the offence with the most detail), and use a link to an Offences page to show the full details. When there are no additional offences, we explicitly say ‘No additional offences’. When there’s more than 1 additional offence the list is numbered to improve readability.

Typically we’d use a details pattern to show further offence detail (like with sentences and requirements), but as the text for each offence can be long, the details elements become unwieldy and hard to read. Instead we're deferring full details onto an [Offences page](/sentence-tab/#offences-page).

## Conviction

We’ve renamed ‘Court’ to ‘Sentencing court’ to distinguish from ‘Responsible court’. We need to check this is always correct.

These two courts are often the same, if they are the same we still show both rows. We might want to improve the design of this later to avoid repetition.

## Additional sentences

[View Delius fields](/sentence-data/#additional-sentences)

We are currently listing all additional sentences within the sentence section. This might not be correct – it’s not currently clear how additional sentences relate to an order. Putting additional sentences alongside the sentence may suggest a relationship that does not actually exist. For example the additional sentences may be [civil or ancillary orders](https://www.cps.gov.uk/legal-guidance/sentencing-ancillary-orders). [More details in Slack thread](https://mojdt.slack.com/archives/C01CCRVJB9C/p1626265608095100?thread_ts=1626261067.085800&cid=C01CCRVJB9C)

Probation practitioners will want to know about sentences that are civil in nature, but they do not supervise them.

These details will be entered into Delius by the court, and not by a probation practitioner.

{% from "figure/macro.njk" import appFigure with context %}
{{ appFigure({
  title: 'Examples of additional sentences',
  image: {
    file: 'types-of-additional-sentences.png'
  }
}) }}

Each additional sentence can have a length and/or a value. These fields have no corresponding units. Those filling in this detail sometimes use the notes to give the units, for example value is 90, and in the notes it says ‘£90’.

For safety we will list any value, length or notes present – we can’t depend on notes always giving the right context about the values or lengths.

When we’re working with real data we might be able to clean some of this up with a few simple rules – for example if a note is frequently in the format `£XX`, with no further context, we could do the hardwork to show the right thing.

## Requirements

[View Delius fields](/sentence-data/#requirements)

We list all requirements of an order within the sentence section, with each requirement having its own data – such as notes and start dates.

We try to surface as much relevant information upfront in the description as we can – for example the type, subtype and any values. For example, "150 hours unpaid work" rather than just "Unpaid work".

{% from "figure/macro.njk" import appFigure with context %}
{{ appFigure({
  title: 'Examples of requirement descriptions',
  image: {
    file: 'types-of-requirements.png'
  }
}) }}

{% from "screenshots/macro.njk" import appScreenshots with context %}
{{ appScreenshots({
  items: [{
      text: "Sentence tab",
      img: { src: "01-sentence-tab.png" }
    }, {
      text: "Sentence with additional sentences",
      img: { src: "02-sentence-with-additional-sentences.png" }
    }, {
      text: "Sentence with additional offences",
      img: { src: "03-sentence-with-additional-offences.png" }
    }, {
      text: "Offences page",
      img: { src: "04-offences-page.png" }
    }, {
      text: "Old sentence tab",
      img: { src: "old-sentence-tab.png" }
    }, {
      text: "Types of additional sentences",
      img: { src: "types-of-additional-sentences.png" }
    }, {
      text: "Types of requirements",
      img: { src: "types-of-requirements.png" }
    }]
}) }}
