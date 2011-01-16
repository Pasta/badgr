# Provide a simple gemspec so you can easily use your enginex
# project in your rails apps through git.
Gem::Specification.new do |s|
  s.name = "badgr"
  s.summary = "Insert Badgr summary."
  s.description = "Insert Badgr description."
  s.files = Dir["lib/**/*"] + ["Rakefile", "README.rdoc"]
  s.version = "0.1.0"
end