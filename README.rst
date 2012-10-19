Vagrant Base Boxes
==================

This project is used to maintain some Veewee definition files which will allow 
us to (re)create some Vagrant boxes in order to test Salt projects. This is 
based on `Tim Dysinger's`_ work.

The simplest way I've found to have `Veewee`_ and `Vagrant`_ working without 
any glitches is by using RVM which is kind of ruby's equivalent of python's 
`virtualenv`_.

So in some quick easy steps::

  $ sudo apt-get install build-essential git-core curl
  $ curl -L get.rvm.io | bash -s stable --auto
  $ . ~/.bash_profile


By now you should have rvm installed. Let's find our which packages we need to 
install in order for ruby to work::

  $ rvm requirements


Example output::

  Requirements for Linux "Ubuntu 12.04 LTS"

  NOTE: 'ruby' represents Matz's Ruby Interpreter (MRI) (1.8.X, 1.9.X)
               This is the *original* / standard Ruby Language Interpreter
        'ree'  represents Ruby Enterprise Edition
        'rbx'  represents Rubinius

  bash >= 4.1 required
  curl is required
  git is required (>= 1.7 for ruby-head)
  patch is required (for 1.8 rubies and some ruby-head's).
  
  To install rbx and/or Ruby 1.9 head (MRI) (eg. 1.9.2-head),
  then you must install and use rvm 1.8.7 first.
  
  Additional Dependencies:
  # For Ruby / Ruby HEAD (MRI, Rubinius, & REE), install the following:
    ruby: /usr/bin/apt-get install build-essential openssl libreadline6 \
    libreadline6-dev curl git-core zlib1g zlib1g-dev libssl-dev libyaml-dev \
    libsqlite3-dev sqlite3 libxml2-dev libxslt-dev autoconf libc6-dev \
    ncurses-dev automake libtool bison subversion pkg-config

  # For JRuby, install the following:
    jruby: /usr/bin/apt-get install curl g++ openjdk-6-jre-headless
    jruby-head: /usr/bin/apt-get install ant openjdk-6-jdk

  # For IronRuby, install the following:
    ironruby: /usr/bin/apt-get install curl mono-2.0-devel


Now, for our use case::

  $ sudo apt-get install build-essential openssl libreadline6 \
  libreadline6-dev curl git-core zlib1g zlib1g-dev libssl-dev libyaml-dev \
  libsqlite3-dev sqlite3 libxml2-dev libxslt-dev autoconf libc6-dev \
  ncurses-dev automake libtool bison subversion pkg-config


Let's install ruby 1.9.3::

  rvm install 1.9.3

You will now wait for a while. Grab a coffee...
Let's check the ruby version installed and set that as the default for your 
user::

  $ ruby -v
  ruby 1.9.3p286 (2012-10-12 revision 37165) [i686-linux]
  $ rvm --default use 1.9.3-p286
  Using /home/vagrant/.rvm/gems/ruby-1.9.3-p286

Adapt the version to what you get from the first command.
Now whenever we open a new bash session for this user we’ll have Ruby available 
for us to use!

As an additional side-note: Users can, and should, use a gemset when possible 
so that they don't pollute their `default` which is what is selected when a 
gemset is not specified in either a project's `.rvmrc`, or at the command-line.


Although not quite related to Veewee and specifically our use case, if you wish 
to know a bit more of what we've done above, have some `nice reading here`_.

Once you checkout this repository, a `.rvmrc` will be at your disposal used to 
setup a gemset.


.. _virtualenv: http://www.virtualenv.org
.. _Veewee: https://github.com/jedi4ever/veewee
.. _Vagrant: http://vagrantup.com/
.. _Tim Dysinger's: https://github.com/dysinger/basebox
.. _nice reading here: http://ryanbigg.com/2010/12/ubuntu-ruby-rvm-rails-and-you/

.. vim: fenc=utf-8 spell spl=en cc=80 tw=79 fo=want sts=2 sw=2 et
