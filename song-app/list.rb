require_relative "song"

class List
  
  def initialize
    @songs = []
  end

  def songs
    return @songs
  end

  def add_song(song)
    @songs << song
  end

  def playlist
    playlist = []
    @songs.each do |song|
      playlist << song.lyrics
    end
    return playlist
  end

  def shuffle
    playlist = []
    @songs.each do |song|
      playlist << song.lyrics
    end
    return playlist.shuffle
  end

  def duration
    sum = 0
    @songs.each do |song|
      sum += song.duration
    end
    return sum
  end


end