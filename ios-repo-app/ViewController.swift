//
//  ViewController.swift
//  ios-repo-app
//
//  Created by Brian Bansenauer on 10/5/19.
//  Copyright © 2019 Cascadia College. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var firstName: UITextField!
    @IBOutlet weak var lastName: UITextField!
    @IBOutlet weak var phoneNumber: UITextField!
    @IBOutlet weak var sid: UITextField!
    
    @IBOutlet weak var resultInfo: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }

    @IBAction func saveToAPI(_ sender: Any) {
        //TODO: create a Repository object needed to invoke the API's create method at http://216.186.69.45/services/device/users/
        let musicRepo = MusicRepository<Music>(withPath: "https://www.orangevalleycaa.org/api/music");
        
        
        let newMusic = Music()
        newMusic.id = 10
        newMusic.name = firstName.text
        newMusic.description = lastName.text
        
        musicRepo.create(a: newMusic)
        }
    }
    


