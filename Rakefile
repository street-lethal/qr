require './qr_maker'

desc 'Base64文字列を標準出力に出力'
task :output do
  File.open('in.txt') do |file|
    file.each do |line|
      puts QrMaker.new(line).base64
    end
  end
end

desc '<img>タグを標準出力に出力'
task :img do
  File.open('in.txt') do |file|
    file.each do |line|
      puts QrMaker.new(line).img_tag
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
