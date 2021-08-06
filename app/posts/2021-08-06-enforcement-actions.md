---
title: Understanding enforcement actions
description: An iteration on breach and compliance
date: 2021-08-06
related:
  items:
  - text: Process map
    href: https://drive.google.com/file/d/1NogW6MBI82ZMEWQex27lRG1EXHJ5onfn/view?usp=sharing
  - text: Trello
    href: https://trello.com/c/PkQmPoEa/498-design-in-enforcement-actions-data-when-a-service-user-has-failed-to-comply-failed-to-attend-an-appointment
---

Following on from the [breach and compliance design sprint](/breach-design-sprint/), we needed to understand what users need in order to take enforcement action when there has been a failure.

## Enforcement action process

[Process map](https://drive.google.com/file/d/1NogW6MBI82ZMEWQex27lRG1EXHJ5onfn/view?usp=sharing)

## The failure

The process starts when the person on probation fails to comply or attend on a requirement of an order.

This may have been something the Probation Practitioner observed, something that happened with a third party provider, or something else for example failing to adhere to a curfew.

If the Probation Practitioner is directly aware of it, there won’t be any enforcement actions at this stage and they would move to the next stage of [sending a warning or immediate breach](#sending-a-warning-or-immediate-breach-for-the-failure) of the person.

If the failure is noted by a third party provider or someone else as the probation office such as a Case Administrator, they will alert the Probation Practitioner so that they can take action.

### Enforcement actions in Delius

#### Refer to Offender Manager

A workflow status used to alert the Probation Practitioner that the person on probation and failed to comply with a requirement of the order.

## Sending a warning or immediate breach for the failure

Probation Practitioners need to use their professional judgement to decide whether to:

- deem the failure as acceptable and take [no further action](#no-further-action)
- follow the standard enforcement process, which involves sending warning letters before breaching the person on probation
- immediately breach the person without any warning, as the failure is too high risk

If they choose to follow the standard process, they need to send the person on probation [a warning letter](/breach-design-sprint/#when-does-breach-happen%3F). Sometimes the Probation Practitioner will prepare and send this letter, or they will request the Case Administrator to do it.

### Enforcement actions in Delius

#### Enforcement Letter Requested

A workflow status to alert the Case Administrator to send a warning letter to the person on probation. The Case Administrator will see the alert in their Enforcement Diary if they use it. Notes on the status indicate the type of letter to send.

This applies if the person on probation has a postal or home address, which is the most common situation. However, there are cases where the person is homeless, has no fixed abode or it’s not safe to receive post, in which case this wouldn’t be used.

The status won’t always be used, as the Probation Practitioner may tell the Case Administrator another way, or may send the letter themselves.

#### Breach letter sent

A status to indicate that the Case Administrator (or Probation Practitioner) has sent the warning letter to the person on probation. This letter would also be uploaded to the Activity Log (Contact Log in Delius) as evidence.

#### Similar statuses to breach letter sent

Similar statuses exist which may be used instead depending on the probation office, which include:

- First Warning Letter Sent
- Second Warning Letter Sent
- Final Warning Letter Sent

These were intended for use with licence cases where three warnings are given, however are sometimes used on community cases

Generally speaking, breaches are for community, warnings are for licence.

- Other Enforcement Letter Sent

May be used for other failures which don’t relate to an appointment, for example not adhered to a curfew or behaviour problems.

#### Decision Pending Response from Offender

Not commonly used for community orders, but can be.

Used to tell a third party that they are waiting to hear from the person on probation, such as a third party intervention or unpaid work.

#### Immediate Breach or Recall

A status to indicate that the Probation Practitioner has made a judgement to immediately breach the person on probation without any warnings. They will provide a rationale in the notes.

## Receiving a response to the failure

The most common way that a response is received from the person on probation is a phone call or an office visit. Depending on their response to the failure, the Probation Practitioner may ask them for evidence, for example a sick note.

If a response is received, the Probation Practitioner will review it and decide whether the reason is acceptable or unacceptable.

If it’s acceptable they need to choose from a list of reasons why:

- Court or legal
- Work or employment
- Childcare or family
- Holiday or annual leave
- Medical
- Religious
- Remanded in custody
- Stood down
- Other

If it’s unacceptable and it’s the:

- first failure in 12 months, they will take [no further action](#no-further-action)
- second failure in 12 months, they will send confirmation of breach and start breach proceedings

## Sending a confirmation of breach

If there have been 2 unacceptable failures within a 12 month period, or the Probation Practitioner has made a judgement to immediately breach the person on probation, they then send the person confirmation that they are in breach.

### Enforcement actions in Delius

#### Send Confirmation of Breach

A workflow status to alert the Case Administrator to send a confirmation that the person is in breach to the person on probation.

They status won’t always be used, as the Probation Practitioner may tell the Case Administrator another way, or may send the letter themselves

#### Breach Confirmation Sent

A status to indicate that the Case Administrator (or Probation Practitioner) has sent the confirmation of breach to the person on probation. This letter would also be uploaded to the Activity Log (Contact Log in Delius) as evidence.

## Starting breach proceedings

Once the breach confirmation has been sent to the person on probation, the Probation Practitioner will initiate the breach process on Delius and compile the breach pack to send to court.

### Enforcement actions in Delius

#### Breach / Recall Initiated

The status used when the breach is initiated, which is done for every breach and/or recall.

This triggers performance measures and adds a breach flag to the case.

#### Breach Requested

A workflow status to alert the Case Administrator to add the ‘NSI’ to the event on Delius to set it up for breach.

They status won’t always be used, as the Probation Practitioner may tell the Case Administrator another way, or may add the ‘NSI’ themselves

#### Breach Request Actioned

A status to indicate the ‘NSI’ has been set up, and is ready for the breach pack to be added.

## Withdrawing the warnings and taking no further action

If the person on probation responds, depending on the response the Probation Practitioner may change the failure to be acceptable. This can be after a warning letter or after breach has started.

### Enforcement actions in Delius

#### Withdraw Warning Letter

A workflow status to alert the Case Administrator to send a withdrawal of the warning letter to the person on probation. Used when the response from the person on probation to any warning letter is deemed to be acceptable.

They status won’t always be used, as the Probation Practitioner may tell the Case Administrator another way, or may send the letter themselves

#### Withdrawal of Warning

A status to indicate that the Case Administrator (or Probation Practitioner) has sent the withdrawal of warning letter to the person on probation. This letter would also be uploaded to the Activity Log (Contact Log in Delius) as evidence.

#### No Further Action

Used if there was no response, or an unacceptable response to the first failure in a 12 month period.

The Probation Practitioner will add notes to explain why there is no further action, and upload any evidence if applicable.

Also used:

- After a withdrawal of warning letter has been sent to indicate that no further action is required
- If the person who has been breach provides an acceptable response, for example they may have been in hospital during the time the failure and warnings took place

## Next steps

For the pilot, we decided once a case is in breach it will be out of scope of the new tool. The information and actions we decided we need to include to cover the enforcement process are:

- Add detail about the enforcement action to the appointment entry on the Activity log, and the appointment detail page
- Display the breach status on the Compliance page
- Provide a way for Probation Practitioners to change an appointment outcome, which may involve linking them to Delius in the first instance
- Adding a notification banner to cases that are in breach to direct them to Delius in order to continue the breach process
