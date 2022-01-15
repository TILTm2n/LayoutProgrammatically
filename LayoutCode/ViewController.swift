//
//  ViewController.swift
//  LayoutCode
//
//  Created by Eugene on 15.01.2022.
//

import UIKit

class ViewController: UIViewController {
    
    let button = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .tintColor
        button.frame = CGRect(x: 100, y: 100, width: 200, height: 40)
        view.addSubview(button)
        button.backgroundColor = .blue
        button.layer.cornerRadius = CGFloat(5.0)
        button.setTitle("to nav controller", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.addTarget(self, action: #selector(didTapButton), for: .touchUpInside)
        
    }
    
    @objc func didTapButton(){
        let rootVC = SecondVC()
        let navVC = UINavigationController(rootViewController: rootVC)
        navVC.navigationBar.backgroundColor = .cyan
        
        present(navVC, animated: true, completion: nil)
        
    }


}

class SecondVC: UIViewController{
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .orange
        title = "Welcome"
    }
}

