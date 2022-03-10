//
//  FriendCell.swift
//  TravelAppUIKit
//
//  Created by Chris Yan on 2022-03-09.
//

import UIKit

class FriendCell: UITableViewCell {
    
    @IBOutlet weak var ageLabel: UILabel!
    @IBOutlet weak var locationLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var avatarView: UIImageView!
    
    func updateView(user: User) {
        nameLabel.text = user.nickName
        locationLabel.text = user.location
        ageLabel.text = user.age
        
        avatarView.image = user.image
    }
    
}
