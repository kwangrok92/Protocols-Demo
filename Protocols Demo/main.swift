protocol CanFly {
    func fly()
}


class Bird {
    var isFemale = true
    
    func layEgg() {
        if isFemale {
            print("Lay egg.")
        }
    }
}

class Eagle: Bird, CanFly {
    func fly() {
        print("Eagle fly.")
    }
    
    func soar() {
        print("Soar.")
    }
}

class Penguin: Bird {
    func swim() {
        print("Swim.")
    }
}

struct FlyingMuseum {
    func flyingDemo(flyingObject: CanFly) {
        flyingObject.fly()
    }
}

struct Airplane: CanFly {
    func fly() {
        print("Airplane fly.")
    }
}


let myEagle = Eagle()
let myPenguin = Penguin()
let myPlane = Airplane()
myEagle.fly()

let museum = FlyingMuseum()
museum.flyingDemo(flyingObject: myPlane)

