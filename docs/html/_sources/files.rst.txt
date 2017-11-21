Files
=====

.. contents:: :local:

Files and Scans can be uploaded. They can be linked to maps, downloaded and if it's an image the
application tries to display it.

Scans
-----

Scans (of maps) can be uploaded. Default format is tiff and jp2 but like the upload file size limit
it can be changed in the config files.

It is also possible to configure the application to use an IIIF server for display which is very
handy for large images.

Scans have an extra option to add the scan creators.

Files
-----

Also, other file resources can be uploaded, e.g. PDFs. The file type restrictions for files are much
less restrictive.

Orphans
-------

Since data storage happens over multiple servers there is always the possibility of inconsistency.
The applications checks and shows following cases in the file menu:

* Entries without a file with a link to the entry.
* Files that exist but have no related database entries with a download link.
