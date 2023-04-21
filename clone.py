#!/usr/bin/env python

f = open('template.bzl').read()

for i in range(100):
  open('template-%05d.bzl' % i, 'w').write("\n" * i + f)
