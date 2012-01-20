#!/usr/bin/env python
# vim:ts=4:sw=4:ft=python:fileencoding=utf-8
"""Python Template.

This is a template for python.

"""


import sys
import traceback


__version__ = 'alpha'


def main():
    """The main function."""
    print "hello world!"


if __name__ == "__main__":
    try:
        main()
    except KeyboardInterrupt, e:
        # Ctrl-c
        raise e
    except SystemExit, e:
        # sys.exit()
        raise e
    except Exception, e:
        print "ERROR, UNEXPECTED EXCEPTION"
        print str(e)
        traceback.print_exc()
        sys.exit(1)
    else:
        # Main function is done, exit cleanly
        sys.exit(0)

