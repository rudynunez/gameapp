class Song
  def initialize(lyrics)
    @lyrics = lyrics
  end
  
  def sing_me_a_song()
    @lyrics.each {|line| puts line}
  end
end


happy_bday = Song.new(["Happy birthday to you,
I don't want to get sued
So I'll stop right there", "\n" ])

bulls_on_parade = Song.new(["They rally around the family,
with pockets full of shells", "\n"])

dont_worry = Song.new(["Don't worry .... 'bout a thing",
"cuz every little things .... gonna be alright", "\n"])

happy_bday.sing_me_a_song()

bulls_on_parade.sing_me_a_song()

dont_worry.sing_me_a_song()

