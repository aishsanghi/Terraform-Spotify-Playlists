resource "spotify_playlist" "NaamKaam" {
  name = "Naam Kaam"
  tracks = ["2F7Lm9XPwmt0KMrTAmjjfw"]
}

data "spotify_search_track" "eminem" {
  artist = "Eminem"
}

resource "spotify_playlist" "slimshady" {
  name = "Slim Shady"
  tracks = [data.spotify_search_track.eminem.tracks[0].id,
  data.spotify_search_track.eminem.tracks[1].id]
}