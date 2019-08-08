//
//  MovieInfoViewController.swift
//  Aflamy App
//
//  Created by Ahmad Sameh on 8/7/19.
//  Copyright © 2019 Ahmad Sameh. All rights reserved.
//

import UIKit
import SDWebImage
import Cosmos

class MovieInfoViewController: UIViewController {
    
    
    
    
    @IBOutlet weak var movieReleaseYearOutlet: UILabel!
    @IBOutlet weak var movieTitleOutlet: UILabel!
    @IBOutlet weak var movieImageView: UIImageView!
    var movieTitleLabel : String = ""
    var movieRatingLabel : Float = 0.0
    var movieReleaseDateLabel : Int64 = 0
    var movieImageName : String = ""
    var movieGenreArr : [String] = [""]

    @IBOutlet weak var movieGenreOutlet: UILabel!
    @IBOutlet weak var cosmos: CosmosView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        movieTitleOutlet.text = movieTitleLabel

        movieReleaseYearOutlet.text="\(movieReleaseDateLabel)"
        movieImageView.sd_setImage(with: URL(string: movieImageName), placeholderImage: UIImage(named: "loading.png"))

        movieGenreOutlet.text = movieGenreArr.joined(separator: " , ")

        
        cosmos.rating = (Double(movieRatingLabel)/2)

        
        
    }


}
extension UIView {
    
    func dropShadow() {
        self.layer.masksToBounds = false
        self.layer.shadowColor = UIColor.black.cgColor
        self.layer.shadowOpacity = 0.5
        self.layer.shadowOffset = CGSize(width: -1, height: 1)
        self.layer.shadowRadius = 1
        self.layer.shadowPath = UIBezierPath(rect: self.bounds).cgPath
        self.layer.shouldRasterize = true
        self.layer.rasterizationScale = UIScreen.main.scale
        
    }
}
