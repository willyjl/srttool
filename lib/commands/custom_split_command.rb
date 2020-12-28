require 'clamp'
require 'srt'
require 'progressbar'

class CustomSplitCommand < Clamp::Command
  option ['-t', '--time'], 'TIME', 'Split time (format: DD:MM:SS,ZZZ)', required: true
  option ['-p', '--prefix'], 'PREFIX', 'Output file prefix', default: 'subtitle'
  option '--output-dir', 'OUTPUT DIR', 'Output directory', default: './'
  option '--starting-index', 'STARTING INDEX', 'Starting index on splitted SRTs', default: 1
  option '--[no-]renumber', :flag, 'Renumber SRT sequence number', default: true

  parameter 'SRT FILE PATH', 'SRT file path to split', attribute_name: :path

  def execute
    file = File.open(path)
    srt = SRT::File.parse(file)
    results = srt.split(at: time, renumber: renumber?)
    progress = ProgressBar.create(title: 'Saving subtitle', starting_at: 0, total: results.length)

    results.each_with_index do |line, index|
      File.write("#{output_dir}/#{prefix}-#{'%03d' % (starting_index.to_i+index)}.srt", line.to_s)
      progress.increment
    end
  end
end
