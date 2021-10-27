---
title: Pick a location
description: Changes to the ‘Where will the appointment be’ page
date: 2021-10-27
---

In Delius the following scenarios are possible when arranging an appointment:

- a location is required
- a location is optional
- a location is optional, but not appropriate for the contact type
- no location is needed
- the user has no locations they can choose from

In our designs we accommodated:

- a required location for office visits or ‘other’ appointment types
- skipping asking locations for phone, video and home visit appointments

If a user had no locations our service wouldn’t let them continue. They could not pick a location and validation prevented them from continuing.

## A user with no locations

In this scenario we must always skip the location screen. The location will be empty on Delius.

## When a location is optional, but not appropriate

An example of this might be a phone call. On Delius a user could say that a planned telephone contact has a location.

We are choosing to persist with our current design that has tested well with users – we will not ask for any location for phone, video or home visits. Users will not see the screen and the location will be empty in Delius.

If a need arises through research or support we will reassess.

We might want to categorise other contact types as not needing a location too.

## When a location is optional and is appropriate

An example of this is ‘Appointment with External Agency’ – that might be in a location, or it could be remote or on the phone. Or the location might simply not be in the list of available locations.

In this scenario we will:

- ask the user to pick a location
- show a list of all locations
- include an option for ‘None of the above’ at the end

### None of the above

We originally considered asking a qualifying question, ‘Will this appointment need a location?’, with Yes or No answers. But we found that you need to see the list of locations to know how to answer that.

The original MVP added ‘No location’ to the end of the list of locations. But that is also inaccurate – an appointment might have a location, but it might not be one of those listed.

We’ve favoured ‘None of the above’ over ‘No location’, or ‘Do not set a location’. This sidesteps any questions about needing or not needing a location, or declaring there's no location when actually there is one it's just not in the list. It becomes a simple way of saying, ‘not one of these’.

Picking None of the above leads to the location being empty on Delius.

{% from "figure/macro.njk" import appFigure with context %}
{{ appFigure({
  title: 'Pick a location (location is optional)',
  image: {
    file: '01-pick-a-location.png'
  }
}) }}

## When a location is required

Some contact types require a location, `"requiresLocation": "Y"`.

In this scenario we show the same screen without the ‘None of the above’ option.

{{ appFigure({
  title: 'Pick a location (location is required)',
  image: {
    file: '02-pick-a-location-required.png'
  }
}) }}
