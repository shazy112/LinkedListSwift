
class Node {
    let value:Int
    var next: Node?

    init(value:Int, next:Node? = nil) {
        self.value = value
        self.next = next
    }
}

class Linkedlist {
    var head:Node? = nil
    func addNodeAtEnd(value:Int) {
        let node = Node(value: value)
        if head == nil {
            head = node
        }
        else {
        var current = head
        while current?.next != nil {
            current = current?.next
        }
        current?.next = node
        }
    }
    
    func addNodeAtTheStart(value:Int) {
        let node = Node(value: value)
        if head == nil {
            head = node
        }
        else {
            node.next = head
            head = node
        }
    }
    
    func addNodeAtIndex(index:Int, value:Int) {
        let node = Node(value: value)
        var previous = head
        if index == 0 {
            previous?.next = head
            head = previous
        }
        else {
            for i in 0..<index - 1 {
                previous = previous?.next
            }
            node.next = previous?.next
            previous?.next = node
        }
    }
    
    func deleteNodeAtIndex(index:Int) {
               var previous = head
                var next = head
               if index == 0 {
                head = previous?.next
               }
               else {
                for _ in 0..<index-1 {
                    previous = previous?.next
                }
                next = previous?.next
                previous?.next = next?.next
        }
    }
    
    func showNodes() {
        var current = head
        print(current?.value)
        while current?.next != nil {
            current = current?.next
            print(current?.value)
        }
    }
   
}
var linklist = Linkedlist()
linklist.addNodeAtEnd(value: 5)
linklist.addNodeAtEnd(value: 15)
linklist.addNodeAtEnd(value: 22)
linklist.addNodeAtEnd(value: 33)
linklist.addNodeAtEnd(value: 44)

//linklist.addNodeAtTheStart(value: 3)
//linklist.addNodeAtIndex(index: 1, value: 33)

linklist.deleteNodeAtIndex(index: 2)
linklist.showNodes()
