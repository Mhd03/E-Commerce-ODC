//
//  vc1.swift
//  E-Commerce
//
//  Created by Mohammad Abd El-Fattah Mohammd on 24/07/2023.
//

import UIKit

class vc1: UIViewController {

    @IBOutlet weak var b1: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        // Do any additional setup after loading the view.
    }
   
        
        
    @IBAction func b1(_ sender: Any) {
        let vc = UIStoryboard(name:"Main", bundle:nil).instantiateViewController(withIdentifier: "vc2") as! vc2
        navigationController?.pushViewController(vc, animated: true)
        
    }
    
}
   
    //let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(identifier: "vc2") as vc2 //1
   
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */


