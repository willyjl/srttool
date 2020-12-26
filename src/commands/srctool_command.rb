require 'clamp'

require_relative 'split_command'

class SrctoolCommand < Clamp::Command
  subcommand 'split', 'Split SRT file', SplitCommand
end
