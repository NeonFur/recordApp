//
//  ViewController.swift
//  recordApp
//
//  Created by Dylan Beasley on 4/3/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var topView: UIView!
    @IBOutlet weak var topImage: UIImageView!
    @IBOutlet weak var bottomView: UIView!
    @IBOutlet weak var bottomImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        transformImages()
    }

    func transformImages(){
        var rAndPTransform = CATransform3DIdentity
        rAndPTransform.m34 = 1.0 / -500
        rAndPTransform = CATransform3DRotate(rAndPTransform, -45.0 * CGFloat(Double.pi), 100.0, 1.0, 0.0)
        self.topView.layer.transform = rAndPTransform
        UIGraphicsBeginImageContextWithOptions(topView.bounds.size, false, 0.0)
        view.drawHierarchy(in: topImage.bounds, afterScreenUpdates: true)
        UIGraphicsEndImageContext()
    }
    func transformImages2(){
        var rAndPTransform = CATransform3DIdentity
        rAndPTransform.m34 = 1.0 / -500
        rAndPTransform = CATransform3DRotate(rAndPTransform, 45.0 * CGFloat(Double.pi), 100.0, 1.0, 0.0)
        self.bottomView.layer.transform = rAndPTransform
        UIGraphicsBeginImageContextWithOptions(bottomView.bounds.size, false, 0.0)
        view.drawHierarchy(in: bottomImage.bounds, afterScreenUpdates: true)
        UIGraphicsEndImageContext()
    }
}

