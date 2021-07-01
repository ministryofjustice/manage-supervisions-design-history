---
title: Personal contacts
description: A page for each personal contact
date: 2021-07-01
related:
  items:
  - text: Prototype PR
    href: https://github.com/ministryofjustice/hmpps-manage-supervisions-prototype/pull/272
---

A follow-up to the [personal details work](/personal-details), this design adds a page for each personal contact.

[View Delius fields](/personal-details/personal-details-data/#personal-contacts)

We're not showing the following personal contact details unless a clear user need arises:

- title
- gender
- previous surname

## Personal and professional contacts

In Delius’s ‘Personal contacts’ section there are both professional and personal contacts. Though it is not an exhaustive list of professional contacts – former practitioners and police contacts won’t be listed here.

They are categorised by relationship type:

- Case administrator
- Child - disclosable information only
- Co-defendant
- Emergency contact
- Family member
- GP
- Next of kin
- Other personal contact
- Other professional contact
- Personal advisor
- Social worker
- Solicitor/Lawyer

We could categorise these types and show professional contacts elsewhere. For now all are listed on the personal details tab.

## Start and end dates

It’s possible for a personal contact to have a start and end date (neither are required) – for example a previous social worker or an old GP.

It looks like you cannot remove a personal contact from Delius, so it’s likely that end dates are used to say ‘this is not current’.

We might want to not show any personal contact with an end date, or alternatively display them differently.

{% from "screenshots/macro.njk" import appScreenshots with context %}
{{ appScreenshots({
  items: [{
      text: "Links to contacts from personal details tab",
      img: { src: "01-links-to-contacts-from-personal-details-tab.png" }
    }, {
      text: "Personal contact page",
      img: { src: "02-personal-contact-page.png" }
    }, {
      text: "Another personal contact",
      img: { src: "03-another-personal-contact.png" }
    }]
}) }}
