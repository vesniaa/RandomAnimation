//
//  ViewController.swift
//  RandomAnimation
//
//  Created by Евгения Аникина on 05.04.2022.
//

import Spring

class ViewController: UIViewController {

    // MARK: - IB Outlets
    @IBOutlet var animationView: SpringLabel!
    @IBOutlet var animationLabel: UILabel!
    
    // MARK: - Private properties
    private var animation = Animation.getRandomAnimation()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        animationLabel.text = animation.description
    }

    // MARK: - IB Action
    @IBAction func animationButtonTapped(_ sender: UIButton) {
        animationLabel.text = animation.description
        
        animationView.animation = animation.name
        animationView.curve = animation.curve
        animationView.force = CGFloat(animation.force)
        animationView.duration = CGFloat(animation.duration)
        animationView.delay = CGFloat(animation.delay)
        animationView.animate()
        
        animation = Animation.getRandomAnimation()
        sender.setTitle("Run \(animation.name)", for: .normal)
    }
}

