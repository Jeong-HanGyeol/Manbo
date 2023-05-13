//
//  ViewController.swift
//  Manbo
//
//  Created by 정한결 on 2023/05/12.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var containerView: UIView!
    
    var circularView: CircularProgressView!
    var duration: TimeInterval!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        circularView.center = view.center
        containerView.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(handleTap)))
        view.addSubview(circularView)
    }

    @objc func handleTap() {
        duration = 5    //Play with whatever value you want :]
        circularView.progressAnimation(duration: duration)
    }
}
