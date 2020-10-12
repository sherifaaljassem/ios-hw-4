//
//  songCell.swift
//  hw4-music
//
//  Created by Sherifa Aljassem on 10/12/20.
//  Copyright © 2020 Sherifa Aljassem. All rights reserved.
//

import UIKit

class songCell: UITableViewCell {
    @IBOutlet weak var songImageView: UIImageView!
    @IBOutlet weak var songNameLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    func configureCell(song: Song){
        self.songImageView.image = UIImage(named: song.image)
        self.songNameLabel.text = song.name
        
    }
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
