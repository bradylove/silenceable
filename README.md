# Silenceable

Silenceable is a simple gem that allows blocks of code to be easily silenced. (Enabled/Disabled)

## Installation

Add it to your Gemfile

    gem 'silenceable'

Run bundle install

    $ bundle install

## Usage
Simply use the awesome Silenceable method

    Silenceable do
      puts "This block is silenceable :)"
    end

By default this block will run. To silence it simply add a file named `.silenced` to the root of your Rails app

    $ cd root/of/rails/app
    $ touch .silenced

Any code wraped in a `Silenceable` block is now disabled

## Contributing to silenceable

* Check out the latest master to make sure the feature hasn't been implemented or the bug hasn't been fixed yet.
* Check out the issue tracker to make sure someone already hasn't requested it and/or contributed it.
* Fork the project.
* Start a feature/bugfix branch.
* Commit and push until you are happy with your contribution.
* Make sure to add tests for it. This is important so I don't break it in a future version unintentionally.
* Please try not to mess with the Rakefile, version, or history. If you want to have your own version, or is otherwise necessary, that is fine, but please isolate to its own commit so I can cherry-pick around it.

## Copyright

Copyright (c) 2012 Brady Love. See LICENSE.txt for
further details.
