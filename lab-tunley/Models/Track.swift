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
    let vote_average: String
    let vote_count: String
    let popularity: String
}

// TODO: Pt 1 - Create an extension with a mock tracks static var
extension Track {

    /// An array of mock tracks
    static var mockTracks: [Track]  = [
        Track(title: "Avatar: The Way of Water",
              overview: "Set more than a decade after the events of the first film, learn the story of the Sully family (Jake, Neytiri, and their kids), the trouble that follows them, the lengths they go to keep each other safe, the battles they fight to stay alive, and the tragedies they endure.",
              poster_path: URL(string:"https://image.tmdb.org/t/p/w500//t6HIqrRAclMCA60NsSmeqe9RmNV.jpg")!,
              backdrop_path: URL(string:"https://image.tmdb.org/t/p/w500//s16H6tpK2utvwDtzZ8Qy4qm5Emw.jpg")!,
              vote_average: "7.7",
              vote_count: "5034",
              popularity: "2298.707"),
        Track(title: "Devotion",
              overview: "The harrowing true story of two elite US Navy fighter pilots during the Korean War. Their heroic sacrifices would ultimately make them the Navy's most celebrated wingmen.",
              poster_path: URL(string:"https://image.tmdb.org/t/p/w500//26yQPXymbWeCLKwcmyL8dRjAzth.jpg")!,
              backdrop_path: URL(string:"https://image.tmdb.org/t/p/w500//5pMy5LF2JAleBNBtuzizfCMWM7k.jpg")!,
              vote_average: "7.6",
              vote_count: "232",
              popularity: "1988.737"),
        Track(title: "Detective Knight: Independence",
              overview: "Detective James Knight 's last-minute assignment to the Independence Day shift turns into a race to stop an unbalanced ambulance EMT from imperiling the city's festivities. The misguided vigilante, playing cop with a stolen gun and uniform, has a bank vault full of reasons to put on his own fireworks show... one that will strike dangerously close to Knight's home.",
              poster_path: URL(string:"https://image.tmdb.org/t/p/w500//jrPKVQGjc3YZXm07OYMriIB47HM.jpg")!,
              backdrop_path: URL(string:"https://image.tmdb.org/t/p/w500//tCpMRsHlfR6CcqJYA3kJMS3YApt.jpg")!,
              vote_average: "6.7",
              vote_count: "21",
              popularity: "2467.076"),
        Track(title: "Babylon",
              overview: "A tale of outsized ambition and outrageous excess, tracing the rise and fall of multiple characters in an era of unbridled decadence and depravity during Hollywood's transition from silent films and to sound films in the late 1920s.",
              poster_path: URL(string:"https://image.tmdb.org/t/p/w500//wjOHjWCUE0YzDiEzKv8AfqHj3ir.jpg")!,
              backdrop_path: URL(string:"https://image.tmdb.org/t/p/w500//1RZlwRdVbKav9O153vWbYCn54Nk.jpg")!,
              vote_average: "7.7",
              vote_count: "800",
              popularity: "1344.657"),
        Track(title: "The Enforcer",
              overview: "A noir thriller set in Miami, the film follows an enforcer who discovers his femme fatale boss has branched out into cyber sex trafficking, putting a young runaway he’s befriended at risk. He sacrifices everything to save the young girl from the deadly organization he’s spent his life building.",
              poster_path: URL(string:"https://image.tmdb.org/t/p/w500//72V1r1G8S87ELagVxjqAUdChMCt.jpg")!,
              backdrop_path: URL(string:"https://image.tmdb.org/t/p/w500//Aqldsq65Nj1KAkQD2MzkZsAk5N5.jpg")!,
              vote_average: "7.4",
              vote_count: "147",
              popularity: "1421.71"),
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
