Gem::Specification.new do |s|
  s.name        = "spork-riot"
  s.version     = "0.0.1"
  s.authors     = ["Alfred Chan"]
  s.email       = ["alfredwchan@gmail.com"]
  s.homepage    = "https://github.com/alfredc/spork-riot"
  s.summary     = "Riot runner for Spork"
  s.description = %q{Spork plugin to enable Riot support.}

  s.executables   = ["testdrb"]
  s.files         = ["README.md"] + Dir["bin/**/*"] + Dir["lib/**/*"]
  s.require_paths = ["lib"]

  s.add_dependency "spork"
end
