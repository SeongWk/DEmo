//
//  imageview.swift
//  SingnUPapp
//
//  Created by SeongWookLim on 2022/05/09.
//

import UIKit
var imageNUm = 0
class imageviewController:UIViewController
{
   
    @IBOutlet weak var btnimg2: UIButton!
    @IBOutlet weak var image1: UIImageView!
    @IBOutlet weak var btnimg: UIButton!
    var img_name = ["2677.jpeg","2731.jpeg","2792.jpeg","6049.jpeg","8126.jpeg","2828.jpeg","2974.jpeg","3122.jpeg","3189.jpeg","3219.jpeg","6170.jpeg","6193.jpeg","2828.jpeg"]
    @IBAction func btnnext(_ sender: UIButton) {
        imageNUm = imageNUm - 1
        if(imageNUm<0)
        {
            
            imageNUm = img_name.count - 1
        }
        image1.image = UIImage(named: img_name[imageNUm])
        
    }
    @IBAction func btnbefore(_ sender: UIButton) {
        imageNUm = imageNUm + 1
        if(imageNUm>=img_name.count)
        {
            imageNUm = 0
        }
        image1.image = UIImage(named: img_name[imageNUm])
    }
    override func viewDidLoad() {
        super .viewDidLoad()
        image1.image = UIImage(named: img_name[0])
    }
    
}
