{% set is_open_source = cookiecutter.open_source_license != 'Not open source' -%}
{% for _ in cookiecutter.project_name %}={% endfor %}
{{ cookiecutter.project_name }}
{% for _ in cookiecutter.project_name %}={% endfor %}

{% if is_open_source %}
.. image:: https://img.shields.io/pypi/v/{{ cookiecutter.project_slug }}.svg
           :target: https://pypi.python.org/pypi/{{ cookiecutter.project_slug }}
           :alt: pypi

.. image:: https://readthedocs.org/projects/{{ cookiecutter.project_slug | replace("_", "-") }}/badge/?version=latest
           :target: https://{{ cookiecutter.project_slug | replace("_", "-") }}.readthedocs.io/en/latest/?badge=latest
           :alt: Documentation Status

.. image:: https://gitlab.com/{{ cookiecutter.gitlab_username }}/{{ cookiecutter.project_slug | replace("_", "-") }}/badges/develop/pipeline.svg
           :target: https://gitlab.com/{{ cookiecutter.gitlab_username }}/{{ cookiecutter.project_slug }}/pipelines
           :alt: pipeline status


{%- endif %}

{% if cookiecutter.add_pyup_badge == 'y' %}
.. image:: https://pyup.io/repos/github/{{ cookiecutter.github_username }}/{{ cookiecutter.project_slug }}/shield.svg
           :target: https://pyup.io/repos/github/{{ cookiecutter.github_username }}/{{ cookiecutter.project_slug }}/
           :alt: Updates
{% endif %}

{% if cookiecutter.add_coveralls_badge == 'y' %}
.. image:: https://coveralls.io/repos/github/makkus/{{ cookiecutter.project_slug }}/badge.svg?branch=develop
           :target: https://coveralls.io/github/makkus/{{ cookiecutter.project_slug }}?branch=develop
           :alt: coveralls
{% endif %}

.. image:: https://img.shields.io/badge/code%20style-black-000000.svg
           :target: https://github.com/ambv/black
           :alt: codestyle



{{ cookiecutter.project_short_description }}

{% if is_open_source %}
* License: {{ cookiecutter.open_source_license }}
* Documentation: https://{{ cookiecutter.project_slug | replace("_", "-") }}.readthedocs.io.
{% endif %}

Features
--------

* TODO
