//
//  StoriesCell.swift
//  Instagram
//
//  Created by Ahmed Ibrahim on 7/5/19.
//  Copyright © 2019 Ahmed Ibrahim. All rights reserved.
//

import UIKit

class StoriesCell: UITableViewCell , UICollectionViewDelegate, UICollectionViewDataSource , UICollectionViewDelegateFlowLayout {
    

    
   
    
    @IBOutlet weak var collectionView: UICollectionView!
    
   
    override func awakeFromNib() {
        super.awakeFromNib()
        
        
        collectionView.delegate = self
        collectionView.dataSource = self
       
    }
    
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "photo", for: indexPath)
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 9
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 60, height: 60)
    }
    
  

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
