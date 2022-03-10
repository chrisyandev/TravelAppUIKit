//
//  FriendsDetailViewController.swift
//  TravelAppUIKit
//
//  Created by Chris Yan on 2022-03-10.
//

import UIKit

class FriendsDetailViewController: UIViewController {
    
    var user: User?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .red
        title = "Detail view"
        
        user?.nickName = "Updated nick name"
        
        var mockData = DataProvider.mockData()
        mockData.append(("Updated", [user!]))
        
        DataProvider.data = mockData
    }
}
