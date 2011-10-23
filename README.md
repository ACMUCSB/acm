ACM Website Project
===================

Resources
---------
- rubyonrails.org
- railscasts.com

HTML/CSS
----
- http://developer.mozilla.org
- http://htmldog.com
- http://cssbasics.com
- http://css-tricks.com

JavaScript
----
- http://developer.mozilla.org/en-US/learn/javascript
- http://eloquentjavascript.net/print.html

Blogs
----
- smashingmagazine.com
- webdesignerdepot.com
- uxmovement.com
- alistapart.com
- siteinspire.com

Why do this project?
--------------------

No public alternatives do what we want perfectly. Also, it's an AWESOME way to
learn about real world development and to get some great experience working on
a real project!

How to setup
------------

To run this on your local machine, you need the following --

  * ruby 1.8.+ (I recommend rvm or rbenv for ruby version management)
  * rails 3.+
  * bundler 1.0.+
  * git ([PACKAGE\_MANAGER] install git-core, etc.)
  * a text editor (I suggest vi ;], textmate on MAC, notepad++ on windows)

To receive access to the git repository (we will use github), github needs to
authenticate you so that you can actually change our master remote source tree.
For that to happen, we simply need to add your public key to the repository's
configuration on github and voila! As long as your ssh client has a reference
to that public key's complement (the private key you generated),
you'll have access. :)

It's simple to generate this keypair.
Do the following (skip first steps if you have already have a keypair)  --

  1. ssh-keygen -t rsa
  2. follow instructions of ssh-keygen command
  3. email me your public key (~/.ssh/id\_rsa.pub by default)

Then, checkout the repository (`git checkout REPO_URI` [get the URI from github])

Finally, `gem bundle` so that the appropriate 'gems' (packages) get fetched.
The files and the sources they are fetched from can be discovered in the Gemfile.

Happy hacking!

Goals
-----

    TJ -- the bootstrapper :)
    -------------------------

      * [x] "how to run the app in development"
      * [x] develop the README to contain relevant development information
      * [ ] start installing dependencies and getting some code checked in as the base

    Development setup
    -----------------

      * [ ] use agile development, have 'sprints' and two teams (UI, backend, etc)
      * [ ] test driven to allow learning a real world development pattern
      * [x] put it in a public github organizations repository
         * [ ] allow ACM members to join and contribute on there
         * [ ] use the ticketing and issue reporting
         * [x] no publishing passwords in the open! ;)
      * [ ] deploy on heroku in the beginning -- pay for dns, point acmucsb to it

    Application milestones
    ----------------------

      * [ ] separation of environments (dev, prod)
      * [ ] approach a developed code base and contribute to it, improve it
      * [ ] secure, private, and reliable communication between officers
      * [ ] allow members to submit feedback and allow officers to see and discuss it
      * [ ] allow creation of events + many methods of subscribing / unsubscribing
         * [ ] email, sms, Facebook message, etc.
      * [ ] site restrictions
         * [ ] ROLES = guests, members, officers + specific officer positions
         * [ ] expose appropriate pages + actions to specific roles
