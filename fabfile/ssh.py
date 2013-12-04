# vim:ts=4:sw=4:ft=python:fileencoding=utf-8
from __future__ import (division, absolute_import, print_function,
                        unicode_literals)
import os

from fabric.api import env, task, run
from fabric.contrib import files


env.use_ssh_config = True


# TODO:2013-11-25:teddy: add option to remove all existing keys first
# TODO:2013-11-25:teddy: allow specifying location
@task(alias='up')
def update_key():
    """ensures local user's ssh key is on remote server"""
    home = os.path.expanduser('~')
    with file('{0}/.ssh/id_rsa.pub'.format(home)) as f:
        pubkey = f.read().rstrip()
    if not files.exists('$HOME/.ssh'):
        run('mkdir -m 0700 $HOME/.ssh')
    files.append(text=pubkey, filename='$HOME/.ssh/authorized_keys')
    run('chmod 600 $HOME/.ssh/authorized_keys')
