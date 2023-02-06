//
//  Track.swift
//  lab-tunley
//
//  Created by Charlie Hieger on 12/2/22.
//

import Foundation

// TODO: Pt 1 - Create a Track model struct
struct Track {
    let title: String
    let overview: String
    let poster_path: URL
    
    let backdrop_path: URL
    let vote_average: Double
    let vote_count: Int
    let popularity: Int
}

// TODO: Pt 1 - Create an extension with a mock tracks static var
extension Track {

    /// An array of mock tracks
    static var mockTracks: [Track]  = [
        Track(title: "",
              overview: "",
              poster_path: URL(string:"")!,
              backdrop_path: URL(string:"")!,
              vote_average: 1,
              vote_count: 1,
              popularity: 1),
        Track(title: "",
              overview: "",
              poster_path: URL(string:"")!,
              backdrop_path: URL(string:"")!,
              vote_average: 1,
              vote_count: 1,
              popularity: 1),
        Track(title: "",
              overview: "",
              poster_path: URL(string:"")!,
              backdrop_path: URL(string:"")!,
              vote_average: 1,
              vote_count: 1,
              popularity: 1),
        Track(title: "",
              overview: "",
              poster_path: URL(string:"")!,
              backdrop_path: URL(string:"")!,
              vote_average: 1,
              vote_count: 1,
              popularity: 1),
        Track(title: "",
              overview: "",
              poster_path: URL(string:"")!,
              backdrop_path: URL(string:"")!,
              vote_average: 1,
              vote_count: 1,
              popularity: 1),
    ]

    // We can now access this array of mock tracks anywhere like this:
    // let tracks = Tracks.mockTracks
}

// MARK: Helper Methods
/// Converts milliseconds to mm:ss format
///  ex:  208643 -> "3:28"
///  ex:
func formattedTrackDuration(with milliseconds: Int) -> String {
    let (minutes, seconds) = milliseconds.quotientAndRemainder(dividingBy: 60 * 1000)
    let truncatedSeconds = seconds / 1000
    if truncatedSeconds >= 10 {
        return "\(minutes):\(truncatedSeconds)"
    } else {
        return "\(minutes):0\(truncatedSeconds)"
    }
}
