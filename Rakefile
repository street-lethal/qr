require './qr_maker'

desc '標準出力に出力'
task :output do
  File.open('in.txt') do |file|
    file.each do |line|
      QrMaker.new(line).print
    end
  end
end

desc '.pngファイル出力'
task :png do
  File.open('in.txt') do |file|
    file.each_with_index do |line, i|
      QrMaker.new(line).png(output_filename: format('%02d', i))
    end
  end
end
