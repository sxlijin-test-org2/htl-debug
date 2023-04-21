#!/usr/bin/env python

f = open('original-template.bzl').read()

for i in range(10000):
  open('template-%05d.bzl' % i, 'w').write("\n" * i + f)
