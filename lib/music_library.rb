class MusicLibrary
  def initialize
    @library = []
  end

  def add(track) 
    @library << track
  end

  def all
    return @library
  end
  
  def search(keyword) 
    # keyword is a string
    # Returns a list of tracks that match the keyword
    return @library.select { |item| item.matches? }
  end
end