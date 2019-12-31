//
//  ViewController.swift
//  TableViews_DataPassing
//
//  Created by Apple on 12/29/19.
//  Copyright © 2019 HamzaMustafa. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var arrLabel1 = ["Tandoori Chicken","Pan Cake","Nuggets","Burger","Channa Chaat","Papri","Veges1","Veges2"]
    var arrLabel2 = ["1","2","3","4","5","6","7","8"]
    var arrImg = [#imageLiteral(resourceName: "yellow.jpeg"),#imageLiteral(resourceName: "green"),#imageLiteral(resourceName: "yellow"),#imageLiteral(resourceName: "green"),#imageLiteral(resourceName: "yellow"),#imageLiteral(resourceName: "green"),#imageLiteral(resourceName: "yellow"),#imageLiteral(resourceName: "green")]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

extension ViewController : UITableViewDataSource , UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrLabel1.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as! MyTableViewCell
        cell.title_text.text = arrLabel1[indexPath.row]
        cell.subtitle_text.text = arrLabel2[indexPath.row]
        cell.Image_icon.image = arrImg[indexPath.row]
        return cell
    }
    
    //it loop out same sections data to multiple times
    func numberOfSections(in tableView: UITableView) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let detailVc = self.storyboard?.instantiateViewController(withIdentifier: "detail_id") as! DetailViewController
        detailVc.mainTitle = arrLabel1[indexPath.row]
        detailVc.subTitle = arrLabel2[indexPath.row]
        detailVc.mainImage = arrImg[indexPath.row]
        
        self.navigationController?.pushViewController(detailVc, animated: true)
        
    }
    
    
    func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        
        //setting initial cell
        cell.alpha = 0
        
        //left to right transition
        let transformed = CATransform3DTranslate(CATransform3DIdentity, -250 , 20 , 0 )
        cell.layer.transform = transformed
        
        //setting fadding animation on sections data
        UIView.animate(withDuration: 1.0) {
            cell.alpha = 4.0
            //running left to right animation
            cell.layer.transform = CATransform3DIdentity
        }
        
        
        
    }
    
    
    
    
}

