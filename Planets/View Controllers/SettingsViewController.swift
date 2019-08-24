//
//  SettingsViewController.swift
//  Planets
//
//  Created by Joshua Franklin on 8/22/19.
//  Copyright © 2019 Lambda Inc. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    // Mark: - IBOutlets
    
    @IBOutlet weak var shouldShowPlutoSwitch: UISwitch!
    
    
    // MARK: - Lifecycle
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        updateViews()
    }
    
    //Mark: - Actions
    
    
    @IBAction func changeShouldShowPluto(_ sender: UISwitch) {
        let userDefaults = UserDefaults.standard
        userDefaults.set(sender.isOn, forKey: .shouldShowPlutoKey)
    }
    
    // MARK: - Private
    
    private func updateViews() {
        let userDefaults = UserDefaults.standard
        shouldShowPlutoSwitch.isOn = userDefaults.bool(forKey: .shouldShowPlutoKey)
    }
}
