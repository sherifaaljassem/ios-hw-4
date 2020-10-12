//
//  ArtistCell.swift
//  hw4-music
//
//  Created by Sherifa Aljassem on 10/12/20.
//  Copyright © 2020 Sherifa Aljassem. All rights reserved.
//

import UIKit

class ArtistCell: UITableViewCell {
    @IBOutlet weak var artistImageView: UIImageView!
    @IBOutlet weak var artistNameLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    func configureCell(artist: Artist){
        self.artistImageView.image = UIImage(named: artist.image)
        self.artistNameLabel.text = artist.name
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
