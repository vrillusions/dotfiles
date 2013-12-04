# vim:ts=4:sw=4:ft=python:fileencoding=utf-8
from __future__ import (division, absolute_import, print_function,
                        unicode_literals)

from fabric.api import env, task, sudo


@task
def run_agent():
    """manually run the puppet agent on server"""
    sudo('puppet agent --onetime')
