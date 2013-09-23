#!/usr/bin/env python
# vim:ts=4:sw=4:ft=python:fileencoding=utf-8
"""Python Template.

This is a template for python.
NOTE: The __future__ imports that make it more v3.x ready were added in v2.6.
Thus this template will only work in python v2.6 or higher.

"""

from __future__ import absolute_import, print_function, unicode_literals
import os
import sys
import traceback
import logging


__version__ = 'alpha'


def main():
    """The main function."""
    log = logging.getLogger('main')
    log.debug('Printing hello world to screen')
    print("hello world!")


if __name__ == "__main__":
    # DEBUG, INFO, WARNING, ERROR, or CRITICAL
    # This will set log level from the environment variable LOGLEVEL or default
    # to warning. You can also just hardcode the error if this is simple.
    loglevel = getattr(logging, os.getenv('LOGLEVEL', 'WARNING').upper())
    logformat = "%(asctime)s - %(levelname)s - %(name)s - %(message)s"
    logging.basicConfig(level=loglevel, format=logformat)
    log = logging.getLogger('ifmain')
    try:
        main()
    except KeyboardInterrupt as e:
        # Ctrl-c
        log.error('Received keyboard interupt')
        raise e
    except SystemExit as e:
        # sys.exit()
        log.debug('Received sys.exit()')
        raise e
    except Exception as e:
        log.error("ERROR, UNEXPECTED EXCEPTION")
        log.error(str(e))
        log.error(traceback.format_exc())
        sys.exit(1)
    else:
        # Main function is done, exit cleanly
        sys.exit(0)

