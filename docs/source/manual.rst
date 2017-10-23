Manual
******

.. contents::

Diauma is a web application to manage maps and associated data.

In the menu you'll find the main entities: Map, Reference, Person, Institute and Place which
are described in detail below.

Fields marked with an * are mandatory


Map
===
These are the core elements of the application, a map can have following information:

Name *
------
The name is used for display in tables and can be searched.

Map id
------
This field can be used for an unique identifier.

Title
-----
This field can be used for the whole title e.g. in case there was chosen a shorter <b>Name</b> for display.

Scale
-----
If known the scale of the map can be entered here.

Width and height
----------------
These values are for the physical dimensions of a map. The default is in centimeter.

Date created
------------
The date when the map was created. Either only the first value is used or you can enter a time span
using the second field, too.

Date content
------------
The date of the map content. Either only the first value is used or you can enter a time span
using the second field, too.

Info
----
Additional information can be entered here.

Types
-----
Please see <a href="#type">Types</a> for more information.

Has base map------------

You can chose one existing map which this map is based on.

Is copy of
----------
If this map is a copy you can chose one existing map as the original.

Created by
----------
Multiple <a href="#person">Persons</a> can entered as creator of the map.
<h3>Issued at, Has current location

You can select a <a href="#place">Place</a> where the map was issued and where the map is currently located.

Published by
------------
Multiple <a href="#institute">Institutes</a> which participated in publishing the map can be selected.

Referenced by
-------------
Multiple <a href="#reference">References</a> which the map is part of can be selected.

Reference
=========

References are collection of maps e.g. an atlas or an scientific anthology.
<h3>Name *
The name is used for display in tables and can be searched.
<h3>Info
Additional information can be entered here.
<h3>Types
Please see <a href="#type">Types</a> for more information.

Person
======

Persons can be chosen as a creator of a map.
<h3>Name *
The name is used for display in tables and can be searched.
<h3>Info
Additional information can be entered here.
<h3>Person location
A <a href="#place">Place</a> can be chosen as the main location of a person
<h3>Person institutes
Multiple <a href="#institute">Institutes</a> that the person is associated with can be selected.
<h3>Types
Please see <a href="#type">Types</a> for more information.

Institute
=========

Institutes can be the publisher of maps.
Also <a href="#person">Persons</a> can be associated with institutions.

<h3>Name *
The name is used for display in tables and can be searched.
<h3>Info
Additional information can be entered here.
<h3>Institute location
A <a href="#place">Place</a> can be chosen as location of an institute
<h3>Types
Please see <a href="#type">Types</a> for more information.

Place
=====

Places can be the location of <a href="#institute">Institutes</a>, <a href="#person">Persons</a> and maps.

<h3>Name *
The name is used for display in tables and can be searched.
<h3>Info
Additional information can be entered here.
<h3>Types
Please see <a href="#type">Types</a> for more information.

Types
=====

Types are used to track information which entities have in common. E.g. there is a type "Features" for maps
which can include items like "Legend", "Stamp" and so on. They are hierarchic, meaning the type "Stamp"
can have sub types e.g. 'Royal stamp' and 'Unknown stamp'. Also it is possible the select multiple types
so a map can feature a "Royal stamp" and an "Unknown stamp".

Existing type hierarchies can be edited and extended by every user but can only be deleted, if they have
no subtypes and no associated entries.

Admins can add new type hierarchies in the backend.
