# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "tictactoe/version"

Gem::Specification.new do |s|
  s.name        = "tictactoe"
  s.version     = Tictactoe::VERSION
  s.authors     = ["Alan92"]
  s.email       = ["alan_92_@hotmail.es"]
  s.homepage    = ""
  s.summary     = %q{tictactoe generator}
  s.description = %q{tictactoe generates}

  s.rubyforge_project = "tictactoe"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  # specify any dependencies here; for example:
   s.add_development_dependency "rspec"
  # s.add_runtime_dependency "rest-client"
end
