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
        navVC.modalPresentationStyle = .fullScreen
        present(navVC, animated: true, completion: nil)
        
    }
}

class SecondVC: UIViewController{
    
    private let button = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .orange
        title = "Welcome"
        
        navigationItem.leftBarButtonItem = UIBarButtonItem(title: "Dismiss",
                                                                  style: .plain,
                                                                  target: self,
                                                                  action: #selector(dismissSelf))
        
        button.frame = CGRect(x: 70, y: 100, width: 300, height: 40)
        view.addSubview(button)
        button.backgroundColor = .blue
        button.layer.cornerRadius = CGFloat(5.0)
        button.setTitle("push another controller", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.addTarget(self, action: #selector(didTapButton), for: .touchUpInside)
    }
    
    @objc private func didTapButton(){
        let vc = UIViewController()
        vc.view.backgroundColor = .green
        vc.title = "another VC"
        navigationController?.pushViewController(vc, animated: true)
    }
    
    @objc private func dismissSelf(){
        dismiss(animated: true, completion: nil)
    }
        
}

