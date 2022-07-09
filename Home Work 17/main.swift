//
//  main.swift
//  Home Work 17
//
//  Created by Rafik on 08.07.22.
//

import Foundation


//1. Ստեղծել բազային (base) class Person հետևյալ փրոփրտիով name, Ստեղծել class Chef որը կժառանգվի Person -ից և ունի հետևյալ փրոփրտիները restaurant, phoneNumber, Ստեղծել class Developer որը կժառանգվի Person -ից և ունի հետևյալ փրոփրտիները office, phoneNumber: Ստեղծել  Chef և Developer կլասներոց հինգական էկզեմպլյար դրանք տեղադրել մասիվի մեջ (բոլորը նույն մասիվի մեջ) ցիկլով անցնել էկզեմպլյարների վրայով և տպել էկզեմպլյարների name փրոփրտին, աշխատանքի վայրը և հեռախոսահամարը։




class Person {

    var name: String

    init(name: String) {
        self.name = name
    }
}

class Chef: Person {
    var restaurant: String
    var phoneNumber: String
    
    init(name: String, restaurant: String, phoneNumber: String){
        self.restaurant = restaurant
        self.phoneNumber = phoneNumber
        super.init(name:name)
    }
}


class Developer:Person {
    
    var office: String
    var phoneNumber: String
    
     init(name: String, office: String, phoneNumber: String) {
        self.office = office
        self.phoneNumber = phoneNumber
        super.init(name: name)
    }
}


let chef1  = Chef(name: "Raf", restaurant: "Gyumri Rest.", phoneNumber: "+374 93 33 33 33")
let chef2  = Chef(name: "Onik", restaurant: "Burchoyi Mot Rest.", phoneNumber: "+374 93 44 44 44")
let chef3  = Chef(name: "Seroj", restaurant: "Mer Mot Rest.", phoneNumber: "+374 93 55 55 55")
let chef4  = Chef(name: "Aren", restaurant: "Lori Rest.", phoneNumber: "+374 93 66 66 66")
let chef5  = Chef(name: "Noro", restaurant: "Utox Xmoxneri Rest.", phoneNumber: "+374 93 77 77 77")


let dev1 = Developer(name: "Siranush", office: "Gitc", phoneNumber: "+374 94 44 44 44")
let dev2 = Developer(name: "Liana", office: "Gitc", phoneNumber: "+374 94 66 66 66")
let dev3 = Developer(name: "Raf", office: "Stats Perform", phoneNumber: "+374 94 77 77 77")
let dev4 = Developer(name: "Onik", office: "Disqo", phoneNumber: "+374 94 88 88 88")
let dev5 = Developer(name: "Seroj", office: "AAB", phoneNumber: "+374 94 99 99 99")


let personData: [Person] = [chef1, chef2, chef3, chef4, chef5, dev1, dev2, dev3, dev4, dev5]

for persons in personData {

if persons is Chef {
          let tempChef = persons as! Chef
    print( "Chef name:\(persons.name), \(tempChef.restaurant), Phone: \(tempChef.phoneNumber)" )
    
} else if persons is Developer {
        let tempDev = persons as? Developer
    print( "Developer name:\(persons.name), Office:\(tempDev!.office), Phone: \(tempDev!.phoneNumber)" )
  }
 
}


//2. Ստեղծել մասիվ Any որը պետք է պարունակի swift -ի բազային տիպերով ստեղծված արժեքներ Int, Double, Float, String
// ցիկլով տպել այդ արժեքները։

var sum1:Int = 10
var sum2:Double = 2.2
var sum3:Float = 3.3
var sum4:String = "Hello Gitc"

let sumsAarray: [Any] = [sum1, sum2, sum3, sum4]

for item in sumsAarray {
    print(item)
}



//3. Int-ի համար գրել Extension
//- plus(r: Int)
//- minus(r: Int)


extension Int {
    
   mutating func plus(r: Int) {
      self = self + r
    }
    
   mutating func minus(r: Int) {
       self = self - r
    }
}

sum1.minus(r: 3)
print(sum1)


//4. Double համար գրել Extension
//- plus(r: Double)
//- minus(r: Double)

extension Double {
    
   mutating func plus(r: Double) {
       self = self + r
    }
    
   mutating func minus(r: Double){
       self = self - r
    }
}

sum2.plus(r: 3.3)
print(sum2)
