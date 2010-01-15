# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run the gemspec command
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{pretty_diff}
  s.version = "0.3.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Ilya Sabanin"]
  s.date = %q{2010-01-15}
  s.description = %q{PrettyDiff is a highly customizable library for creating fully featured HTML
                       listings out of unified diff format strings.
                       Include copy/paste-safe line numbers and built-in syntax highlighting.}
  s.email = %q{ilya.sabanin@gmail.com}
  s.extra_rdoc_files = [
    "LICENSE",
     "README.rdoc"
  ]
  s.files = [
    ".document",
     ".gitignore",
     "LICENSE",
     "README.rdoc",
     "Rakefile",
     "VERSION",
     "lib/pretty_diff.rb",
     "lib/pretty_diff/chunk.rb",
     "lib/pretty_diff/diff.rb",
     "lib/pretty_diff/html_generator.rb",
     "lib/pretty_diff/line.rb",
     "lib/pretty_diff/line_numbers.rb",
     "lib/pretty_diff/support.rb",
     "pretty_diff.gemspec",
     "test/chunk_test.rb",
     "test/data/first.diff",
     "test/data/second.diff",
     "test/diff_test.rb",
     "test/helper.rb",
     "test/html_generator_test.rb",
     "test/line_test.rb"
  ]
  s.homepage = %q{http://github.com/isabanin/pretty_diff}
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.5}
  s.summary = %q{Library for converting unified diff format into HTML listings.}
  s.test_files = [
    "test/chunk_test.rb",
     "test/diff_test.rb",
     "test/helper.rb",
     "test/html_generator_test.rb",
     "test/line_test.rb"
  ]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<shoulda>, [">= 0"])
    else
      s.add_dependency(%q<shoulda>, [">= 0"])
    end
  else
    s.add_dependency(%q<shoulda>, [">= 0"])
  end
end

