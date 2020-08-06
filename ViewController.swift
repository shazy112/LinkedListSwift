
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
linklist.addNodeAtTheStart(value: 3)
linklist.showNodes()
