//
//  Structures.swift
//  Practice
//
//  Created by Artem Tkachenko on 09.08.2022.
//

import Foundation

struct Barista: AcceptOdrer, MakingСoffee {
    var name: String
    func acceptOrder() {
        print("\(name) accepted the orders!")
    }
    
    func makeCoffee() {
        print("\(name) is making your coffee!")
    }
}

struct Guest: MakingOrder, Drink {
    var name: String
    var coffeeName: String?
    func makeOrder() {
        if coffeeName == nil {
            print("\(name) didn't order anything!")
        } else {
            print("\(name) orders \(coffeeName ?? "")!")
        }
    }
    func drinkCoffe() {
        if coffeeName != nil {
            print("\(name) is drinking \(coffeeName ?? "")!")
        }
    }
    
    func expressionOfEmotions() {
        if coffeeName != nil {
            print("\(name) says it's the perfect \(coffeeName ?? "")!")
        }
    }
}

extension Guest {
    func takeOrder() {
        if coffeeName != nil {
            print("\(name) tooks his \(coffeeName ?? "")!")
        }
    }
}

class CoffeeHouse {
    var guests: [Guest]
    var barista: Barista
    
    init(guests: [Guest], barista: Barista) {
        self.guests = guests
        self.barista = barista
    }
    
    func enterCoffeShop() {
        for guest in guests {
            guest.makeOrder()
        }
        print()
        barista.acceptOrder()
        barista.makeCoffee()
        print()
        
        for guest in guests {
            guest.takeOrder()
            guest.drinkCoffe()
            guest.expressionOfEmotions()
        }

    }
}
