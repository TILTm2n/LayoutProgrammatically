//
//  ViewController.swift
//  LayoutCode
//
//  Created by Eugene on 15.01.2022.
//

import UIKit

class ViewController: UIViewController {
    
    let button = UIButton()
    let tabButton = UIButton()
    
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
        
        tabButton.frame = CGRect(x: 100, y: 145, width: 200, height: 40)
        view.addSubview(tabButton)
        tabButton.backgroundColor = .orange
        tabButton.layer.cornerRadius = 10
        tabButton.setTitle("to tab controller", for: .normal)
        tabButton.setTitleColor(.black, for: .normal)
        tabButton.addTarget(self, action: #selector(didTapTabButton), for: .touchUpInside)
        
    }
    
    @objc func didTapButton(){
        let rootVC = SecondVC()
        let navVC = UINavigationController(rootViewController: rootVC)
        navVC.navigationBar.backgroundColor = .cyan
        navVC.modalPresentationStyle = .fullScreen
        present(navVC, animated: true, completion: nil)
        
    }
    
    @objc func didTapTabButton(){
        let thirdVC = UINavigationController(rootViewController: ThirdViewController())
        let fourthVC = UINavigationController(rootViewController: FourthViewController())
        
        var thirdTabBarItem = UITabBarItem()
        thirdTabBarItem = UITabBarItem(tabBarSystemItem: .bookmarks, tag: 0)
        
        var fourthTabBarItem = UITabBarItem()
        fourthTabBarItem = UITabBarItem(tabBarSystemItem: .downloads, tag: 1)
        
        thirdVC.tabBarItem = thirdTabBarItem
        fourthVC.tabBarItem = fourthTabBarItem
        
        let tabBC = UITabBarController()
        tabBC.modalPresentationStyle = .fullScreen
        tabBC.setViewControllers([thirdVC, fourthVC], animated: true)
        present(tabBC, animated: true, completion: nil)
        
        
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
        button.layer.cornerRadius = CGFloat(6.0)
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

class ThirdViewController: UIViewController{
    
    override func viewDidLoad() {
        view.backgroundColor = .white
        
    }
}

class FourthViewController: UIViewController{
    
    override func viewDidLoad() {
        view.backgroundColor = .white
        
        
    }
}
