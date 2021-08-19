---
title: Handling missing risk information
description: What we show when there’s no risk assessment or risk flags
date: 2021-08-19
related:
  items:
  - text: Prototype PR
    href: https://github.com/ministryofjustice/hmpps-manage-supervisions-prototype/pull/336
  - text: Trello
    href: https://trello.com/c/gCDCoprQ/702-design-for-risk-page-and-risk-info-when-oasys-risk-assessment-hasnt-been-done
---

It's possible for a person on probation to not have a completed OASys risk assessment. The assessment may not have been started or it might be a work in progress. The assess risks and needs API (ARN) will only return complete assessments.

When there is no assessment we will not know:

- Risk of serious harm in the community (ROSH)
- Risk of serious harm to themselves
- Any context that comes with that risk (who is at risk, nature of risk, risk imminence, previous and current concerns about risk to themselves)

When there’s no assessment we:

- show a large warning on the risk tab
- hide the risk in community and risk to themselves sections
- show a small warning on the overview tab in the risk section

It’s also possible that no risk flags have been added in Delius. In this scenario we:

- hide the risk flags table
- indicate there are no flags and point out where to add them

{% from "screenshots/macro.njk" import appScreenshots with context %}
{{ appScreenshots({
  items: [{
      text: "Risk tab: No OASys risk assessment",
      img: { src: "01-no-oasys-risk-assessment-risk-tab.png" }
    }, {
      text: "Risk tab: No risk flags",
      img: { src: "02-no-risk-flags-risk-tab.png" }
    }, {
      text: "Overview tab: No risk assessment or flags",
      img: { src: "03-no-risk-assessment-or-flags-overview-tab.png" }
    }]
}) }}
