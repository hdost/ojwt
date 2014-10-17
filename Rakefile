include FileUtils::Verbose

namespace :test do

  task :prepare do
    mkdir_p "Tests/OJWTTTests.xcodeproj/xcshareddata/xcschemes"
    cp Dir.glob('Tests/Schemes/*.xcscheme'), "Tests/OJWTTests.xcodeproj/xcshareddata/xcschemes/"
  end

  desc "Run the OJWT Tests for iOS"
  task :ios => :prepare do
    run_tests('iOS Tests', 'iphonesimulator')
    tests_failed('iOS') unless $?.success?
  end

  desc "Run the OJWT Tests for Mac OS X"
  task :osx => :prepare do
    run_tests('OS X Tests', 'macosx')
    tests_failed('OSX') unless $?.success?
  end
end

desc "Run the OJWT Tests for iOS & Mac OS X"
task :test do
  Rake::Task['test:ios'].invoke
  Rake::Task['test:osx'].invoke if is_mavericks_or_above
end

task :default => 'test'


private

def run_tests(scheme, sdk)
  sh("xctool -workspace OJWT.xcworkspace -scheme '#{scheme}' -sdk '#{sdk}' -configuration Release clean test") rescue nil
end

def is_mavericks_or_above
  osx_version = `sw_vers -productVersion`.chomp
  Gem::Version.new(osx_version) >= Gem::Version.new('10.9')
end

def tests_failed(platform)
  puts failed("#{platform} unit tests failed")
  exit $?.exitstatus
end

def failed(string)
 "\033[0;31m! #{string}"
end
