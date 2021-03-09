#!/bin/bash
comm -23 \
  <(seq 49152 65535 | sort) \
  <(ss -Htan | awk '{print $4}' | cut -d : -f2 | sort -u) |
  shuf |
  tail -n ${1:-1}
