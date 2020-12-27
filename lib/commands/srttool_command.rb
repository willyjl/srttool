require 'clamp'

require_relative 'split_command'

class SrttoolCommand < Clamp::Command
  subcommand 'split', 'Split SRT file', SplitCommand
end
