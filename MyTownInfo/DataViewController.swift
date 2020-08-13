//
//  DataViewController.swift
//  SouthamptonTownInfo
//
//  Created by Southampton Dev on 6/29/17.
//  Copyright © 2017 TOS. All rights reserved.
//

import UIKit
import SafariServices
import EasyTipView

class DataViewController: UIViewController {

   // @IBOutlet weak var dataLabel: UILabel!
    var dataObject: String = ""
    var preferences = EasyTipView.Preferences()
    
    @IBOutlet var infocenter: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        preferences.drawing.font = UIFont(name: "Futura-Medium", size: 13)!
        preferences.drawing.foregroundColor = UIColor.white
        preferences.drawing.backgroundColor = UIColor(hue:0.46, saturation:0.99, brightness:0.6,alpha:1)
        preferences.drawing.arrowPosition = EasyTipView.ArrowPosition.top
        
        preferences.positioning.bubbleHInset = CGFloat(1) 
        preferences.positioning.bubbleVInset = CGFloat(1)
    }


 
  
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        //self.dataLabel!.text = dataObject 
    }
    
    
    
    @IBAction func sosClicked(_ gesture: UITapGestureRecognizer) {
        
        let url = URL(string: "https://gis.southamptontownny.gov/sos")
        let safariVC: SFSafariViewController = SFSafariViewController(url: url!)
        
        self.present(safariVC, animated: true, completion: nil)    }
    
    
     
    @IBAction func infoCenterClicked(_ gesture: UIGestureRecognizer){

        let url = URL(string: "https://gis.southamptontownny.gov/infocenter")
        let safariVC: SFSafariViewController = SFSafariViewController(url: url!)
            
        self.present(safariVC, animated: true, completion: nil)
    }
 
    
    @IBAction func ePortalClicked(_ gesture: UITapGestureRecognizer) {
    
        let url = URL(string: "https:/eportal.southamptontownny.gov")
        let safariVC: SFSafariViewController = SFSafariViewController(url: url!)
        
        self.present(safariVC, animated: true, completion: nil)
    }

    @IBAction func salesMapClicked(_ gesture: UITapGestureRecognizer) {
     
          let url = URL(string: "https://gis.southamptontownny.gov/sales")
        let safariVC: SFSafariViewController = SFSafariViewController(url: url!)
        
        self.present(safariVC, animated: true, completion: nil)
    }
    
    @IBAction func historicMapClicked(_ gesture: UITapGestureRecognizer) {
    
        let url = URL(string: "https://gis.southamptontownny.gov/historic")
        let safariVC: SFSafariViewController = SFSafariViewController(url: url!)
        
        self.present(safariVC, animated: true, completion: nil)
    }
    
    @IBAction func evacZonesClicked(_ gesture: UITapGestureRecognizer) {
        
        let url = URL(string: "https://gis.southamptontownny.gov/evaclocator")
        let safariVC: SFSafariViewController = SFSafariViewController(url: url!)
        
        self.present(safariVC, animated: true, completion: nil)
    }
    
    
    
}

