//
//  SimpraButton.swift
//  uikitexample
//
//  Created by Tunahan Aydınoğlu on 9.01.2023.
//

import UIKit

class SimpraButton: UIButton{

  override init(frame: CGRect) {
    super.init(frame: frame)

    configure()
  }

  required init?(coder: NSCoder) {
    super.init(coder: coder)
  }

  private func configure(){
    self.translatesAutoresizingMaskIntoConstraints = false
    self.backgroundColor = .red
    self.setTitle("Deneme", for: .normal)
    NSLayoutConstraint.activate([
      self.widthAnchor.constraint(equalToConstant: 150),
      self.heightAnchor.constraint(equalToConstant: 50)
    ])
  }
}

extension UIView{
  enum Position {
    case center
    case start
    case custom(val: CGFloat)
  }

	func pinToSuperView(position: Position = .center) {
		guard let superview = superview else{
			return
		}

    switch position{
    case .center:
      self.centerXAnchor.constraint(equalTo: superview.centerXAnchor).isActive = true
      self.centerYAnchor.constraint(equalTo: superview.centerYAnchor).isActive = true
    case .start:
      self.topAnchor.constraint(equalTo: superview.topAnchor).isActive = true
      self.leadingAnchor.constraint(equalTo: superview.leadingAnchor).isActive = true
    case let .custom(val):
      self.topAnchor.constraint(equalTo: superview.topAnchor, constant: val).isActive = true
      self.leadingAnchor.constraint(equalTo: superview.leadingAnchor, constant: val).isActive = true
		}
  }
}
