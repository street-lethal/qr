require './qr_maker'

def process
  return unless block_given?

  File.open('in.txt') do |file|
    file.each_with_index do |line, i|
      next if line.chomp.empty?

      qr_maker = QrMaker.new(line.chomp)
      yield qr_maker, i
    end
  end
end

desc 'Base64文字列を標準出力に出力'
task :output do
  process { |qr_maker| puts qr_maker.base64 }
end

desc '<img>タグを標準出力に出力'
task :img do
  process { |qr_maker| puts qr_maker.img_tag }
end

desc 'HTMLを標準出力に出力'
task :html do
  process { |qr_maker| puts qr_maker.html }
end

desc '.pngファイル出力'
task :png do
  process { |qr_maker, i| qr_maker.png(output_filename: format('%02d', i)) }
end
