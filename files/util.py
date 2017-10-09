# Copyright 2017 by ACDH. Please see the file README.md for licensing information
from mimetypes import guess_type


def get_mime_type(file_name):
    return guess_type(file_name)[0]
