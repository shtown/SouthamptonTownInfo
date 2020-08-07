//
//  DataViewController.swift
//  SouthamptonTownInfo
//
//  Created by Southampton Dev on 6/29/17.
//  Copyright © 2017 TOS. All rights reserved.
//

import UIKit
import SafariServices

class DataViewController: UIViewController {

   // @IBOutlet weak var dataLabel: UILabel!
    var dataObject: String = ""
 

    override func viewDidLoad() {
        super.viewDidLoad()
    }


    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        //self.dataLabel!.text = dataObject 
    }

    
    @IBAction func sosClicked(_ sender: Any) {
        
        let url = URL(string: "https://gis.southamptontownny.gov/sos")
        let safariVC: SFSafariViewController = SFSafariViewController(url: url!)
        
        self.present(safariVC, animated: true, completion: nil)    }
    
   @IBAction func infoCenterClicked(_ sender: Any){
        
        
        let url = URL(string: "https://gis.southamptontownny.gov/infocenter")
        let safariVC: SFSafariViewController = SFSafariViewController(url: url!)
        
        self.present(safariVC, animated: true, completion: nil)
    
    }
 
    
    @IBAction func ePortalClicked(_ sender: Any) {
    
        let url = URL(string: "https:/eportal.southamptontownny.gov")
        let safariVC: SFSafariViewController = SFSafariViewController(url: url!)
        
        self.present(safariVC, animated: true, completion: nil)
    }

    @IBAction func salesMapClicked(_ sender: Any) {
     
        let url = URL(string: "https://gis.southamptontownnygov/sales")
        let safariVC: SFSafariViewController = SFSafariViewController(url: url!)
        
        self.present(safariVC, animated: true, completion: nil)
    }
    
    @IBAction func historicMapClicked(_ sender: Any) {
    
        let url = URL(string: "https://gis.southamptontownny.gov/historic")
        let safariVC: SFSafariViewController = SFSafariViewController(url: url!)
        
        self.present(safariVC, animated: true, completion: nil)
    }
    
    @IBAction func evacZonesClicked(_ sender: Any) {
        
        let url = URL(string: "https://gis.southamptontownny.gov/evaclocator")
        let safariVC: SFSafariViewController = SFSafariViewController(url: url!)
        
        self.present(safariVC, animated: true, completion: nil)
    }
    
    
    
}

