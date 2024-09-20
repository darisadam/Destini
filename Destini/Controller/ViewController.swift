//
//  ViewController.swift
//  Destini
//
//  Created by Adam Daris Ryadhi on 20/09/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var option1: UIButton!
    @IBOutlet weak var option2: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }
    
    var storyBrain = StoryBrain()
    
    @IBAction func optionPressed(_ sender: UIButton) {
        storyBrain.nextStory(userInput: sender.currentTitle!)
        updateUI()
    }
    
    func updateUI() {
        storyLabel.text = storyBrain.getStory()
        option1.setTitle(storyBrain.getOption1(), for: .normal)
        option2.setTitle(storyBrain.getOption2(), for: .normal)
    }
    
}

