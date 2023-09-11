//
//  Home.swift
//  E-Commerce
//
//  Created by Mohammad Abd El-Fattah Mohammd on 31/07/2023.
//

import UIKit





class Home: UIViewController, UICollectionViewDelegate,UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return (shoparray?.count)!
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "shopCell", for: indexPath) as! shopCell
        
        cell.ticell.text = shoparray![indexPath.row].title
        
        
        
        
        
        return cell
    }
    

    var shoparray:[EcommerceElement]?
        
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        shoparray = [EcommerceElement]()
        
        let url = URL(string: "https://fakestoreapi.com/products")
          let request = URLRequest(url: url!)
          let session = URLSession(configuration: URLSessionConfiguration.default)
          let task = session.dataTask(with: request) {(data , response, error) in
            print(data)
            print("data has arrived successfully")
              
              
              
              do {
                  
                  var json = try JSONSerialization.jsonObject(with: data!, options: .allowFragments) as! Array<Dictionary<String,Any>>
                  
                  
                
            for rawShop in json {
                
                var shopObj = EcommerceElement()
                shopObj.id =  rawShop["id"] as? Int
                shopObj.title =  rawShop["title"] as? String
                shopObj.price =  rawShop["price"] as? Double
                shopObj.description =  rawShop["description"] as? String
                shopObj.image =  rawShop["image"] as? String
                
                
                self.shoparray?.append(shopObj)
                
                
                
                
                  }
               
                  
                  
                  
              }catch{
                  
                  
                  
                  
                  print(error)
                  
                  
              }
              
              
          }
        
        
        
        task.resume()
    
    
    
    }



    
    
    
    
    
    
    
    
    
    


    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */


