---
title: Risk to themselves iteration
description: Make it clearer what current concerns relate to
date: 2021-10-27
related:
  items:
  - text: Prototype PR
    href: https://github.com/ministryofjustice/hmpps-manage-supervisions-prototype/pull/372
---

We found that the current Risk to themselves design:

- did not adequately indicate the types of risk on the overview
- did not convey the possible immediacy of risk

On our overview we simply said, ‘Current concerns’, which might be masking a very real and present risk of suicide.

## Design changes

We’ve:

- rephrased ‘Current concerns’ to be ‘Immediate concerns’. While this might overplay the risk, it is preferable to downplaying it
- added Last updated dates to the risk headings on the overview, to help judge immediacy
- put the OASys assessment date at the bottom of each risk section, to help judge immediacy
- listed the types of concerns on the overview, so that suicide or self harm risks are present at a glance
- strengthened the language around concerns on the risk page

### Examples of language changes;

> There are concerns about suicide and self-harm
> **Immediate** concerns about suicide and self-harm

> There were concerns about suicide
> **Previous** concerns about suicide

[Full list of content changes](https://github.com/ministryofjustice/hmpps-manage-supervisions-prototype/pull/372/files#diff-5255c5753000bb50148708603a8cdfa3c8c13284dbcdf5acf60f1ae5964d844c)


{% from "screenshots/macro.njk" import appScreenshots with context %}
{{ appScreenshots({
  items: [{
      text: "Old design hiding types of concern",
      img: { src: "01-old-design-hiding-types-of-concern.png" }
    }, {
      text: "New design: With many concerns",
      img: { src: "02-with-many-concerns.png" }
    }, {
      text: "New design: With one type of concern",
      img: { src: "03-with-one-type-of-concern.png" }
    }, {
      text: "New design: With previous concerns",
      img: { src: "04-with-previous-concerns.png" }
    }, {
      text: "Updated risk tab",
      img: { src: "05-last-updated-dates-on-risk-tab.png" }
    }]
}) }}
