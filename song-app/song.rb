class Song
  def initialize(title,artist,duration,lyrics)
    @title = title
    @artist = artist
    @duration = duration
    @lyrics = lyrics
  end

  def title
    return @title
  end

  def artist
    return @artist
  end

  def duration
    return @duration
  end

  def lyrics
    return @lyrics
  end

  def play
    return lyrics
  end

  # friendly duration to convert duration of song in min and sec
  def friendly_duration
    min = @duration / 60
    utes = 60 * min
    sec = @duration - utes
    return "#{min} Minutes and #{sec} seconds" 
  end

end


