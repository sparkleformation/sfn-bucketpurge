$LOAD_PATH.unshift File.expand_path(File.dirname(__FILE__)) + '/lib/'
require 'sfn-bucketpurge/version'
Gem::Specification.new do |s|
  s.name = 'sfn-bucketpurge'
  s.version = SfnBucketPurge::VERSION.to_s
  s.summary = 'Automatic bucket purge for sfn'
  s.author = 'Chris Roberts'
  s.email = 'chrisroberts.code@gmail.com'
  s.homepage = 'http://github.com/sparkleformation/sfn-bucketpurge'
  s.description = 'Automatic bucket purge for sfn'
  s.license = 'Apache-2.0'
  s.require_path = 'lib'
  s.add_runtime_dependency 'sparkle_formation', '>= 2.1.0'
  s.files = Dir['{lib,docs}/**/*'] + %w(sfn-bucketpurge.gemspec README.md CHANGELOG.md LICENSE)
end
