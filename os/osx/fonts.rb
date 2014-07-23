dep 'bitstream-vera.font' do
  source 'http://ftp.gnome.org/pub/GNOME/sources/ttf-bitstream-vera/1.10/ttf-bitstream-vera-1.10.tar.gz'
  provides %w{Vera VeraBI VeraBd VeraIt VeraMoBI VeraMoBd VeraMoIt VeraMono VeraSe VeraSeBd}
end

dep 'fantasque-sans-mono.font' do
  source 'https://github.com/belluzj/fantasque-sans/releases/download/v1.6.1/FantasqueSansMono.zip'
  provides %w{FantasqueSansMono-Bold FantasqueSansMono-BoldItalic FantasqueSansMono-Regular FantasqueSansMono-RegItalic}
end

dep "fonts" do
  requires "bitstream-vera.font",
           "fantasque-sans-mono.font"
end
