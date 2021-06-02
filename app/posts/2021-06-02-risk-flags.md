---
title: Risk flags
description: Creating a place for context and actions around risk flags
date: 2021-06-02
related:
  items:
  - text: Trello
    href: https://trello.com/c/WQzLKBkj/501-surfacing-the-notes-from-delius-risk-badges-bingo-balls-registrations
  - text: Risk flag guidance
    href: https://docs.google.com/document/d/1HbGy7_bU-WU_hLS_FjWiC3otxzyrSQQ2RBFkhxZ8Za4/edit
  - text: Risk flag data
    href: https://docs.google.com/spreadsheets/u/2/d/1YWiDn22gRsujF2R86geWrgvr1f3R7a85-Qyi5OO34o4/edit?usp=sharing
  - text: Prototype PR
    href: https://github.com/ministryofjustice/hmpps-manage-supervisions-prototype/pull/248
---

Until now we’ve only shown risk flags (also known as registrations or ‘bingo balls’ in Delius) at the top of the page – highlighting these risks to probation practitioners on each page.

Each risk flag also has context around it that we aren’t showing:

- when it’s added there are notes, often giving context on why it’s added, or more detail
- flags have a review date, previous reviews, and notes can be added when the flag is reviewed
- flags can be removed (‘de-registered’ in Delius), and when they are removed notes can be added too

Each note field in Delius allows up to 4,000 characters.

Example notes on flags:

- Domestic violence flag with a note saying only "victim is mother"
- Mental health flag with a very detailed note about hospital visits
- ‘De-register at termination’

## A place for risk flags

We’ve added:

- a summary of risk flag notes on the overview
- a new tab as a space for a list of current and historic risk flags
- pages for each risk flag, giving details like notes and dates and guidance around use

If a note is longer than 300 characters, we’ll truncate it and link to the full version on the flag page. (The truncation character limit should be the same as the limit used for notes on the activity log).

Actions for adding, removing and reviewing flags will likely be through Delius to begin with.

## Categories

Tags are colour coded based on 4 of the 5 existing Delius categories:

- Alerts (pink)
- Safeguarding (turquoise)
- Public protection (purple)
- Information (grey)

We are not sure what value there is in keeping these categories, if we need different categories, or no categories at all. Categories might be a symptom of having too many different risk flags.

### Colours in Delius

There are colours for risk flags in Delius (red, amber, green), but they don’t line up with categories. It's not clear how those colours were derived and what they mean. A research participant did note they would look at ‘the red ones’.

## Risk of harm

There's one Delius category we aren't surfacing:

- Risk of harm

We're instead opting to source this risk data directly from OASys. These flags can be added by probation practitioners but can also be overwritten automatically by OASys (Offender Assessment System). (Example flags are Low, Medium, High, Risk to adult).

However, we are also showing the Risk of harm indicator in the heading, before any other risk flags. These are being presented as being the same as a flag, with a link to somewhere. However that place hasn’t been designed, and Risk of harm indicators aren't shown on the Risk flags tab.

We need to decide how the Risk of harm and Risk flags sit together, for instance consolidating them behind the scenes.

### Other flags can also come from OASys

- Child concerns
- Suicide/Self Harm
- Vulnerable

## Clickable tags

We’ve added some [experimental styles](#different-flag-link-states) to make the [GOV.UK Design System tags](https://design-system.service.gov.uk/components/tag/) clickable. These styles underline the text and increase the padding to give more space to the underline. The styles work best with the new design system link styles (thicker underlines on hover).

## Not in this design

- How we handle very long lists of flags
- What we do with multiple reviews of a single flag

{% from "screenshots/macro.njk" import appScreenshots with context %}
{{ appScreenshots({
  items: [{
      text: "Overview with flags",
      img: { src: "01-overview-with-flags.png" }
    }, {
      text: "Different flag link states",
      img: { src: "02-different-flag-link-states.png" }
    }, {
      text: "Risk flags tab",
      img: { src: "03-risk-flags-page.png" }
    }, {
      text: "Risk flag detail page",
      img: { src: "04-risk-flag-page.png" }
    }]
}) }}
