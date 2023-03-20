require 'track'
require 'music_library'

RSpec.describe "Music Library" do
  it "creates library, adds track, returns library" do
    album = ["Dark matters", "King Blonde"]
    track_0  = Track.new(album[0], album[1])
    library = MusicLibrary.new
    library.add(track_0)
    expect(library.all).to eq [track_0]
  end

  it "creates library, adds 2 tracks, returns library" do
    library = MusicLibrary.new
    albums = [["Dark matters", "King Blonde"],["Bursting bubbles", "School of the Two Mice"]]
    track_0  = Track.new(albums[0][0], albums[0][1])
    track_1  = Track.new(albums[1][0], albums[1][1])
    library.add(track_0)
    library.add(track_1)
    expect(library.all).to eq [track_0, track_1]
  end
end