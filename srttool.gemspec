require './src/version'

Gem::Specification.new do |g|
  g.name          = 'Srttool'
  g.summary       = 'cli tool for subrip text (srt)'
  g.description   = 'Srttool is a cli command to manipulate subrip text (srt)'
  g.homepage      = 'https://github.com/willyjl/srttool'
  g.license       = 'MIT'

  g.authors       = ['Willy Jansen']
  g.email         = ['willyjansen@protonmail.com']

  g.add_development_dependency('clamp')
  g.add_development_dependency('srt')
  g.add_development_dependency('progressbar')

  g.require_paths = ['src']
  g.files         = `git.ls-files`.split($\)
  g.executables   = g.files.grep(%r{^bin/}).map{ |f| File.basename(f) } } 
  g.version       = Srttool::VERSION
end
