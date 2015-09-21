``lfetool`` Command Manual
==========================


``new`` Command
---------------

For the following commands, keep in mind that Lisp functions and modules do not
use underscores by convention, but rather dashes. When naming your project,
it is recommended that you do this as well. Also note that it's probably best
to use just alphanumerica characters, dashes, and nothing else in your project
names.

The ``new`` command supports the following sub-commands:

* ``script``

* ``library``

* ``service``

* ``yaws``


``new script``
,,,,,,,,,,,,,,

To create an lfescript, simply run the following:

.. code:: shell

    $ lfetool new script my-script

``new library``
,,,,,,,,,,,,,,,

To create a "library" project, run the following:

.. code:: shell

    $ lfetool new library my-new-lib

*Note*: upon running this script, not only will your project be set up with a
skeleton, but also:

* the dependencies for your project will be downloaded to your new project's
  ``deps`` dir;

* the stubbed unit test will be run and will fail (it's stubbed to fail because
  of TDD ;-));

* the project will be set up with a newly initialized github repo; and

* the new project files will be added to the repo.


``new service``
,,,,,,,,,,,,,,,,

One may create a "service" project by running the following:

.. code:: shell

    $ lfetool new service my-new-service

This will create an LFE OTP application skeleton for your project, complete with
unit tests and an initialized git repo.

To run your new server:

.. code:: shell

    $ cd my-new-service
    $ make repl

And then:

.. code:: cl

    > (: application start 'my-new-service)
    ok
    > (: my-new-service-server test-call '"a call message")
    Call: "a call message"
    ok
    > (: my-new-service-server test-cast '"a cast message")
    ok
    Cast: "a cast message"
    >

You may also start the application ahead of time, as is done in the ``run``
target:

.. code:: cl

    $ make run
    Erlang R16B (erts-5.10.1) [source] [smp:8:8] [async-threads:10] [hipe] ...

    LFE Shell V5.10.1 (abort with ^G)
    > (: my-new-service-server test-call '"a call message")
    Call: "a call message"
    ok
    > (: my-new-service-server test-cast '"a cast message")
    ok
    Cast: "a cast message"
    >

Note that the call to start the application wasn't needed, since it was started
via a command line option in the ``Makefile``.

If you would simply like to run in daemon mode, you may do that as well with the
supplied ``daemon`` target.


``new yaws``
,,,,,,,,,,,,

The ``yaws`` command builds out a number of skeleton web projects that are
powered by the YAWS web server.

``yaws`` takes several subcommands:

* ``default`` - creates a basic, multi-module web project using the
  `exemplar`_ library for generating HTML with S-expressions.

.. XXX under development
.. * ``simple`` - creates a very simple web project with only one module.

* ``bootstrap`` - creates a `Twitter Bootsrap`_ version of the ``default``
  project.

.. XXX under development
.. * ``websocket`` - creates a project that demos YAWS websocket support via a
     simple chat deno.

.. XXX under development
   * ``rest`` - creates a RESTful service example, using the classic "coffeeshop"
     model.

Note that ``new yaws`` is an alias for ``new yaws default``; if a subcommand is not passed, the
``default`` subcommand is assumed.

Example usage:

.. code:: cl

    $ lfetool new yaws my-web-project

or

.. code:: cl

    $ lfetool new yaws default my-web-project

Another example:

.. code:: cl

    $ lfetool new yaws bootstrap my-web-project

Here is a screenshot of the lfetool demo bootstrap project:

.. image:: ../../resources/images/YAWS-LFE-Bootstrap-Exemplar-screenshot.png

After this, you can view your new project by executing these commands:

.. code:: bash

    $ cd my-web-project
    $ make dev

and then pointing your web browser at http://localhost:5099/.


``new presentation``
,,,,,,,,,,,,,,,,,,,,

One may create a "presentation" project (slide deck) by running the
following:

.. code:: shell

    $ lfetool new presentation my-slide-deck

This command will create a new project with the following deps:

* yaws
* lfe-reveal-js

Once the project has been built, do the following to try it out:

.. code:: shell

    $ cd my-slide-deck
    $ make dev

And then load up `localhost:5099`_ in your browser.


``lfetool`` only supports the Reveal.js presentation library.


``new e2service``
,,,,,,,,,,,,,,,,,

At a future date we will also support the e2 project in a similar fashion:

.. code:: shell

    $ lfetool new e2-service my-new-service


.. Links
.. -----

.. _localhost:5099: http://localhost:5099
