> [!WARNING]
> The application code is currently being revised and is not yet ready for production.

# About

Diauma is a web application to manage maps and associated data for the project:

Austrian Dialect Cartography 1924–1956: Digitalisation Contextualisation and
Visualisation: https://www.oeaw.ac.at/acdh/projects/austrian-dialect-cartography

It is a Django 1.11 web application, written in Python 3, developed at the
Austrian Centre for Digital Humanities and Cultural Heritage (ACDH-CH ) and
based on the Cremation Bronze Age Burials application (CBAB) project.

# Licensing

All code unless otherwise noted is licensed under the terms of the MIT License
(MIT). Please refer to the file COPYING in the root directory of this
repository.

All documentation and images unless otherwise noted are licensed under the
terms of Creative Commons Attribution-ShareAlike 4.0 International License.
To view a copy of this license, visit
https://creativecommons.org/licenses/by-sa/4.0/

# Install

### Required Software

To install the required libraries execute:

    pip install -r requirements.txt


### Configuration Files

* Sensitive information is handled via environment varibles. 
* e.g. run `set_env_variables.sh` to expose varibales from `default.env`



# Tests

Installation of required modules:

    pip install -r requirements_test.txt

Run tests with HTML coverage report:

    coverage run manage.py test -v 2
    coverage report
    coverage html

The report will be available at: htmlcov/index.html
