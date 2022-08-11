//
//  ViewController.swift
//  Practice
//
//  Created by Artem Tkachenko on 25.07.2022.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let barista1 = Barista(name: "Bob")
        let guest1 = Guest(name: "Johnsson", coffeeName: "Espresso")
        let guest2 = Guest(name: "William", coffeeName: "Americano")
        let guest3 = Guest(name: "Oliver", coffeeName: nil)
        let guests = [guest1, guest2, guest3]
        
        let starbucks = CoffeeHouse(guests: guests, barista: barista1)
        starbucks.enterCoffeShop()

    }
    
 
}

