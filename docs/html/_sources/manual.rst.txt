Manual
======


Diauma is a web application to manage maps and associated data.

In the menu you'll find the main entities: Map, Reference, Person, Institute and Place which
are described in detail below.

Fields marked with an * are mandatory

.. toctree::
   :maxdepth: 1

   map
   reference
   person
   institute
   place
   files


Types
=====

Types are used to track information which entities have in common. E.g. there is a type "Features"
for maps which can include items like "Legend", "Stamp" and so on. They are hierarchic, meaning the
type "Stamp" can have sub types e.g. 'Royal stamp' and 'Unknown stamp'. Also it is possible the
select multiple types so a map can feature a "Royal stamp" and an "Unknown stamp".

Existing type hierarchies can be edited and extended by every user but can only be deleted, if they
have no subtypes and no associated entries.

Admins can add new type hierarchies in the backend.

