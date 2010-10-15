# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{soul}
  s.version = "0.0.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["FIXME full name"]
  s.date = %q{2010-10-14}
  s.description = %q{Solution parser for .NET .sln files.}
  s.email = ["FIXME email"]
  s.extra_rdoc_files = ["History.txt", "Manifest.txt", "PostInstall.txt"]
  s.files = ["History.txt", "Manifest.txt", "PostInstall.txt", "README.rdoc", "Rakefile", "lib/soul.rb", "lib/soul/solution_parser.rb", "lib/soul/solution.rb", "lib/soul/project.rb", "script/console", "script/destroy", "script/generate", "test/test_helper.rb", "test/test_soul.rb"]
  s.homepage = %q{http://github.com/jthigpen/soul}
  s.post_install_message = %q{PostInstall.txt}
  s.rdoc_options = ["--main", "README.rdoc"]
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{soul}
  s.rubygems_version = %q{1.3.7}
  s.summary = %q{Solution parser for .NET .sln files.}
  s.test_files = ["test/test_helper.rb", "test/test_soul.rb"]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<rubyforge>, [">= 2.0.4"])
      s.add_development_dependency(%q<hoe>, [">= 2.6.2"])
    else
      s.add_dependency(%q<rubyforge>, [">= 2.0.4"])
      s.add_dependency(%q<hoe>, [">= 2.6.2"])
    end
  else
    s.add_dependency(%q<rubyforge>, [">= 2.0.4"])
    s.add_dependency(%q<hoe>, [">= 2.6.2"])
  end
end
