require 'track'

RSpec.describe Track do
  it "adds track, returns track" do
    album = ["Dark matters", "King Blonde"]
    track  = Track.new(album[0], album[1])
    expect(track.return_track).to eq album
  end

  it "adds track, returns true if album matches" do
    album = ["Dark matters", "King Blonde"]
    track  = Track.new(album[0], album[1])
    expect(track.matches?(album[0])).to eq true
  end

  it "adds track, returns false if album !matches" do
    album = ["Dark matters", "King Blonde"]
    track  = Track.new(album[0], album[1])
    expect(track.matches?("Bank fault")).to eq false
  end

  it "adds track, returns true if artist matches" do
    album = ["Dark matters", "King Blonde"]
    track  = Track.new(album[0], album[1])
    expect(track.matches?(album[1])).to eq true
  end

  it "adds track, returns false if artist !matches" do
    album = ["Dark matters", "King Blonde"]
    track  = Track.new(album[0], album[1])
    expect(track.matches?("Megabox")).to eq false
  end
end