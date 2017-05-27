//: Playground - noun: a place where people can play

import Cocoa

func addTo(_ adder: Int) -> (Int) -> Int {
    return {
        number in
        adder + number
    }
}


let addTwo = addTo(2)
let result = addTwo(6)


func greaterThan(_ compare: Int) -> (Int) -> Bool {
    return {$0 > compare}
}

let greaterThan10 = greaterThan(10)
let greater = greaterThan10(3)



//MARK: round 3
class BankAccount {
    var balance: Double = 0.0
    func deposit(amount: Double) {
        balance += amount
    }
}

let account = BankAccount()
account.deposit(amount: 100)
print(account.balance)

//depositor type: BankAccount -> (Double) -> ()
let depositor = BankAccount.deposit
depositor(account)(100)
print(account.balance)

let dep = BankAccount.deposit(account)(amount: 100)
print(account.balance)

protocol TargetAction {
    func performAction()
}

struct TargetActionWrapper<T:AnyObject>: TargetAction {
    weak var target: T?
    let action: (T) -> () -> ()
    
    func performAction() {
        if let t = target {
            action(t)()
        }
    }
}


enum ControlEvent {
    case TouchUpInside
    case ValueChanged
}

class Controll {
    var actions = [ControlEvent: TargetAction]()
    
    func setTarget<T: AnyObject>(target: T, action: @escaping (T) -> () -> (), controlEvent: ControlEvent) {
        actions[controlEvent] = TargetActionWrapper(target: target, action: action)
    }
    
    func removeTargetFromControlEvent(controlEvent: ControlEvent) {
        actions[controlEvent] = nil
    }
    
    func performActionFromControlEvent(controlEvent: ControlEvent) {
        actions[controlEvent]?.performAction()
    }
}

class MY {
    func touch() {
        print("hhah")
    }
}

let cont = Controll()
let my = MY()
let method = MY.touch
cont.setTarget(target: my, action: MY.touch, controlEvent: .TouchUpInside)

cont.performActionFromControlEvent(controlEvent: .TouchUpInside)


