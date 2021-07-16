---
layout: page
title: Sentence and offences data (Events in Delius)
description: Field by field breakdown of what we do and do not include
date: 2021-07-09
---

Last updated 7 July 2021

## Event details

| Delius label | On sentence tab? |
|--|--|
| __CPS Pack Date__ | No – Not included yet, need and purpose separate from documents not understood |
| __Documents__ | Yes, as court documents, but may be moved when we look at documents |

### Event details: Referral details

| Delius label | On sentence tab? |
|--|--|
| __Referral date__ | No – Not included yet, need and purpose not understood |
| __Court__ | Yes, as 'Sentence court' in conviction section |
| __Committed to Crown Court?__ | No – No need identified yet |
| __Reports Requested?__ | No – No need identified yet |
| __Sentence date__ | Yes, in conviction section, may be removed later if no need arises |
| __Additional sentences?__ | Yes, in sentence section – might not be the right place |
| __Responsible court__ | Yes, in conviction section |

### Event details: Offence details

| Delius label | On sentence tab? |
|--|--|
| __Offence date__ | Yes, in offence section |
| __Offence count__ | Yes, alongside offence name in offence section |
| __Conviction date__ | Yes, in conviction section |
| __Main offence__ | Yes, as category in offence section, may be removed later if no need arises |
| __Offence Sub-Cat__ | Yes, as Main offence in offence section |
| __OGRS__ | No – Not included yet, need and purpose not understood, expect to add this |
| __Additional offences?__ | Yes, in offence section |
| __Notes__ | Yes, in offence section |

### Event details: Outcome details (Community order only)

| Delius label | On sentence tab? |
|--|--|
| __Order__ | Yes, in sentence section |
| __Length__ | Yes, in sentence section |
| __Default length__ | No – Suppressed unless need arises |
| __Commenced__ | Yes, as 'start date' |
| __Requirements__ | Yes |
| __Non-statutory interventions__ | No – Not included yet, need and purpose not understood |
| __Breached?__ | Not directly, we have a compliance tab |
| __Failures to comply since [date]__ | Not directly, we have a compliance tab |

### Event details: Termination details

The design accommodates showing terminated dates, reasons and notes on the sentence tab – in the same way that other data is shown, but there is not yet any broader design for when a sentence has ended.

| Delius label | On sentence tab? |
|--|--|
| __Calculated expected end date__ | Yes, in sentence section, unless there is an entered expected end date |
| __Entered expected end date__ | Yes, if provided |
| __Terminated__ (Termination date) | Yes, if provided |
| __Termination reason__ | Yes, if provided
| __Termination notes__ | These can only be given when terminating, and after terminating they do not show on the Delius UI. We should show them, if provided |
| __Release date__ | No – Not included yet |
| __Return to custody date__ | No – Not included yet |
| __Return to custody reason__ | No – Not included yet |

## Requirements

(Called "Supervision requirements" and "Post sentence supervision requirement" if released on licence)

| Delius label | On sentence tab? |
|--|--|
| __Requirement__ | Yes, as description in requirement section |
| __Requirement Subtype__ | Yes, if it does not match the requirement (ie no subtype needed), shown as description in requirement section and in details |
| __Length (Days, for RAR)__ | Yes, as description in requirement section |
| __Imposed (Sentence) Date__ | No – Suppressed unless need arises |
| __Expected start date__ | Yes, behind requirements details, unless an actual start date is given |
| __Actual start date__ | Yes, behind requirements details, if provided |
| __Provider__ | No – Suppressed unless need arises |
| __Team__ | No – Suppressed unless need arises |
| __Officer__ | No – Suppressed unless need arises |
| __Notes__ | Yes, behind requirements details |
| __Expected end date__ | Yes, unless an actual end date is given |
| __Actual end date__ | Yes, behind requirements details, if provided |
| __Termination reason__ | Yes, behind requirements details, if provided |
| __Attendance count (for RAR)__ | Yes, as progress in RAR requirement section |

## Additional sentences

| Delius label | On sentence tab? |
|--|--|
| __Additional sentence__ | Yes, in sentence section |
| __Length__ | Yes, if present, in sentence section behind details element |
| __Value__ | Yes, if present, in sentence section behind details element |
| __Notes__ | Yes, in sentence section behind details element |

## Additional offences

| Delius label | On sentence tab? |
|--|--|
| __Offence main category__ | Yes, only on offence page |
| __Offence sub category__ | Yes, summarised in offence section and on offence page |
| __Offence date__ | Yes, only on offence page |
| __Offence count__ | Yes, alongside sub category in offence section and on offence page |

## Event sections not examined

- Court appearances
- Case allocation
- Court and institutional reports
- OGRS calculation
- OASys assessments
- Order supervisor history
- Approved premises referrals
- Referrals
- Drug testing referrals
- Contact extract
- Non-statutory interventions
- Terminate event

If released on licence:

- Concurrent/consecutive custodial sentence
- Licence conditions
- Throughcare
- Cohort
