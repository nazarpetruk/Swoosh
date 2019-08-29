//
//  LegueVCViewController.swift
//  Swoosh
//
//  Created by Nazar Petruk on 29/08/2019.
//  Copyright © 2019 Nazar Petruk. All rights reserved.
//

import UIKit

class LegueVCViewController: UIViewController {

    @IBAction func onNextTapped(_ sender: Any) {
        performSegue(withIdentifier: "toSkillVC", sender: self)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
