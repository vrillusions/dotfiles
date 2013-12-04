# vim:ts=4:sw=4:ft=python:fileencoding=utf-8
from __future__ import (division, absolute_import, print_function,
                        unicode_literals)
import os

from fabric.api import env, task, run

from . import puppet
from . import ssh


env.use_ssh_config = True


@task
def show_tcp_states():
    """summarizes the tcp states on specified host(s)"""
    run("netstat -ant | sed -e '1,2d' | awk '{ print $6 }' | sort | uniq -c | sort -rn")
