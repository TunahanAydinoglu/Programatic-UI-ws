//
//  ViewController.swift
//  uikitexample
//
//  Created by Tunahan Aydınoğlu on 4.01.2023.
//

import UIKit

class ViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()
		
    view.backgroundColor = .white
    let button: SimpraButton = SimpraButton()

    view.addSubview(button)
		button.pinToSuperView(position: .center)
  }

}

