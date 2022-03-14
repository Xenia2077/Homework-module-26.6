//
//  ViewController.swift
//  AppWithBackground
//
//  Created by Ксения Борисова on 13.03.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myImageView: UIImageView!
    @IBOutlet weak var themeSwitch: UISwitch!
    
    let ourDefaults = UserDefaults.standard
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        themeSwitch.isOn = ourDefaults.bool(forKey: "savedTheme")
        toggleThemeSwitch()
    }
    
    func toggleThemeSwitch() {
        if themeSwitch.isOn {
            myImageView.image = UIImage(named: "pic4")
            view.backgroundColor = .darkGray
            ourDefaults.set(themeSwitch.isOn, forKey: "savedTheme")
        } else {
            myImageView.image = UIImage(named: "pic6")
            view.backgroundColor = .systemGray5
            ourDefaults.set(themeSwitch.isOn, forKey: "savedTheme")
        }
    }


    @IBAction func themeSwitchPressed(_ sender: UISwitch) {
        toggleThemeSwitch()
    }
    
}

