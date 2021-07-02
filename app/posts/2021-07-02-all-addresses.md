---
title: All addresses
description: A page for main, other and previous addresses
date: 2021-07-02
related:
  items:
  - text: Prototype PR
    href: https://github.com/ministryofjustice/hmpps-manage-supervisions-prototype/pull/275
  - text: Trello
    href: https://trello.com/c/1M7kIglT/614-address-history
---

A follow-on to the [personal details work](/personal-details/#addresses), this design adds a page listing each address.

The personal details tab gives the main address and links to a ‘View all addresses’ page to show every other address – for example previous addresses and other current addresses, such as a secondary address or a postal address.

## Design notes

- Addresses should be ordered by start date, with the most recent start date first
- If there are no previous addresses, that section does not show
- If there are no other addresses, that section does not show
- Show a warning if there’s no main address set

{% from "screenshots/macro.njk" import appScreenshots with context %}
{{ appScreenshots({
  items: [{
      text: "All addresses page",
      img: { src: "01-all-addresses-page.png" }
    }, {
      text: "Personal details tab with more than main address",
      img: { src: "02-personal-details-tab-with-more-than-main-address.png" }
    }, {
      text: "Personal details tab with no other addresses",
      img: { src: "03-personal-details-tab-with-no-other-addresses.png" }
    }, {
      text: "No main address (personal details page)",
      img: { src: "06-no-main-address-personal-details.png" }
    }, {
      text: "No main address (address page)",
      img: { src: "05-no-main-address.png" }
    }, {
      text: "Another example addresses page",
      img: { src: "04-another-example-addresses-page.png" }
    }]
}) }}
