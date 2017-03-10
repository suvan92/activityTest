//
//  ViewController.swift
//  NVActivityViewTest
//
//  Created by Suvan Ramani on 2017-03-09.
//  Copyright © 2017 BioConsciousTech. All rights reserved.
//

import UIKit
import NVActivityIndicatorView

class ViewController: UIViewController {
    
    let activityView = NVActivityIndicatorView(frame: CGRect.zero, type: .ballSpinFadeLoader, color: UIColor.red, padding: CGFloat(0))
    let startButton = UIButton()
    let stopButton = UIButton()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        startButton.addTarget(self, action: #selector(startAnimating), for: .touchUpInside)
        stopButton.addTarget(self, action: #selector(stopAnimating), for: .touchUpInside)
        activityView.color = UIColor.blue
        setLayout()
    }
    
    func setLayout() {
        
        activityView.translatesAutoresizingMaskIntoConstraints = false
        startButton.translatesAutoresizingMaskIntoConstraints = false
        stopButton.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(activityView)
        view.addSubview(startButton)
        view.addSubview(stopButton)
        
        let heightConstraint = NSLayoutConstraint(
            item: activityView, attribute: .height,
            relatedBy: .equal, toItem: nil, attribute: .notAnAttribute,
            multiplier: 1, constant: 100
        )
        let widthConstraint = NSLayoutConstraint(
            item: activityView, attribute: .width,
            relatedBy: .equal, toItem: nil, attribute: .notAnAttribute,
            multiplier: 1, constant: 100
        )
        let xConstraint = NSLayoutConstraint(
            item: activityView, attribute: .centerX,
            relatedBy: .equal, toItem: view, attribute: .centerX,
            multiplier: 1, constant: 0
        )
        let yConstraint = NSLayoutConstraint(
            item: activityView, attribute: .centerY,
            relatedBy: .equal, toItem: view, attribute: .centerY,
            multiplier: 1, constant: 0
        )
        
        view.addConstraints([
            heightConstraint,
            widthConstraint,
            xConstraint,
            yConstraint
        ])
        
        startButton.setTitle("Start", for: .normal)
        startButton.setTitleColor(UIColor.green, for: .normal)
        
        let startX = NSLayoutConstraint(
            item: startButton, attribute: .centerX,
            relatedBy: .equal, toItem: view, attribute: .centerX,
            multiplier: 0.5, constant: 0
        )
        let startY = NSLayoutConstraint(
            item: startButton, attribute: .centerY,
            relatedBy: .equal, toItem: view, attribute: .centerY,
            multiplier: 0.5, constant: 0
        )
        
        view.addConstraints([
            startX,
            startY
        ])
        
        stopButton.setTitle("Stop", for: .normal)
        stopButton.setTitleColor(UIColor.red, for: .normal)
        
        let stopX = NSLayoutConstraint(
            item: stopButton, attribute: .centerX,
            relatedBy: .equal, toItem: view, attribute: .centerX,
            multiplier: 1.5, constant: 0
        )
        let stopY = NSLayoutConstraint(
            item: stopButton, attribute: .centerY,
            relatedBy: .equal, toItem: view, attribute: .centerY,
            multiplier: 0.5, constant: 0
        )
        
        view.addConstraints([
            stopX,
            stopY
        ])
    }
    
    func startAnimating() {
        activityView.startAnimating()
    }
    
    func stopAnimating() {
        activityView.stopAnimating()
    }


}

