//
//  SimpraCollectionView.swift
//  uikitexample
//
//  Created by Tunahan Aydınoğlu on 10.01.2023.
//

import UIKit

let names: [String] = ["Kamil","Mahmut","Melih","Kamil","Mahmut","Melih","Kamil","Mahmut","Melih","Kamil","Mahmut","Melih","Hakan"]

class SimpraCollectionView: UICollectionView {

	override init(frame: CGRect, collectionViewLayout layout: UICollectionViewLayout) {
		super.init(frame: frame, collectionViewLayout: layout)

		configure()
	}
	
	required init?(coder: NSCoder) {
		super.init(coder: coder)
	}

	private func configure() {
		self.translatesAutoresizingMaskIntoConstraints = false
		self.backgroundColor = .systemBrown
		self.register(UICollectionViewCell.self, forCellWithReuseIdentifier: "identifier")
		self.dataSource = self
		self.delegate = self
	}
}

extension SimpraCollectionView: UICollectionViewDataSource{
	func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
		return names.count
	}

	func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
		let cell = self.dequeueReusableCell(withReuseIdentifier: "identifier", for: indexPath)
		cell.backgroundColor = UIColor.blue
		return cell
	}
}

extension SimpraCollectionView: UICollectionViewDelegate, UICollectionViewDelegateFlowLayout{
	func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
		print(names[indexPath.row])
	}
	
	func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
		return .init(width: collectionView.frame.width/2 - 20, height: self.frame.height/4)
	}
}
