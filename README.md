bitcoin-atm
===========

MVP for an honour system Bitcoin ATM for spreading the Bitcoin love
around our office. Goal is to run a Rails app inside a very secure
vagrant VM that is inaccessible from the host except via non-vagrant
login credentials that are manually set.

Roadmap
-------

- Allow cash to be scanned by a bill reader.
- Use a [thermal printer](https://github.com/lazyatom/a2_printer) to
print off QR codes for new wallets.

- Allow a UI to run on localhost for easily transferring bitcoin from a
designated Bitcoin account into a designated wallet
- Allow laypersons to deposit cash

Usage
-----

    brew install jruby
    jruby -S gem install bundler
    brew tap homebrew/science
    brew install opencv
    git clone https://github.com/myplanet-experimental/bitcoin-atm.git && cd bitcoin-atm
    jruby -S bundle install
    jruby -S bundle exec ruby snippets/capture-image.rb
    # This next line doesn't yet work unless we remove rb_webcam from
    # Gemfile and run `bundle install` again. Need to figure out.
    jruby -S bundle exec ruby snippets/decode-qr.rb

Inspiration
-----------

The big inspiration for not only this project, but also the Bitcoin
interest around the Myplanet Digital office, has come from [Brewster
Kahle](https://twitter.com/brewster_kahle) the team at
[Archive.org](http://www.archive.org), who've been doing (tons of
interesting
stuff](http://blog.archive.org/2013/04/03/how-the-internet-archive-is-having-great-time-with-bitcoin/).
One of the most interesting projects was a [Bitcoin exchange cash
box](http://blog.archive.org/2013/03/05/bitcoin-to-cash-converter-box/),
which we're hoping to be able to improve on, perhaps with some hardware
and UI that can be run locally on an extra workstation.
