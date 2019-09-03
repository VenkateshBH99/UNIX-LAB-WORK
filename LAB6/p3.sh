#!/bin/bash
sort -o ispell.dict ispell.dict &
ps
kill $!
ps
