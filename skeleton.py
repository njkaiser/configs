#!/usr/bin/env python

''' TODO add module-level docsting here. '''

import argparse
import os


def parse_args(argv=None):
    parser = argparse.ArgumentParser()
    args = parser.parse_args(argv)
    return args


def function(argument):
    ''' TODO add function-level docstring here. '''
    pass


def main(argv=None):
    args = parse_args(argv)
    function(args)


if __name__ == '__main__':
    main()
