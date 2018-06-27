#!/usr/bin/env bash

sphinx-apidoc -f -o docs/source/ {{ cookiecutter.project_slug }}
sphinx-autobuild -p 8001 docs build/html
