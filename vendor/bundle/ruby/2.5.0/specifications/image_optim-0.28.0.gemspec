# -*- encoding: utf-8 -*-
# stub: image_optim 0.28.0 ruby lib

Gem::Specification.new do |s|
  s.name = "image_optim".freeze
  s.version = "0.28.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.metadata = { "bug_tracker_uri" => "https://github.com/toy/image_optim/issues", "changelog_uri" => "https://github.com/toy/image_optim/blob/master/CHANGELOG.markdown", "documentation_uri" => "https://www.rubydoc.info/gems/image_optim/0.28.0", "source_code_uri" => "https://github.com/toy/image_optim" } if s.respond_to? :metadata=
  s.require_paths = ["lib".freeze]
  s.authors = ["Ivan Kuchin".freeze]
  s.date = "2020-12-18"
  s.executables = ["image_optim".freeze]
  s.files = ["bin/image_optim".freeze]
  s.homepage = "https://github.com/toy/image_optim".freeze
  s.licenses = ["MIT".freeze]
  s.post_install_message = "Rails image assets optimization is extracted into image_optim_rails gem\nYou can safely remove `config.assets.image_optim = false` if you are not going to use that gem\n".freeze
  s.rubygems_version = "2.7.6".freeze
  s.summary = "Command line tool and ruby interface to optimize (lossless compress, optionally lossy) jpeg, png, gif and svg images using external utilities (advpng, gifsicle, jhead, jpeg-recompress, jpegoptim, jpegrescan, jpegtran, optipng, pngcrush, pngout, pngquant, svgo)".freeze

  s.installed_by_version = "2.7.6" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<fspath>.freeze, ["~> 3.0"])
      s.add_runtime_dependency(%q<image_size>.freeze, ["< 3", ">= 1.5"])
      s.add_runtime_dependency(%q<exifr>.freeze, [">= 1.2.2", "~> 1.2"])
      s.add_runtime_dependency(%q<progress>.freeze, [">= 3.0.1", "~> 3.0"])
      s.add_runtime_dependency(%q<in_threads>.freeze, ["~> 1.3"])
      s.add_development_dependency(%q<image_optim_pack>.freeze, [">= 0.2.2", "~> 0.2"])
      s.add_development_dependency(%q<rspec>.freeze, ["~> 3.0"])
      s.add_development_dependency(%q<rubocop>.freeze, ["~> 1.0"])
    else
      s.add_dependency(%q<fspath>.freeze, ["~> 3.0"])
      s.add_dependency(%q<image_size>.freeze, ["< 3", ">= 1.5"])
      s.add_dependency(%q<exifr>.freeze, [">= 1.2.2", "~> 1.2"])
      s.add_dependency(%q<progress>.freeze, [">= 3.0.1", "~> 3.0"])
      s.add_dependency(%q<in_threads>.freeze, ["~> 1.3"])
      s.add_dependency(%q<image_optim_pack>.freeze, [">= 0.2.2", "~> 0.2"])
      s.add_dependency(%q<rspec>.freeze, ["~> 3.0"])
      s.add_dependency(%q<rubocop>.freeze, ["~> 1.0"])
    end
  else
    s.add_dependency(%q<fspath>.freeze, ["~> 3.0"])
    s.add_dependency(%q<image_size>.freeze, ["< 3", ">= 1.5"])
    s.add_dependency(%q<exifr>.freeze, [">= 1.2.2", "~> 1.2"])
    s.add_dependency(%q<progress>.freeze, [">= 3.0.1", "~> 3.0"])
    s.add_dependency(%q<in_threads>.freeze, ["~> 1.3"])
    s.add_dependency(%q<image_optim_pack>.freeze, [">= 0.2.2", "~> 0.2"])
    s.add_dependency(%q<rspec>.freeze, ["~> 3.0"])
    s.add_dependency(%q<rubocop>.freeze, ["~> 1.0"])
  end
end
