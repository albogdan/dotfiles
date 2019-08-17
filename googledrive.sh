#!/bin/bash

mount | grep '/home/alex/Documents/googledrive' >/dev/null || /usr/bin/google-drive-ocamlfuse '/home/alex/Documents/googledrive'
