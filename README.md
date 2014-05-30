#### This is a test app for sending timers to harvest

This is a work in progress. The basic idea is to attach this to a git post-commit hook so
right after you commit, your timer is stopped and updated with your latest commit message.

This in turn starts a new timer so the next time you commit, you automatically stop the
currently running one + add your commit message to it.

#### Setting up the post commit hook
Open up `.git/hooks/post-commit` (you might need to create it) and add these lines:

````
#!/bin/sh
#
# An example hook script that is called after a successful
# commit is made.
#
# To enable this hook, make this file executable.

ruby reap.rb
````
You will also need to set the proper permissions:

`chmod a+x .git/hooks/post-commit`

#### Setting up harvest

`gem install harvested`

Set your credentials in your ENV for now:

````
export harvest_subdomain='harvestsubdomain'
export harvest_email='your@email.com'
export harvest_password='yourpassword'
````

#### PRIORITY TODO:
1. Make this into a gem
2. Re-think auto toggling of timers?

