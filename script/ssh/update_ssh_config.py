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

Changelog

0.2.0 - unreleased
    - create config file if doesn't exist (including parent directories)
    - sets permissions on all files it touches
0.1.0 - 2014-07-28 - Initial release

"""

from __future__ import (division, absolute_import, print_function,
                        unicode_literals)
import os
import sys
import logging
import shutil
import errno
from optparse import OptionParser


__version__ = '0.2.0-dev'


SCRIPT_DIR = os.path.abspath(os.path.dirname(__file__))


class SearchTermNotFoundError(Exception):
    pass


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
        default_config=os.path.join(SCRIPT_DIR, 'config_default'),
        sshconfig=os.path.join(os.path.expanduser('~'), '.ssh', 'config'),
        backup_file=os.path.join(os.path.expanduser('~'), '.ssh', 'config.bak'),
        file_mode=0600,
        dir_mode=0700,
        verbose=False)
    parser.add_option(
        '-c', '--content', dest='content', metavar='FILE',
        help='insert contents of FILE in template (default: %default)')
    parser.add_option(
        '--default-config', dest='default_config', metavar='FILE',
        help="use contents of FILE to initialize ssh config if one doesn't currently exist (default: %default)")
    parser.add_option(
        '--ssh-config', dest='sshconfig', metavar='FILE',
        help='location of ssh config file (default: %default)')
    parser.add_option(
        '--backup-file', dest='backup_file', metavar='FILE',
        help='where to save backup (default: %default)')
    # Using %default on these convert octal to int which looks confusing
    parser.add_option(
        '--file-mode', type='int', dest='file_mode', metavar='MODE',
        help='chmod files to this (default: 0600)')
    parser.add_option(
        '--dir-mode', type='int', dest='dir_mode', metavar='MODE',
        help='chmod directories to this (default: 0700)')
    parser.add_option(
        '-v', '--verbose', dest='verbose', action='store_true',
        help='be more verbose (default is no)')
    (options, args) = parser.parse_args(argv)
    return options, args


def _read_or_create(filename, file_template):
    """Read file or create new.

    :param string filename: Name of file to open
    :param string file_template: Name of file to use if creating new one
    :return: contents of file
    :rtype: string

    """
    log = logging.getLogger()
    try:
        with open(filename, 'rb') as fh:
            result = fh.read().rstrip()
    except IOError as exc:
        if exc.errno == errno.ENOENT:
            log.info('No ssh config found, creating new one.')
            os.makedirs(os.path.dirname(filename))
            shutil.copy(file_template, filename)
            with open(filename, 'rb') as fh:
                result = fh.read().rstrip()
        else:
            raise
    return result


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
    options = _parse_opts(argv)[0]
    if options.verbose:
        log.setLevel(logging.DEBUG)
    with open(options.content, 'rb') as fh:
        template_content = fh.read().rstrip()
    sshconfig = _read_or_create(options.sshconfig, options.default_config)
    sshconfig = sshconfig.rstrip()
    startindex = sshconfig.find("\n### BEGIN GENERATED CONTENT")
    endindex = sshconfig.find("\n### END GENERATED CONTENT")
    if startindex == -1 or endindex == -1:
        raise SearchTermNotFoundError('See config_default for values')
    new_sshconfig = "{}\n### BEGIN GENERATED CONTENT\n{}{}\n".format(
        sshconfig[:startindex], template_content, sshconfig[endindex:])
    shutil.copy(options.sshconfig, options.backup_file)
    log.info('Created backup %s', options.backup_file)
    with open(options.sshconfig, 'wb') as fh:
        fh.write(new_sshconfig)
    log.info('Updated %s', options.sshconfig)
    os.chmod(os.path.dirname(options.sshconfig), options.dir_mode)
    os.chmod(options.sshconfig, options.file_mode)
    os.chmod(options.backup_file, options.file_mode)
    log.info('Fixed permissions')
    log.debug('--- contents before search and replace ---')
    log.debug(sshconfig)
    log.debug('--- contents after search and replace  ---')
    log.debug(new_sshconfig)
    print("Finished updating {}. Have a nice day!".format(options.sshconfig))


if __name__ == "__main__":
    loglevel = getattr(logging, os.getenv('LOGLEVEL', 'WARNING').upper())
    logformat = "%(asctime)s - %(name)s - %(levelname)s - %(message)s"
    logging.basicConfig(level=loglevel, format=logformat)
    sys.exit(main())
