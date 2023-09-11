//
//  CustomCatView.swift
//  E-Commerce
//
//  Created by Mohammad Abd El-Fattah Mohammd on 31/07/2023.
//

import UIKit

//@IBDesignable


final class CustomCatView: UIView {

    
    
    @IBOutlet private weak var catButt: UIButton!
    
    
    
    override init(frame: CGRect){
        super.init(frame: frame)
        self.configureView()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        self.configureView()

    }
    
    private func configureView() {
        guard let view = self.loadViewFromNib(nibName: "CustomCatView") else {return}
        view.frame = self.bounds
        self.addSubview(view)
    }

    func configureView(title: String) {
        self.catButt.addTarget(self, action: #selector(catButtTa), for: .touchUpInside)
        
        
        
    }


    @IBAction func catButtTa(_ sender: Any) {
    }
    

}
