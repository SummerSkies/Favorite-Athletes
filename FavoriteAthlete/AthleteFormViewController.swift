//
//  AthleteFormViewController.swift
//  FavoriteAthlete
//
//  Created by Juliana Nielson on 3/3/23.
//

import UIKit

class AthleteFormViewController: UIViewController {

    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var ageTextField: UITextField!
    @IBOutlet weak var leagueTextField: UITextField!
    @IBOutlet weak var teamTextField: UITextField!
    
    var athlete: Athlete?
    
    init?(coder: NSCoder, athlete: Athlete?) {
        super.init(coder: coder)
        self.athlete = athlete
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateView()
    }
    
    func updateView() {
        if athlete != nil {
            nameTextField.text = athlete?.name
            ageTextField.text = athlete?.age
            leagueTextField.text = athlete?.league
            teamTextField.text = athlete?.team
        }
    }

    @IBAction func saveButtonPressed(_ sender: UIButton) {
        guard let name = nameTextField.text,
              let ageString = ageTextField.text,
              let league = leagueTextField.text,
              let team = teamTextField.text else { return }
        
        athlete = Athlete(name: name, age: ageString, league: league, team: team)
        
        performSegue(withIdentifier: "unwindForm", sender: self)
    }
}
