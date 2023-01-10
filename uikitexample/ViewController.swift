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
		
		let layout =	 getUICollectionViewLayout()
		let uiCollectionView = SimpraCollectionView(frame: CGRect(x: 0, y: 0, width: UIScreen.main.bounds.width, height: view.frame.height), collectionViewLayout: layout)

		view.addSubview(uiCollectionView)
  }


	private func getUICollectionViewLayout() -> UICollectionViewFlowLayout {
	 let layout = UICollectionViewFlowLayout()
	 layout.scrollDirection = .vertical
	 layout.sectionInset = UIEdgeInsets(top: 0, left: 10, bottom: 0, right: 10)
	 layout.minimumLineSpacing = 10
	 return layout
 }
}
