//
//  vc2.swift
//  E-Commerce
//
//  Created by Mohammad Abd El-Fattah Mohammd on 24/07/2023.
//

import UIKit

class vc2: UIViewController {
    

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.navigationBar.isHidden = true
        // Do any additional setup after loading the view.
    }
  
    
    @IBAction func b2(_ sender: Any) {
        let vc1 = UIStoryboard(name:"Main", bundle:nil).instantiateViewController(withIdentifier: "vc3") as! vc3
        navigationController?.pushViewController(vc1, animated: true)

    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
