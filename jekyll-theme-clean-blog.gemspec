# frozen_string_literal: true

Gem::Specification.new do |spec|
  spec.name          = "marcelolaprea"
  spec.version       = "4.0.9"
  spec.authors       = ["Marcelo Laprea"]
  spec.email         = ["feedback@startbootstrap.com"]

  spec.summary       = "Software Engineering blog."
  spec.homepage      = "https://lapreamarcelo.github.io"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").select { |f| f.match(%r{^(assets|_layouts|_includes|_sass|LICENSE|README)}i) }

  spec.add_runtime_dependency "jekyll", "~> 3.8.5"

  spec.add_development_dependency "bundler", "~> 2.0.1"
  spec.add_development_dependency "rake", "~> 12.0"
end
