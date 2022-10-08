import Foundation

let you = Person(name: "you")
let bob = Person(name: "Bob")
let alice = Person(name: "Alice")
let claire = Person(name: "Claire")
let anuj = Person(name: "Anuj")
let peggy = Person(name: "Peggy")
let thom = Person(name: "Thom", isSaler: true)
let jonny = Person(name: "Jonny")

var graph: [Person: [Person]] = [:]
graph[you] = [alice, bob, claire]
graph[bob] = [anuj, peggy]
graph[alice] = [peggy]
graph[claire] = [thom, jonny]
graph[anuj] = []
graph[peggy] = []
graph[thom] = []
graph[jonny] = []

func search(for person: Person) -> Person? {
    var searchQueue = Queue<Person>()
    searchQueue.enqueue(graph[person]!)
    var searched: [Person] = []
    while !searchQueue.isEmpty {
        print("searchQueue:", searchQueue)
        let person = searchQueue.dequeue()!
        if searched.contains(person) { continue }
        if person.isSaler {
            return person
        } else {
            searchQueue.enqueue(graph[person]!)
            searched.append(person)
        }
    }
    return nil
}

print("\(search(for: you)!) is a mango saller")
