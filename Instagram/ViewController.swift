//
//  ViewController.swift
//  Instagram
//
//  Created by Ahmed Ibrahim on 7/5/19.
//  Copyright © 2019 Ahmed Ibrahim. All rights reserved.
//

import UIKit
import InstagramKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    

    @IBOutlet weak var myTableView: UITableView!
    
    let likes = [ "553 likes", "110 likes", "5000 likes", "4165 likes", "656 likes", "348 likes", "283 likes" , "392 likes" , "12310 likes"]
    
    let name = "Muaz Mohamed"
    
    let caption = [ "#Horse", "#G.O.A.T", "#Super Madera", "#Master of curl", "#Magic", "#History of english football", "#Master" , "#Diver" , "#Best wall"]
    
    let comments = [ "view all 112 comments" ,  "view all 33563 comments", "view all 5230 comments" ,  "view all 890 comments" ,  "view all 77 comments" ,  "view all 787 comments" ,  "view all 9870 comments" , "view all 2410 comments",  "view all 3986 comments",  "view all 231 comments"]
    
    let pics = [UIImage(named: "Mbappe") , UIImage(named: "Messi") , UIImage(named: "Ronaldo") , UIImage(named: "Beckham") , UIImage(named: "Griezmann") , UIImage(named: "Rooney") , UIImage(named: "Mahrez"), UIImage(named: "Neymar"), UIImage(named: "Buffon")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        myTableView.delegate = self
        myTableView.dataSource = self
       
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if(indexPath.row == 0){
            let cell = myTableView.dequeueReusableCell(withIdentifier: "StoriesCell", for: indexPath) as! StoriesCell
            
            return cell
        }
        
            let cell = myTableView.dequeueReusableCell(withIdentifier: "InformationCell") as! InformationCell
        
        cell.SecondImageLabel.image = pics[indexPath.row]
        cell.FirstLabel.text = name
        cell.SecondLabel.text = likes[indexPath.row]
        cell.ThirdLabel.text = name
        cell.FourthLabel.text = comments[indexPath.row]
        cell.FifthLabel.text = caption[indexPath.row]
            
            return cell
        
    }
    
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 9
    }


}

