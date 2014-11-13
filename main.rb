require 'vlcrc'
include VLCRC
#require 'wxruby'
require 'shoes'

vlc_binpath = '"C:\Program Files (x86)\VideoLAN\VLC\vlc.exe"'
player = VLC.new('localhost',1234,vlc_binpath,'')
player.launch
player.connect

Shoes.app {
  button("Play") { play 'file' }
}

def play filename
  player.media= 'E:\Users\Mark\Music\Game music\PPPPPP\01 powerup.flac'
end