//: Playground - noun: a place where people can play

import UIKit

//round 1
do {
    func distance(from point: CGPoint, to anotherPoint: CGPoint) -> Double {
        let dx = Double(anotherPoint.x - point.x)
        let dy = Double(anotherPoint.y - point.y)
        return sqrt(dx * dx + dy * dy)
    }
    
    let origin: CGPoint = CGPoint(x: 0, y: 0)
    let point: CGPoint = CGPoint(x: 1, y: 1)
    let d: Double = distance(from: origin, to: point)
}

//round 2
do {
    typealias Location = CGPoint
    typealias Distance = Double
    func distance(from point: Location, to anotherPoint: Location) -> Distance {
        let dx = Distance(anotherPoint.x - point.x)
        let dy = Distance(anotherPoint.y - point.y)
        return sqrt(dx * dx + dy * dy)
    }
    
    let origin: Location = Location(x: 0, y: 0)
    let point: Location = Location(x: 1, y: 1)
    let d: Distance = distance(from: origin, to: point)
}

do {
    class Person<T> {}
    
    typealias Worker<T> = Person<T>
    
    typealias WorkerId = String
    typealias NWorker<WorkerId> = Person<WorkerId>
    
}

protocol Cat {}
protocol Dog {}

typealias Pat = Cat & Dog