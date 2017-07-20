# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "japanese_email_domain/version"

Gem::Specification.new do |spec|
  spec.name          = "japanese_email_domain"
  spec.version       = JapaneseEmailDomain::VERSION
  spec.authors       = ["kiyokuro"]
  spec.email         = ["kuro6412@gmail.com"]

  spec.summary       = "Validate whether it is japanese email domain"
  spec.description   = ""
  spec.homepage      = "https://github.com/kiyokuro/japanese_eamil_domain"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.15"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
