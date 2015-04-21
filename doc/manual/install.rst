``lfetool`` Command Manual
==========================


``install`` Command
-------------------

The ``install`` command supports the following sub-commands:

* ``lfetool``

* ``lfe``

* ``erlang``

* ``erjang``

* ``kerl``

* ``rebar``

* ``relx``

You may also call ``./lfetool install`` without any parameters; this is an
alias for ``./lfetool install lfetool``.


``install`` or ``install lfetool``
,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,

Assuming you have downloaded ``lfetool`` to your local directory, you can
use it to install the script either to ``/usr/local/bin`` (default) or to a
path of your choosing:

.. code:: bash

    $ ./lfetool install

or, for a custom directory:

.. code:: bash

    $ ./lfetool install lfetool ~/bin/

You need to have write permissions to the given directory in order for this
command to succeed. Note that the installation procedure sets the executable
bit for the script.


``install lfe``
,,,,,,,,,,,,,,,

If you would like to install LFE system-wide, you may use the following
command to do so. This does assume that you have ``erl`` in your path.

.. code:: bash

    $ lfetool install lfe

If using ``kerl``, this will install LFE in the lib dir for whichever Erlang
install was most recently ``activate``ed by ``kerl``.

Installing LFE is really only justified if you will be running ``lfescript``-
based scripts. In general, we discourage system-wide LFE installations and
suggest using something like `rebar`_ or `erlang.mk`_ to pull your
dependencies into a project dir and running LFE from there.


``install erlang``
,,,,,,,,,,,,,,,,,,

This command is merely a convenience wrapper for the ``kerl`` tool and
assumes that you have ``kerl`` installed and in your ``$PATH``. It takes a
single parameter, the release name of Erlang:

.. code:: bash

    $ lfetool install erlang R16B03-1

This will install the given release of Erlang at ``/opt/erlang/R16B03-1``.
You can override the install dir by passing a different one:

.. code:: bash

    $ lfetool install erlang R16B03-1 /usr/local


To get a list of available releases, you can use the following:

.. code:: bash

    $ kerl list releases


``install erjang``
,,,,,,,,,,,,,,,,,,

This command will install a version of Erlang (called "Erjang") that runs on the
Java Virtual Machine:

.. code:: bash

    $ lfetool install erjang

By default, it will install the ``erjang`` directory into ``/opt/erlang``,
however this may be overridden. For instance, the following command will
result in the directory ``/usr/local/erjang`` being created and housing the
code for Erjang:

.. code:: bash

    $ lfetool install erjang /usr/local

If you do not use the ``lfetool``-standard location for your Erjang install,
you will need to make sure that your install directory is in your ``$PATH``
so that lfetool can find ``jerl``.

Note that Erjang will download a fairly recent copy of Erlang/OTP (as of now,
R16B01) and build the Erjang jar with that download.


``install kerl``
,,,,,,,,,,,,,,,,

We depend upon ``kerl`` quite heavily, and as such, we provide a means
of easily installing it:

.. code:: bash

    $ lfetool install kerl

.. code:: bash

    $ lfetool install kerl ~/bin/

``install relx``
,,,,,,,,,,,,,,,,

For building releases, we recommend `relx`_. We go so far as to provide a
command to install it:

.. code:: bash

    $ lfetool install relx

.. code:: bash

    $ lfetool install relx ~/bin/

Note that if you don't have a recent version of ``rebar`` installed, this may
fail. We have provided a ``rebar`` install command for your convenience.
After installing a new version of ``rebar`` the ``relx`` install command should
work.


``install rebar``
,,,,,,,,,,,,,,,,,

``rebar`` is a widely used tool in the Erlang community, and one that can be
used with LFE and LFE projects. Here's how you install it:

.. code:: bash

    $ lfetool install rebar

By default, it is installed into the ``bin`` dir of the currently active
version of Erlang.

.. code:: bash

    $ lfetool install rebar ~/bin/


``install mix``
,,,,,,,,,,,,,,,,

We use ``mix`` to upload project info to http://hex.pm/. Here's how you
install it:

.. code:: bash

    $ lfetool install mix

.. code:: bash

    $ lfetool install mix ~/bin/


.. Links
.. -----
.. _rebar: https://github.com/rebar/rebar
.. _erlang.mk: https://github.com/extend/erlang.mk
.. _relx: https://github.com/erlware/relx
