---
title: Breach and compliance design sprint
description: A week looking at the breach and compliance journeys
date: 2021-06-11
related:
  items:
  - text: Google Slides prototyping
    href: https://docs.google.com/presentation/d/1FGuuW2cwO-mqULHIA1suTzK9Azo_V4PXlyTIzK25nys/edit
  - text: Prototype sketches
    href: https://github.com/ministryofjustice/hmpps-manage-supervisions-prototype/pull/261
  - text: Relevant Miro links
    href: https://docs.google.com/presentation/d/1FGuuW2cwO-mqULHIA1suTzK9Azo_V4PXlyTIzK25nys/edit#slide=id.gdfa87d827c_0_0
---

From June 7 to June 11 the team ran a design sprint to begin looking at breach. Currently we have no way of showing where a service user is in the breach process.

## Breach

Breach
: A breach of a requirement of an order

Order
: Community order, Suspended sentence order, Licence or post sentence supervision

Recall
: When someone is recalled to prison (only on licence)

## When does breach happen?

Breach must happen when there have been 2 failures to comply within a 12 month period. For all orders, practitioners can also use their professional judgement to breach on the first failure to comply, for example if the failure is very serious.

As a result of breaching someone on a suspended sentence the court may rule to enact the custodial part of the sentence.

Service users (SUs) must receive a written warning, a warning letter, after a failure to comply. These letters aren’t automated. They have an opportunity to give evidence, or a reasonable excuse, about why their failure to comply was acceptable. They have 7 days to respond. An appointment is sometimes scheduled with the SU to respond to this.

Practitioners have 10 working days to prepare a breach information pack to submit to court. These documents take a long time to prepare, meaning practitioners usually begin prepping this pack before the SUs 7 day window is up.

## Breach journey

{% from "figure/macro.njk" import appFigure with context %}
{{ appFigure({
  title: 'Breaching a service user on a community order',
  caption: 'Stages, touch points and pain points of the journey from conditions leading to breach, through to court and what a breach leads to.',
  image: {
    file: 'breaching-su-community-order.png',
    alt: 'Stages, touch points and pain points of the journey from conditions leading to breach, through to court and what a breach leads to'
  }
}) }}

## What we did

Monday
: Kick-off, context setting, deciding which part of the problem to tackle

Tuesday
: Collaborative sketching in Miro

Wednesday
: [Collaborative sketching in Google Slides](https://docs.google.com/presentation/d/1FGuuW2cwO-mqULHIA1suTzK9Azo_V4PXlyTIzK25nys/edit) ([Round 1](#round-1-sketches-1))

Thursday
: High fidelity prototype for initial feedback from subject matter experts (SMEs)
([Compliance tab](#compliance-tab) and [Round 2](#round-2-sketches-1))

Friday
: 2 further SME feedback sessions and co-analysis

## Deciding what to tackle

We started by looking at ‘creating a space for breach’, something that would capture information at the right time, automate as much as possible and surface information from court, with clear actions and clear dates.

We quickly re-scoped – breach would continue to happen within Delius, and instead we’d focus on showing the right information to practitioners – focussing on compliance, to help them start a breach when necessary.

## Feedback and findings from subject matter experts (SMEs)

We showed the new compliance tab to 3 SMEs. They only saw a screenshot, so without interaction there were some queries that might have been otherwise answered by clicking around.

‘Compliance’ was the right name for the tab, and it was "more positive" than something like enforcement.

SMEs talked a lot about looking for a pattern of compliance, and needing to take a holistic approach.

### Warning letters

SMEs liked having a prompt to send a warning letter. Practitioners have trouble sending out the letter in time.

It would be useful to generate the letter and automate sending it.

In reality this prompt may appear elsewhere in the service, for example in the journey where a practitioner records a failure to comply.

We also need to do explore how warning letters are recorded in Delius, and also how they are resolved.

### Red box

The information we show here isn’t quite right.

Failures to comply need to be 2 within the last 12 months, even though these were 12 month orders, this wasn’t clear.

The appointments shown were the ones leading to the failure to comply, but that wasn't always obvious.

Practitioners want a holistic view, to look for patterns of behaviour. We found that different information about appointments would be useful:

- was it a failure to attend or failure to comply, for example was it something behavioural
- were they RAR appointments

The number of appointments offered and attended wasn’t clear enough.

### Showing orders

We show two concurrent orders, one after the other. It wasn't always obvious these were different orders. One user thought they were the same order at different times.

They expected to see the order requirements, and failures to comply to be split by requirement. For example unpaid work or RAR requirements.

> "It says 3 months elapsed, but I'm used to seeing the date"

SMEs were used to seeing the start date, and the term "elapsed" caused confusion.

This information is also available on the Sentence tab, there's a question about where this information should live, and if it should be repeated here. And equally if compliance should show on the Sentence page. Or is this a symptom of testing a static design?

### Post-breach

We asked how they'd expect this page to change once a breach had been resolved. They expected it to "calm down", and use neutral colours again.

### Positive engagement

The design was intentionally minimal, and focused mostly on the failure state. We asked SMEs about the need for including more positive information, such as engagement rates.

> There's not always enough emphasis on the positive, it would be helpful to have a visual of that

> It's about looking at the individual as a whole rather then just compliance

The page should be balanced. Showing clearer attendance stats could help.

### Previous orders

We give too much detail about number of appointments and failures to comply, really only need to know if there were breaches and what they led to.

There's missing information too, we should also show:

- order start dates
- order status, such as completed or revoked and re-sentenced

There's an open question about how many previous orders we show – what's relevant will depend on the service user – an order 2 years ago, but with a gap in-between might not be relevant, but an order 3 years ago with many overlapping orders in-between could still be relevant to current compliance.

{% from "screenshots/macro.njk" import appScreenshots with context %}
{{ appScreenshots({
  items: [{
      text: "Compliance tab",
      img: { src: "01-compliance-tab.png" },
      caption: 'This is the design we presented to subject matter experts at the end of the week'
    }, {
      text: "Pre–round sketch – Active breach progress",
      img: { src: "40-pre-round-sketch-active-breach-progress.png" }
    }, {
      text: "Pre–round sketch – Breach tab",
      img: { src: "40-pre-round-sketch-breach-tab.png" }
    }, {
      text: "Initial Miro sketches",
      img: { src: "initial-miro-sketches.png" }
    }, {
      text: "Round 2 sketches – 1",
      img: { src: "30-round-2-sketches-01.png" }
    }, {
      text: "Round 2 sketches – 2",
      img: { src: "30-round-2-sketches-02.png" }
    }, {
      text: "Round 2 sketches – 3",
      img: { src: "30-round-2-sketches-03.png" }
    }, {
      text: "Round 2 sketches – 4",
      img: { src: "30-round-2-sketches-04.png" }
    }, {
      text: "Round 2 sketches – 5",
      img: { src: "30-round-2-sketches-05.png" }
    }, {
      text: "Round 2 sketches – 6",
      img: { src: "30-round-2-sketches-06.png" }
    }, {
      text: "Round 1 sketches – 1",
      img: { src: "40-round-1-sketches-01.png" }
    }, {
      text: "Round 1 sketches – 2",
      img: { src: "40-round-1-sketches-02.png" }
    }, {
      text: "Round 1 sketches – 3",
      img: { src: "40-round-1-sketches-03.png" }
    }, {
      text: "Round 1 sketches – 4",
      img: { src: "40-round-1-sketches-04.png" }
    }]
}) }}
