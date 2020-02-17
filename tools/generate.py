#!/usr/bin/env python3

import argparse
import fileinput
import re
from typing import Dict, Iterator, Sequence, Tuple
from itertools import chain, permutations


def _all_sorted_subsets(s: Sequence[str]) -> Iterator[Tuple[str, ...]]:
    for i in range(1, len(s) + 1):
        for p in permutations(s, i):
            yield p


def syn_effects(markup: Dict[str, str]) -> Iterator[str]:
    all_effects = markup.keys()

    for effect_stack in _all_sorted_subsets(all_effects):
        name = ''.join(effect_stack)
        surround = markup[effect_stack[-1]]
        effect_set = set(effect_stack)

        remaining = sorted(all_effects - effect_set)
        substates = (f'confluence{name}{s}' for s in remaining)
        contains = chain(('@confluenceDoc', ), substates)
        if len(effect_stack) == 1:
            extra_params = f'contains={",".join(contains)}'
        else:
            extra_params = f'contains={",".join(contains)} contained'

        yield f'call s:synEffects("confluence{name}", "{surround}", "{extra_params}")'


def hi_effects(hi_groups: Sequence[str]) -> Iterator[str]:
    for effect_stack in _all_sorted_subsets(hi_groups):
        name = ''.join(effect_stack)
        canonical_name = ''.join(sorted(effect_stack))
        attrs = ','.join(e.lower() for e in effect_stack)
        if name == canonical_name:
            yield f'hi def confluence{name} term={attrs} cterm={attrs} gui={attrs}'
        else:
            yield f'hi def link confluence{name} confluence{canonical_name}'


def main():
    skip_line = False
    for line in fileinput.input(inplace=True):
        m = re.match('"\s*GENERATE END$', line)
        if m:
            skip_line = False

        if skip_line:
            continue

        print(line, end='')

        m = re.match('"\s*GENERATE SYN EFFECTS;(.*)$', line)
        if m:
            print('" XXX: The following lines are generated automatically')
            markup = dict(s.split('=') for s in m[1].strip().split())
            for l in syn_effects(markup):
                print(l)
            skip_line = True
            continue

        m = re.match('"\s*GENERATE HI EFFECTS;(.*)$', line)
        if m:
            print('" XXX: The following lines are generated automatically')
            hi_groups = [s for s in m[1].strip().split()]
            for l in hi_effects(hi_groups):
                print(l)
            skip_line = True
            continue


if __name__ == "__main__":
    main()

# vim:set et sw=2 cc=120:
