# Compare syntax of programming languages

The web app provides side-by-side examples of syntax differences between programming languages. You can use it as a cheatsheet or as a learning material to learn one of them through another. Creating these examples I tried to use the most used and the cleanest solutions.

All examples are executable. You can copy and launch them without changes. It helps to understand what the code is doing easily.

View web app [here](http://evmorov.github.io/lang-compare).

Created with:

* [Middleman](https://middlemanapp.com)
* [Bootstrap](http://getbootstrap.com)


## Notes

All languages:

* It's possible to achieve anything with any language (especially with a library). However when a solution is really long and difficult to read it's better to not provide it
* Every task can be solved in different ways but it's preferable to provide not more than one the most used example

Java:

* 2 spaces is used to make the code more concise
* The examples are for Java 7. Java 8 has many features but sadly it's unavailable for Android


## What's next

Add more languages: Kotlin, JavaScript, TypeScript (and any more)!

* Ruby - Elixir
* Ruby - Crystal
* Java - Kotlin
* Java - C#
* JavaScript - CoffeeScript
* JavaScript - TypeScript

It would be nice to modify the existing examples to make them funnier.


## Development

Install ruby:

    $ ruby --version

Install dependencies:

    $ bundle

Run the app in localhost (http://localhost:4567):

    $ bundle exec middleman

To generate outputs below the examples:

1. Install all interpreters/compilers needed
2. `$ rake`

To add a new language:

1. Add the language to `langs` variable to `config.rb`
2. Add a rake task to `Rakefile` to run all the examples to produce output files that are included to the final html
3. Add examples

To add an example:

1. Modify `data/code.yml`
2. Add files to `code/` folder


## Contributing

Feel free to add or modify any examples.

1. Fork it ( https://github.com/evmorov/lang-compare/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
