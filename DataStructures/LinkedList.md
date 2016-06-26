#Linked Lists

####Usage

Linked Lists are pretty straightforward, use as such

```
let ll = LinkedList<String>()
ll.addFirst("This is first")
ll.addLast("This is last")

for item in ll {
	print(item)
}
print (ll)
//does same thing as above for loop

```

Method Reference: 

* add
* removeFirst
* addLast
* addFirst

##Goals

I'd like to: 

* Make the code neater
* Add all of the [java methods] (https://docs.oracle.com/javase/7/docs/api/java/util/LinkedList.html) to the class
* Make the code importable (ie ```import Queue```)