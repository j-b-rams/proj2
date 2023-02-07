//
//  TrackCell.swift
//  lab-tunley
//
//  Created by Joshua Abrams on 2/5/23.
//

import UIKit
import Nuke

class TrackCell: UITableViewCell {
    
    /// Configures the cell's UI for the given track.
    func configure(with track: Track) {
        trackNameLabel.text = track.title
        artistNameLabel.text = track.overview

        // Load image async via Nuke library image loading helper method
        Nuke.loadImage(with: track.poster_path, into: trackImageView)
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        // Configure the view for the selected state

        
    }
    
    @IBOutlet weak var trackImageView: UIImageView!
    
    @IBOutlet weak var trackNameLabel: UILabel!
    
    @IBOutlet weak var artistNameLabel: UILabel!
    

    
    

}
