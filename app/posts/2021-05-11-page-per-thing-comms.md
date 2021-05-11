---
title: Adding phone calls, text messages and emails
description: Using a page-per-thing pattern
date: 2021-05-11
---

Probation practitioners (PPs) need to add details of their communications with service users (SUs). We added the ability to record:

- Emails
- Text messages
- Phone calls

For each communication type we need to know:

- who sent it or made the call
- who received it
- when it was sent or made
- details of the communication (the full email or text, or a summary of the call)
- whether it contained sensitive information

## Original design

We started with a [design asking all the questions on one page](/page-per-thing-comms/#original-single-page-design) but this uncovered problems in research:

- "What time did the email arrive" isn't the right question to ask if the PP sent the email
- Who was it to, and who was it from questions were passive and could be easily misread

## Page-per-thing design

We switched to a page-per-thing design which meant we could simplify future questions and tailor the language to the current context. For example, if I sent the email, we can ask when I sent it, but I received it, we'll ask when it arrived.

If we know who made the call or sent the email, then when we ask who received it we don’t need to repeat that person in the list of options.

## Sensitive information

Once all details have been added, we ask the PP if the communication was sensitive – this is the last question as it's the point in the journey where they are most likely to have all the context they need to make the right choice.

Sensitive communications will not be shared with the service user. Service users are able to request certain details from the system, usually via an export from Delius. Sensitive communications are excluded from this export.

## Check your answers

The summary list has been expanded from a two-thirds column to full width. This makes reading and reviewing long text (for example in the communication details answer) much easier.

It comes at the cost of the Change links being a little too far to the right, which may be at risk of being missed by users that need to magnify their screen.

{% from "screenshots/macro.njk" import appScreenshots with context %}
{{ appScreenshots({
  items: [{
      text: "What are you adding?",
      img: { src: "01-what-are-you-adding.png" }
    }, {
      text: "Add other communication",
      img: { src: "02-add-other-communication.png" }
    }, {
      text: "Who made the phone call?",
      img: { src: "03-who-made-the-phone-call.png" }
    }, {
      text: "Who received the phone call?",
      img: { src: "04-who-received-the-phone-call.png" }
    }, {
      text: "When did you make the call?",
      img: { src: "05-when-did-you-make-the-call.png" }
    }, {
      text: "On another day selected",
      img: { src: "06-on-another-day-selected.png" }
    }, {
      text: "Phone call details",
      img: { src: "07-phone-call-details.png" }
    }, {
      text: "Was it sensitive?",
      img: { src: "08-was-it-sensitive.png" }
    }, {
      text: "Check your answers",
      img: { src: "09-check-your-answers.png" }
    }, {
      text: "Confirmation",
      img: { src: "10-confirmation.png" }
    }, {
      text: "Communications list showing call",
      img: { src: "11-communications-list-showing-call.png" }
    }, {
      text: "Phone call details page",
      img: { src: "12-phone-call-details-page.png" }
    }, {
      text: "Original single page design",
      img: { src: "13-original-single-page-design.png" }
    }]
}) }}
