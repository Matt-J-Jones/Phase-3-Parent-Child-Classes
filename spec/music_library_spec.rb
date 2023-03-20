require 'music_library'

RSpec.describe MusicLibrary do
  it "creates empty library, returns empty" do
    library = MusicLibrary.new
    expect(library.all).to eq []
  end

  it "creates library, adds track, returns library" do
    track_0 = double :track
    library = MusicLibrary.new
    library.add(track_0)
    expect(library.all).to eq [track_0]
  end

  it "creates library, adds 2 tracks, returns library" do
    library = MusicLibrary.new
    track_0 = double :track
    track_1 = double :track
    library.add(track_0)
    library.add(track_1)
    expect(library.all).to eq [track_0, track_1]
  end

  it "searches tracks by title, returns true" do
    library = MusicLibrary.new
    track_0 = double :track, matches?: false
    track_1 = double :track, matches?: true
    library.add(track_0)
    library.add(track_1)

    expect(library.search("title")).to eq [track_1]
  end
end