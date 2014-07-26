#!/usr/bin/env python
# vim: set fileencoding=utf-8 :
"""Update default settings for user's ~/.ssh/config file.

This searches through the ~/.ssh/config file looking for a section to replace

There's probably better ways of doing this as the method used here loads the
entire file in to memory.  In practice even a really large config file would
only be in the KB range.

Environment Variables
    LOGLEVEL: overrides the level specified here. Default is warning
        option: DEBUG, INFO, WARNING, ERROR, or CRITICAL

"""

from __future__ import (division, absolute_import, print_function,
                        unicode_literals)
import os
import sys
import logging
import shutil
from optparse import OptionParser


__version__ = '0.1.0-dev'


SCRIPT_DIR = os.path.abspath(os.path.dirname(__file__))


def _parse_opts(argv=None):
    """Parse the command line options.

    :param list argv: List of arguments to process. If not provided then will
        use optparse default
    :return: options,args where options is the list of specified options that
        were parsed and args is whatever arguments are left after parsing all
        options.

    """
    config_default = os.path.join(SCRIPT_DIR, 'config.ini')
    parser = OptionParser(version='%prog {}'.format(__version__))
    parser.set_defaults(
        content=os.path.join(SCRIPT_DIR, 'ssh_config_template'),
        sshconfig=os.path.join(os.path.expanduser('~'), '.ssh', 'config'),
        backup_file=os.path.join(os.path.expanduser('~'), '.ssh', 'config.bak'),
        verbose=False)
    parser.add_option(
        '-c', '--content', dest='content', metavar='FILE',
        help='insert contents of FILE in template (default: %default)')
    parser.add_option(
        '--ssh-config', dest='sshconfig', metavar='FILE',
        help='location of ssh config file (default: %default)')
    parser.add_option(
        '--backup-file', dest='backup_file', metavar='FILE',
        help='where to save backup (default: %default)')
    parser.add_option(
        '-v', '--verbose', dest='verbose', action='store_true',
        help='be more verbose (default is no)')
    (options, args) = parser.parse_args(argv)
    return options, args


def main(argv=None):
    """The main function.

    :param list argv: List of arguments passed to command line. Default is None,
        which then will translate to having it set to sys.argv.

    :return: Optionally returns a numeric exit code. If not given then will
        default to 0.
    :rtype: int

    """
    log = logging.getLogger()
    if argv is None:
        argv = sys.argv
    #(options, args) = _parse_opts(argv[1:])
    # If not using args then don't bother storing it
    options = _parse_opts(argv)[0]
    if options.verbose:
        log.setLevel(logging.DEBUG)
    with open(options.content, 'rb') as fh:
        template_content = fh.read().rstrip()
    # TODO:2014-07-25:teddy: handle file not existing and create template
    with open(options.sshconfig, 'rb') as fh:
        sshconfig = fh.read().rstrip()
    startindex = sshconfig.find("\n### BEGIN GENERATED CONTENT")
    endindex = sshconfig.find("\n### END GENERATED CONTENT")
    if startindex == -1 or endindex == -1:
        log.error('Could not find where to add data')
        return 1
    new_sshconfig = "{}\n### BEGIN GENERATED CONTENT\n{}{}".format(
        sshconfig[:startindex], template_content, sshconfig[endindex:])
    shutil.copy(options.sshconfig, options.backup_file)
    log.info('Created backup %s', options.backup_file)
    log.debug('--- contents before search and replace ---')
    log.debug(sshconfig)
    log.debug('--- contents after search and replace  ---')
    log.debug(new_sshconfig)


if __name__ == "__main__":
    loglevel = getattr(logging, os.getenv('LOGLEVEL', 'WARNING').upper())
    logformat = "%(asctime)s - %(name)s - %(levelname)s - %(message)s"
    logging.basicConfig(level=loglevel, format=logformat)
    sys.exit(main())
