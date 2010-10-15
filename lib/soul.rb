$:.unshift(File.dirname(__FILE__)) unless
  $:.include?(File.dirname(__FILE__)) || $:.include?(File.expand_path(File.dirname(__FILE__)))

module Soul
  VERSION = '0.0.1'

  def self.parse(filename)
    parser = SolutionParser.new
    return parser.parse(filename)
  end
end

require 'soul/project'
require 'soul/solution'
require 'soul/solution_parser'
