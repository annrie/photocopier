lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'photocopier/version'

Gem::Specification.new do |spec|
  spec.name          = 'photocopier'
  spec.version       = Photocopier::VERSION
  spec.authors       = ['Stefano Verna', 'Ju Liu', 'Fabrizio Monti']
  spec.email         = ['stefano.verna@welaika.com', 'ju.liu@welaika.com',
                        'fabrizio.monti@welaika.com']

  spec.summary       = 'Photocopier provides FTP/SSH adapters to abstract away file and ' \
                       'directory copying.'
  spec.description   = 'Photocopier provides FTP/SSH adapters to abstract away file and ' \
                       'directory copying.'
  spec.homepage      = 'https://github.com/annrie/photocopier'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.required_ruby_version = '>= 3.3', '< 3.5'

  spec.add_dependency 'activesupport', '~> 6.1'
  spec.add_dependency 'base64', '>= 0.2', '< 1'
  spec.add_dependency 'bigdecimal', '>= 3.1', '< 5'
  spec.add_dependency 'mutex_m', '>= 0.2', '< 1'
  spec.add_dependency 'net-ftp', '~> 0.3'
  spec.add_dependency 'net-protocol', '~> 0.4'
  spec.add_dependency 'net-scp', '~> 4.1'
  spec.add_dependency 'net-sftp', '~> 4.0'
  spec.add_dependency 'net-ssh', '~> 7.3'
  spec.add_dependency 'net-ssh-gateway', '~> 2.0'

  spec.add_development_dependency 'bundler', '>= 2.5', '< 5'
  spec.add_development_dependency 'rake', '~> 13.0'
  spec.add_development_dependency 'rspec', '~> 3.13'
  spec.add_development_dependency 'rubocop', '~> 1.75'
  spec.add_development_dependency 'simplecov', '~> 0.22'
end
