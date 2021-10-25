---
title: Descoping RAR from arrange an appointment
description: Move RAR closer to the beginning and point users to Delius
date: 2021-10-25
related:
  items:
  - text: Prototype PR
    href: https://github.com/ministryofjustice/hmpps-manage-supervisions-prototype/pull/371
  - text: Descoping RAR from record an outcome
    href: /record-an-outcome/
---
{% from "figure/macro.njk" import appFigure with context %}

The way practitioners record RAR is complex. Practitioners do so in different ways, and [RAR is also changing](/rar-nsi/). Based on our pilot participants, we believe most RAR activities are happening via third parties, rather than in 1 to 1 sessions.

We do not expect a high volume of 1 to 1 RAR activities, making it safer for us to descope this feature.

We will still ask whether an appointment will count towards RAR, and if it will, we  direct them to Delius.

We’ve already [descoped RAR from the record an outcome journey](/record-an-outcome/).

## Design changes

- The RAR question comes immediately after the first question, ‘What type of appointment are you arranging?’
- Saying yes to RAR takes the user to the ‘Continue on Delius’ page
- Saying no to RAR takes you to the Where or When question, depending on the type of appointment

{{ appFigure({
  title: 'Arrange this appointment on Delius',
  image: {
    file: '01-continue-on-delius.png'
  }
}) }}
