====================
django-fernet-fields
====================

.. warning::

   **DEPRECATED — DO NOT USE THIS PACKAGE IN NEW CODE.**

   This repository is a custom fork of ``django-fernet-fields``, which has been
   unmaintained upstream for years. The fork is kept alive for exactly one
   reason: to keep existing deployments from breaking. It receives the minimum
   compatibility work needed for that and nothing else — no new features, no
   improvements, no roadmap. **It will never be developed further and will
   never become a maintained library again.**

   **You are strongly urged to migrate to a maintained library.** The
   recommended replacement is `django-fernet-encrypted-fields`_, maintained by
   `Jazzband`_::

      pip install django-fernet-encrypted-fields

   It provides equivalent Fernet-encrypted model fields under
   ``encrypted_fields.fields``: ``EncryptedCharField``, ``EncryptedTextField``,
   ``EncryptedEmailField``, ``EncryptedIntegerField``, ``EncryptedFloatField``,
   ``EncryptedBooleanField``, ``EncryptedDateTimeField`` and
   ``EncryptedJSONField``. Note that it has no counterpart for this package's
   ``EncryptedDateField``.

   Treat the switch as a real migration rather than an import swap: the import
   paths and the key configuration differ, so confirm how your existing
   ciphertext is re-encrypted before you cut over.

   **Every remaining use of this fork must be replaced.**

.. image:: https://secure.travis-ci.org/orcasgit/django-fernet-fields.png?branch=master
   :target: http://travis-ci.org/orcasgit/django-fernet-fields
   :alt: Test status
.. image:: https://coveralls.io/repos/orcasgit/django-fernet-fields/badge.png?branch=master
   :target: https://coveralls.io/r/orcasgit/django-fernet-fields
   :alt: Test coverage
.. image:: https://readthedocs.org/projects/django-fernet-fields/badge/?version=latest
   :target: https://readthedocs.org/projects/django-fernet-fields/?badge=latest
   :alt: Documentation Status
.. image:: https://badge.fury.io/py/django-fernet-fields.svg
   :target: https://pypi.python.org/pypi/django-fernet-fields
   :alt: Latest version

`Fernet`_ symmetric encryption for Django model fields, using the
`cryptography`_ library.

``django-fernet-fields`` is tested against `Django`_ 4.0 through 6.1 on
Python 3.8 through 3.13; see ``tox.ini`` for the exact combinations.

Only PostgreSQL, SQLite, and MySQL are tested, but any Django database backend
with support for ``BinaryField`` should work.

.. _django-fernet-encrypted-fields: https://github.com/jazzband/django-fernet-encrypted-fields
.. _Jazzband: https://jazzband.co/
.. _Django: http://www.djangoproject.com/
.. _Fernet: https://cryptography.io/en/latest/fernet/
.. _cryptography: https://cryptography.io/en/latest/


Getting Help
============

Documentation for django-fernet-fields is available at
https://django-fernet-fields.readthedocs.org/

This app is available on `PyPI`_ and can be installed with ``pip install
django-fernet-fields``.

.. _PyPI: https://pypi.python.org/pypi/django-fernet-fields/


Contributing
============

See the `contributing docs`_.

.. _contributing docs: https://github.com/orcasgit/django-fernet-fields/blob/master/CONTRIBUTING.rst

