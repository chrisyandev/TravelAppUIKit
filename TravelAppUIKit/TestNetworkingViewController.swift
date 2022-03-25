//
//  TestNetworkingViewController.swift
//  TravelAppUIKit
//
//  Created by Chris Yan on 2022-03-24.
//

import UIKit
import ElementKit

class TestNetworkingViewController: UIViewController {

    lazy var button: BaseUIButton = {
        let bt = BaseUIButton()
        bt.setTitle("Test Networking", for: .normal)
        bt.backgroundColor = .green
        bt.addTarget(self, action: #selector(testNetworkingFunctionality), for: .touchUpInside)
        bt.layer.cornerRadius = 30
        return bt
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .lightGray
        title = "TEST"
        
        view.addSubview(button)
        NSLayoutConstraint.activate([
            button.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            button.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            button.heightAnchor.constraint(equalToConstant: 60),
            button.widthAnchor.constraint(equalToConstant: 180)
        ])
    }
    
    @objc func testNetworkingFunctionality() {
        // test decode json
//        let jsonData = Serializer.rawUserJson()
//        if let user = Serializer.deserialize(jsonString: jsonData) {
//            print("user with first name \(user.firstName)")
//        } else {
//            print("couldn't decode data")
//        }
        
        // test decode json array
//        let jsonData = Serializer.rawUserArrayJson()
//        let users = Serializer.deserializeArray(jsonString: jsonData)
//        print("length of array is: \(users.count)")
//        for user in users {
//            print("user first name is \(user.firstName)")
//        }
        
        // test encode json
//        let user = UserDM(firstName: "John", lastName: "Doe", country: "Canada")
//        if let json = Serializer.serialize(user: user) {
//            print("json data is ")
//            print(json)
//        }
        
        // test networking
        Networking.makeMockApi()

    }
}
