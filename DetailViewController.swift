//
//  DetailViewController.swift
//  TableViews_DataPassing
//
//  Created by Apple on 12/29/19.
//  Copyright © 2019 HamzaMustafa. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var d_title: UILabel!
    @IBOutlet weak var d_subtitle: UILabel!
    @IBOutlet weak var d_image: UIImageView!
    
    var mainTitle : String!
    var subTitle : String!
    var mainImage : UIImage!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        d_title.text = mainTitle
        d_subtitle.text = subTitle
        d_image.image = mainImage
        
    }
    

}
