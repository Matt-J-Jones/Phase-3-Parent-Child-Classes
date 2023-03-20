class Track
  def initialize(title, artist) 
    # title and artist are both strings
    @title = title
    @artist = artist
  end

  def return_track
    return [@title, @artist]
  end

  def matches?(keyword) 
    # keyword is a string
    # Returns true if the keyword matches either the title or artist
    if @artist == keyword || @title == keyword
      return true
    else
      return false
    end
  end
end