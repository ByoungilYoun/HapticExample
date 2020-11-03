//
//  ViewController.swift
//  HapticsExample
//
//  Created by 윤병일 on 2020/11/04.
//

import UIKit

class ViewController: UIViewController {

  //MARK: - Properties
  private let button : UIButton = {
    let bt = UIButton()
    bt.setTitle("진동", for: .normal)
    bt.backgroundColor = .green
    bt.setTitleColor(.white, for: .normal)
    bt.addTarget(self, action: #selector(buttonClicked), for: .touchUpInside)
    return bt
  }()
  
  //MARK: - LifeCycle
  override func viewDidLoad() {
    super.viewDidLoad()
    
    view.addSubview(button)
    button.translatesAutoresizingMaskIntoConstraints = false
    button.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
    button.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
    button.heightAnchor.constraint(equalToConstant: 100).isActive = true
    button.widthAnchor.constraint(equalToConstant: 100).isActive = true
  }

  @objc private func buttonClicked() {
//    HapticsManager.shared.vibrate(for:.success)
//    HapticsManager.shared.vibrate(for: .error)
//    HapticsManager.shared.vibrate(for: .warning)
      HapticsManager.shared.selectionVibrate()
  }

}
