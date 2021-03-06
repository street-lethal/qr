require 'rqrcode'
require 'rqrcode_png'
require 'chunky_png'

class QrMaker
  def initialize(str)
    @str = str
    @qr = RQRCode::QRCode.new(str)
  end

  def base64
    img.to_data_url
  end

  def img_tag
    <<~HTML
      <img src="#{base64}">
    HTML
  end

  def html
    "<html><body>#{img_tag}</body></html>"
  end

  def png(output_dir: 'out', output_filename: 'out')
    img.save("#{output_dir}/#{output_filename}.png")
  end

  private

  def img
    @qr.to_img.resize(200, 200)
  end
end
