---
title: Personal details
description: Expanding design to be inline with Delius
date: 2021-06-25
eleventyComputed:
  eleventyNavigation:
    key: personal-details
    title: "{{ title }}"
related:
  items:
  - text: Trello
    href: https://trello.com/c/VPt5HbbH/583-displaying-addresses-and-telephone-numbers-2nd-pass
  - text: Prototype PR
    href: https://github.com/ministryofjustice/hmpps-manage-supervisions-prototype/pull/267
---

Our [original personal details design](#old-personal-details-tab) did not include all of the data available on Delius.

It was not clear if:

- data was being intentionally suppressed
- the designs had considered all the data available
- if Delius's own behaviour had been considered

## Field by field

To make decisions easier, there’s now [a field by field breakdown of what we include](/personal-details/personal-details-data) in the personal details section.

The breakdown shows:

- where the field is in Delius
- where it shows on our service
- any decisions we’ve made about that field
- being explicit if we haven’t thought much about a field yet

## Addresses
[View Delius fields](/personal-details/personal-details-data/#addresses)

Each address much have one of the following statuses:

- Main
- Previous
- Bail
- Postal
- Secondary

Addresses can have their own telephone numbers (For example consider an address for a hostel or approved premise), these are different to the numbers shown on the offender details page.

Bail addresses cannot have an end date set. Previous addresses do not need an end date.

### Main address

Main addresses are special cased in Delius – those details are shown on the offender summary. There can only be one main address at a time. Only Main addresses can set an address type.

When adding another Main address (even if putting in historic addresses, eg status Main but with an old start and end date), any current Main address will have an end date of today added to it and its status will change to Previous.

When a Main address changes to a Previous address the original address type remains, but it cannot be edited.

We also treat the main address differently – that’s the address we will show on the Personal details tab. All other addresses are shown on a separate address page (and only a summary of addresses we know about are shown on the details tab). This is also the address we should show elsewhere on the service if necessary.

{% from "figure/macro.njk" import appFigure with context %}
{{ appFigure({
  title: 'Addresses as shown on Personal details',
  caption: 'Full main address details are shown, other addresses are summarised and linked to',
  image: {
    file: '05-contact-details-with-address-expanded.png'
  }
}) }}

### No fixed abode

Practitioners can mark an address as ‘No fixed abode’, this sets all address fields as empty and generates a fake postcode of NF1 1NF.

When an address is marked as no fixed abode the address type is also shown as it gives extra context about the service user’s circumstance.

{{ appFigure({
  title: 'A main address with no fixed abode',
  image: {
    file: '06-contact-details-with-no-fixed-abode.png'
  }
}) }}

## Names
[View Delius fields](/personal-details/personal-details-data/#offender-summary-and-details)

We combine first, second, third and family name fields from Delius into a single Name. This assumes that the family name comes last. [More about capturing names](https://design-system.service.gov.uk/patterns/names/). Practitioners could also put multiple names into a single field as Delius accepts values containing spaces.

If aliases, ‘preferred names’, or ‘previous name’ are given then we show them. Multiple aliases should be separated with a line break.

Delius can only capture one previous name. Previous name is labelled as "previous surname" in the Community API. It’s not clear whether practitioners are putting in a full or partial name here.

{{ appFigure({
  title: 'Example showing all name fields',
  image: {
    file: 'names.png'
  }
}) }}

## Disabilities and adjustments
[View Delius fields](/personal-details/personal-details-data/#disabilities-and-adjustments)

On Delius practitioners can add one disability of each type. Those types are:

- Autism spectrum condition (ASC)
- Dyslexia
- Hearing difficulties
- Learning difficulties
- Learning disability
- Mental illness
- Other
- Prefer not to say
- Progressive condition
- Reduced physical capacity
- Reduced mobility
- Severe disfigurement
- Speech impairment
- Visual impairment

These types are very generic and there’s an expectation that the associated notes field is used to give details. We need to check how these notes fields are used.

Each disability has a start and an end date. The start date is required. If a disability ends (for example reduced mobility after an accident), a new disability of that type can be added.

It’s not clear how we should handle Other and ‘Prefer not to say’ yet.

Once a disability has been added a practitioner can add an adjustment. Adjustments are also categorised by type and only one adjust of each type can be added. Again, there's an expectation that the notes field will capture any necessary detail.

Each adjustment has a start and an end date. The start date is required.

{{ appFigure({
  title: 'Disabilities are summarised by type on the personal details page',
  image: {
    file: 'disabilities-summary-on-personal-details.png'
  }
}) }}

{{ appFigure({
  title: '‘None’ is shown if no disabilities are listed',
  image: {
    file: 'no-disabilities.png'
  }
}) }}

{{ appFigure({
  title: 'Disabilities and adjustments page',
  image: {
    file: '04-disabilities-and-adjustments.png'
  }
}) }}

## Equality monitoring
[View Delius fields](/personal-details/personal-details-data/#equality-monitoring)

Alongside its own fields, the equality monitoring section in Delius repeats some data from:

- disabilities and adjustments
- offender index for sex, gender identity and self-described gender
- personal circumstances for pregnancy, maternity, marriage and civil partnerships

### Preferred language

Preferred language and the need for an interpreter is captured in equality monitoring on Delius, but we consider this information important enough to promote to the personal details section.

{{ appFigure({
  title: 'Preferred language and interpreter',
  image: {
    file: '07-personal-details-with-interpreter-required.png'
  }
}) }}

### Needs around equality information

Equality monitoring information is often sensitive and in other government services this sort of information is often withheld to avoid unconscious bias.

However, for some service users there may be a need to know. For example, in cases of sexual abuse the service user’s sexual orientation is relevant to the case. Practitioners have also expressed a need to know about gender, so they know what to expect.

We've taken a mixed approach, showing some information where we think there's a need and suppressing others such as gender reassignment, nationality, immigration status and ethnicity.

We need further research in this area – we might need to show more, or we might want to suppress more. For example, sex information is often suppressed in favour of gender, but that context might be relevant to a case, equally – the more progressive gender identity fields in Delius are new and are largely empty.

Another approach might be to show nothing and point all users to Delius, creating an extra hoop to jump through for information considered sensitive.

{{ appFigure({
  title: 'Equality monitoring section',
  image: {
    file: 'equality-monitoring.png'
  }
}) }}

## Personal circumstances
[View Delius fields](/personal-details/personal-details-data/#personal-circumstances)

Each circumstance has a type and a subtype. The circumstances available to choose from are based on the provider selected in Delius.

Only 1 circumstance of each type and subtype combination can be added (or more specifically – current at once), for example I can add "General Health" with subtype "Maternity" only once. Once added those options aren't shown in the list again.

### Renewing a personal circumstance

Delius allows users to ‘Renew’ a circumstance (by clicking ‘new’). Renewing lets practitioners set an end date on the old circumstance, copy notes from that circumstance, and then asks for start date, end date, verified and notes again – but pre-fills known fields.

How this feature is used by practitioners is unknown.

### Our design

Our personal circumstances section has been removed and incorporated into the personal details section as a summary.

Full details are then shown on a separate circumstances page, much like we do with disabilities and adjustments.

Only current circumstances are summarised, ie any circumstance without an end date in the past. All circumstances are shown on the circumstances page.

There isn’t yet a design for an historic circumstance.

{{ appFigure({
  title: 'Circumstances as part of personal details section',
  image: {
    file: 'personal-circumstances.png'
  }
}) }}

{{ appFigure({
  title: 'Personal circumstances page',
  image: {
    file: '08-personal-circumstances-page.png'
  }
}) }}

{% from "screenshots/macro.njk" import appScreenshots with context %}
{{ appScreenshots({
  items: [{
      text: "Old personal details tab",
      img: { src: "01-personal-details-before-changes.png" }
    }, {
      text: "Old full personal details page",
      img: { src: "02-old-full-personal-details-page.png" }
    }, {
      text: "New personal details tab",
      img: { src: "03-new-personal-details.png" }
    }, {
      text: "Personal circumstances",
      img: { src: "08-personal-circumstances-page.png" }
    }, {
      text: "Disabilities and adjustments",
      img: { src: "04-disabilities-and-adjustments.png" }
    }, {
      text: "Contact details with main address expanded",
      img: { src: "05-contact-details-with-address-expanded.png" }
    }, {
      text: "Contact details with no fixed abode",
      img: { src: "06-contact-details-with-no-fixed-abode.png" }
    }, {
      text: "Personal details with interpreter required",
      img: { src: "07-personal-details-with-interpreter-required.png" }
    }]
}) }}
