//
//  ViewController.swift
//  CarOptionMiniAppTabitaS
//
//  Created by Tabita Sadiq on 2/7/24.
//

import UIKit

class ViewController: UIViewController {
    // MARK: Variables
    
    @IBOutlet weak var WhiteCar: UIButton!
    @IBOutlet weak var BlackCar: UIButton!
    @IBOutlet weak var MaroonCar: UIButton!
    
    
    
    //Car Labels
    @IBOutlet weak var WhiteCarDetails: UILabel!
    
    @IBOutlet weak var BlackCarDetails: UILabel!
    
    @IBOutlet weak var MaroonCarDetails: UILabel!
    
    

    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // labels hidden until clicked by using .isHidden = true
        WhiteCarDetails.isHidden = true
        BlackCarDetails.isHidden = true
        MaroonCarDetails.isHidden = true
        
        
        
        
        // MARK: Background
        let backGround = UIImageView(frame: UIScreen.main.bounds)
        backGround.image = UIImage(named: "DALL·E-Toyota Highlander") //saved img name
        backGround.contentMode = UIView.ContentMode.scaleAspectFill
        self.view.insertSubview(backGround, at: 0)
    }
    
    
    
    
    
    
    
    ///HERE @ibaction func
    @IBAction func WhiteCarDetails(_ sender: Any) {
        carDetails(label: WhiteCarDetails, color: "White", year: 2022, Model: "XLE", price: "$35,000", Engine: "3.5L V6", Milage: "10,000 miles")
    }
    
    @IBAction func BlackCarDetails(_ sender: Any) {
        carDetails(label: BlackCarDetails, color: "Black", year: 2018, Model: "LE", price: "$28,500", Engine: "2.7L 4-cylinder", Milage: "$30,000 miles")
    }
    
    @IBAction func MaroonCarDetails(_ sender: Any) {
        carDetails(label: MaroonCarDetails, color: "Maroon", year: 2020, Model: "Limited", price: "$40,000", Engine: "3.5L V6 Hybrid", Milage: "15,000 miles")
    }
    
    
    
    
    //Function for car details
    func carDetails(label: UILabel, color:
                   String, year: Int, Model: String, price: String, Engine: String, Milage: String) {
        label.text = "Color: \(color)\nModel Year: \(year)\nPrice: \(price)\nEngine: \(Engine)\nMilage: \(Milage)"
        label.isHidden = false
        
        //Show Labels now
       
    }
        

       
    }




