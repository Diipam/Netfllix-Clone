//
//  CollectionViewTableViewCell.swift
//  Netflix-Clone
//
//  Created by Smart Solar Nepal on 22/09/2023.
//

import UIKit

class CollectionViewTableViewCell: UITableViewCell {

//    Static halda kheri chai ewta unique instance banxa which can be called later on
    static let identifier = "CollectionViewTableViewCell"

//    THIS FUNCTION HELPS TO CREATE A NEW LAYOUT
    private let collectionView : UICollectionView = {

//        this layout function helps to determine that the ui collection view is a flow layout
        let layout = UICollectionViewFlowLayout()

//        sets the frame of the cell inside the collectionview to be the following size
        layout.itemSize = CGSize(width: 140, height: 200)

//        sets the scroll towards horizontal
        layout.scrollDirection = .horizontal

//  helps to re
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.register(UICollectionViewCell.self, forCellWithReuseIdentifier: "cell")
        return collectionView

    }()

//    initiaalizing the UITABLEVIEWCEll with the init propety
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        contentView.backgroundColor = .red
        contentView.addSubview(collectionView)

        collectionView.dataSource = self
        collectionView.delegate = self
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

//    this func helps to determine the subviews within the main view 
    override func layoutSubviews() {
        super.layoutSubviews()
        collectionView.frame = contentView.bounds

    }
}

// creating the viewdeligate and data souce protocals after implementing the datasoucr and delegate self


extension CollectionViewTableViewCell : UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 20
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath)
        cell.backgroundColor = .green
        return cell
    }

}

