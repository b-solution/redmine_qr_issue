
module  QrPdf
  module PdfPatch
    def self.included(base)
      base.class_eval do
        def RDMwriteQRCodeCell(url='')
          require 'rqrcode'

          qrcode = RQRCode::QRCode.new(url)
          css_tag = ' <style>
          table {
            width: 250px;
            border: 0;
            border-collapse: collapse;
          }
          </style>'

          writeHTMLCell(0, 0, 10,'', css_tag + qrcode.as_html.gsub(/\"black\"/, '\'black\' style="background-color: #000;"'))
        end
      end
    end
  end
end