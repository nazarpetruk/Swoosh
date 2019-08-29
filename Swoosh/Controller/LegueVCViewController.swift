//
//  LegueVCViewController.swift
//  Swoosh
//
//  Created by Nazar Petruk on 29/08/2019.
//  Copyright © 2019 Nazar Petruk. All rights reserved.
//

import UIKit

class LegueVCViewController: UIViewController {
    var player : Player!

    @IBOutlet weak var nextBtn: ButtonBorder!
    @IBAction func onNextTapped(_ sender: Any) {
        performSegue(withIdentifier: "toSkillVC", sender: self)
    }
    @IBAction func onMensTapped(_ sender: Any) {
       legueIsPicked(legueType: "Mens")
    }
    @IBAction func onWomensTapped(_ sender: Any) {
        legueIsPicked(legueType: "Women")
    }
    @IBAction func onCoedTapped(_ sender: Any) {
        legueIsPicked(legueType: "Coed")
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        player = Player()
    }
    func legueIsPicked(legueType: String){
        player.desiredLegue = legueType
        nextBtn.isEnabled = true
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let skillVC = segue.destination as? SkillVC{
            skillVC.skillPlayer = player
        }
    }
}
