---
title: What needs to be editable, how complex will that be?
description: An audit of the fields we show on the service and the effort and complexity in making them editable
date: 2021-11-24
---

<style>
.app-prose table {
  margin-top: 0;
}

.app-prose table th:first-child {
  width: 150px;
}
</style>

What needs to be editable, and how complex that would be. This audit only covers fields we’ve decided to include in our current designs.

## Personal details

### Contact details

| Type | Details | Size |
|--|--|--|
| Phone&nbsp;numbers | There’s more than 1 number:<br />A telephone and a mobile | M |
| Email | Could be multiple email addresses. Need ability to remove | S |
| Main address | Address plus type, dates, verification and notes – also needs logic to remove any existing Main address (unless Delius does that for us) | L |
| Other addresses | Same as main address | L |

### Personal details

| Type | Details | Size |
|--|--|--|
| Name | Needs to be edited as first, second, third and surname. Any policy around name changes? How do name changes cascade to other systems? Does that matter? | M-L |
| Date of birth | Standard date fields. Does this need to cascade and what's the policy? | M |
| Preferred name | Single field. Needs ability to remove and a way to add if none | S |
| Previous name | Single field. Needs ability to remove and a way to add if none | S |
| Aliases | Add and edit individually in Delius – each has first, second, third and surname. Optional date of birth. Gender required in Delius but we do not currently show. Needs ability to remove and way to add if none. | L |
| PNC | Add or edit, validation could be complex | M |
| CRN | Cannot edit | X |

### Equality monitoring

| Type | Details | Size |
|--|--|--|
| Religion or belief | Probably an autocomplete of options used by Delius | S |
| Sex | Male or female radio | M |
| Gender identity | Radios matching Delius labels. Needs ability to remove and a way to add if none | M |
| Self-described gender | As part of the gender identity screen. Might want to group all sex/gender fields together somehow | M |
| Sexual orientation | A set of radio options matching Delius - perhaps with different labels. Needs ability to remove and a way to add if none | S |

### Circumstances (L)

Circumstances are added and edited individually. We’ll need a wizard to walkthrough adding a circumstance. We’ll also need to understand the needs around the required fields Provider and Status Verified.

Once we have the walkthrough for adding, the edit screens will probably reuse the individual pages from that journey. The type and subtype cannot be updated.

Delius has a new/renew feature to copy a previous circumstance, with the option of copying notes. We need to consider if we’ll have something similar.

We also need to think about removing/setting end dates.

### Disabilities and adjustments (L)

Similar to circumstances, these too will probably need a wizard to walkthrough adding. We should consider the guidance for the notes practitioners add when they’re adding a disability or adjustment.

The type of disability and adjustment cannot be edited once added. We should also consider a remove feature that sets an end date behind the scenes – unless deletion is actually possible.

Delius limits practitioners to one disability of each type, and one adjustment of each type per disability.

### Contacts (L)

We should consider a journey for adding a contact (Title and gender are required fields). However we can probably start small with individual screens for editing aspects of a contact.

| Type | Details | Size |
|--|--|--|
| Relationship type | Set of radio options | S |
| Relationship | Free text, might want to join with type or use radios for common options | M |
| Name | Edit as first name, other names and surname | S |
| Address | Single page with standard address fields | S |
| Phone numbers | Mobile and telephone. Needs a way to add if missing | S |
| Email address | Free text. Needs a way to add if missing | S |
| Notes | Same notes process as already designed for appointments | S |

## Risk

Changes to ROSH and Risk to themselves through our service are currently out of scope as.

### Risk flags (L)

We’ll need a journey for adding a risk flag. After adding the risk flag it cannot then be edited, but notes can still be added. Our journey would need to consider guidance around adding notes.

We may also want to consider a journey for reviewing flags and updating reviews of flags.

## Sentence

We need to understand the needs around adding sentences (events in Delius), changing sentence details and adding or changing sentence requirements. Are these features that our probation practitioners use in Delius? (For example – they may be set by a court then never edited).

End dates are a likely thing for practitioners to update.

We could probably make notes addable where appropriate.

## Activity log and schedule

We’ll need a journey for rescheduling an appointment. This will probably reuse most of the existing screens.

We haven't considered what editing or adding other types of Delius contact will look like.

### Appointment

| Type | Details | Size |
|--|--|--|
| Notes | Done | X |
| Sensitive | Done | X |
| Enforcement action | Done | X |
| Outcome | Done | X |
| Location | Show users the location page from the arrange appointment journey | S |
| RAR toolkit user | Show users the page of RAR toolkits. It might not be possible to change this in Delius without removing and re-creating the contact | S-M |
