# -*- encoding: utf-8 -*-
# stub: image_size 2.1.0 ruby lib

Gem::Specification.new do |s|
  s.name = "image_size".freeze
  s.version = "2.1.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.metadata = { "bug_tracker_uri" => "https://github.com/toy/image_size/issues", "changelog_uri" => "https://github.com/toy/image_size/blob/master/CHANGELOG.markdown", "documentation_uri" => "https://www.rubydoc.info/gems/image_size/2.1.0", "source_code_uri" => "https://github.com/toy/image_size" } if s.respond_to? :metadata=
  s.require_paths = ["lib".freeze]
  s.authors = ["Keisuke Minami".freeze, "Ivan Kuchin".freeze]
  s.date = "2020-08-09"
  s.description = "Measure following file dimensions: apng, bmp, cur, gif, ico, j2c, jp2, jpeg, jpx, mng, pam, pbm, pcx, pgm, png, ppm, psd, svg, swf, tiff, webp, xbm, xpm".freeze
  s.homepage = "https://github.com/toy/image_size".freeze
  s.licenses = ["Ruby".freeze]
  s.rubygems_version = "2.7.6".freeze
  s.summary = "Measure image size using pure Ruby".freeze

  s.installed_by_version = "2.7.6" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<rspec>.freeze, ["~> 3.0"])
      s.add_development_dependency(%q<rubocop>.freeze, ["!= 0.78.0", "~> 0.59"])
    else
      s.add_dependency(%q<rspec>.freeze, ["~> 3.0"])
      s.add_dependency(%q<rubocop>.freeze, ["!= 0.78.0", "~> 0.59"])
    end
  else
    s.add_dependency(%q<rspec>.freeze, ["~> 3.0"])
    s.add_dependency(%q<rubocop>.freeze, ["!= 0.78.0", "~> 0.59"])
  end
end
