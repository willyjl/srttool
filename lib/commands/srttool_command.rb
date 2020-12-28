require 'clamp'

require_relative 'split_command'
require_relative 'custom_split_command'

class SrttoolCommand < Clamp::Command
  subcommand 'split', 'Split SRT file with interval', SplitCommand
  subcommand 'custom_split', 'Split SRT file at specific time', CustomSplitCommand
end
