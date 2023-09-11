//
//  vc3.swift
//  E-Commerce
//
//  Created by Mohammad Abd El-Fattah Mohammd on 24/07/2023.
//

import UIKit

class vc3: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func b3(_ sender: Any) {
        let vc2 = UIStoryboard(name:"Main", bundle:nil).instantiateViewController(withIdentifier: "vc4") as! vc4
        navigationController?.pushViewController(vc2, animated: true)

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
