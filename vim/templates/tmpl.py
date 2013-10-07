#!/usr/bin/env python
# vim:ts=4:sw=4:ft=python:fileencoding=utf-8
"""Python Template.

This is a template for python.
NOTE: The __future__ imports that make it more v3.x ready were added in v2.6.
Thus this template will only work in python v2.6 or higher.

For some info on documenting modules see:
http://google-styleguide.googlecode.com/svn/trunk/pyguide.html

Requirements
    Python v2.6 or higher: This is due to the importsi from future and to make
        this more compatible with version 3.x.

Environment Variables
    LOGLEVEL: overrides the level specified here. Choices are debug, info,
        warning, error, and critical. Default is warning.

"""

# Standard library imports
from __future__ import absolute_import, print_function, unicode_literals
import os
import sys
import logging
from optparse import OptionParser

# Third party imports

# Local / custom imports (stuff that's usually another file in directory)


# Follow http://semver.org/ versioning conventions
__version__ = '0.1.0-dev'


# Logger config
# DEBUG, INFO, WARNING, ERROR, or CRITICAL
# This will set log level from the environment variable LOGLEVEL or default
# to warning. You can also just hardcode the error if this is simple.
_loglevel = getattr(logging, os.getenv('LOGLEVEL', 'WARNING').upper())
_logformat = "%(asctime)s - %(levelname)s - %(name)s - %(message)s"
logging.basicConfig(level=_loglevel, format=_logformat)


def main(options=None, argv=None):
    """The main function.

    Args:
        options: Options as parsed from optparse in the conditional that calls
            main. Default is None.
        argv: List of arguments passed to command line. Default is None, which
            then will translate to having it set to sys.argv. Typically is used
            in conjuction with option and contains the information added to the
            end after all the options.

    Returns:
        Optionally returns a numeric exit code. If not 0 then assume an error
            has happened.

    """
    log = logging.getLogger()
    if argv is None:
        argv = sys.argv
    if options.verbose:
        log.setLevel(logging.DEBUG)
    log.debug('Printing hello world to screen')
    print("hello world!")


if __name__ == "__main__":
    # Called from command line so lets parse options that were sent
    parser = OptionParser(version='%prog {:1}'.format(__version__))
    parser.set_defaults(verbose=False)
    parser.add_option('-c', '--config', dest='config', metavar='FILE',
        help='Use config FILE (default: %default)', default='config.ini')
    parser.add_option('-v', '--verbose', dest='verbose', action='store_true',
        help='Be more verbose (default is no)')
    (options, args) = parser.parse_args()
    try:
        # main should only return a value instead of calling sys.exit itself
        sys.exit(main(options, args))
    # Uncomment if you need to do something if the user cancels.
    #except KeyboardInterrupt as e:
    #    # Ctrl-c
    #    log.error('Received keyboard interupt')
    #    raise e
    # This catches all "non system exiting" exceptions
    except Exception as e:
        _log.critical("ERROR, UNEXPECTED EXCEPTION")
        _log.critical(str(e), exc_info=True)
        sys.exit(1)
