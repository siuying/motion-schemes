unless defined?(Motion::Project::Config)
  raise "This file must be required within a RubyMotion project Rakefile."
end

require File.join(File.dirname(__FILE__), "motion/project/config")
require File.join(File.dirname(__FILE__), "motion/project/schemes")
require File.join(File.dirname(__FILE__), "motion/project/version")