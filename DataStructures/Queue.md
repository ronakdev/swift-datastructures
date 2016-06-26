#Queues

####Usage

Queues are pretty straightforward, use as such

```
let queue = Queue<String>()
queue.add("num 1")
queue.add("num 2")
for item in queue {
   print(item)
}

print (queue)
//does same thing as above for loop

```

Method Reference: 
All the [same methods from Java.](https://docs.oracle.com/javase/7/docs/api/java/util/Queue.html) Yep.

##Goals

I'd like to: 

* Make the code neater
* Make the code importable (ie ```import Queue```)