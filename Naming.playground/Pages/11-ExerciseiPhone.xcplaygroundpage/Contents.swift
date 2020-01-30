/*: 
 ## Exercise: What Fits on Your iPhone?
 
 In this exercise you’re going to work on figuring out the answer to the timeless question: How much stuff can I fit on my iPhone?
 
 Unlike the previous exercises, no code will be provided. But here are a few things you’ll need to know:
 
 
 - iPhone storage capacity is measured in **gigabytes** (GB).
 - The iPhone in question has 8GB of storage.
 - A gigabyte is about **1000 megabytes** (MB)
 - The phone already has **3GB** of stuff on it
 - **One minute** of video takes **150MB** of storage
 
 - callout(Exercise): How many minutes of video will it take to fill the phone?\
 _Hint_: Do all of your calculations in megabytes (MB).
*/
let videoStorage = 150 // in megabytes
let megabytes = 1000
let totalStorage = 8 // in gb
let usedStorage = 3 // in gb
let usedStorageInMB = usedStorage * megabytes
let totalStorageInMB = totalStorage * megabytes
let minutesOfVideoAvailble = (totalStorageInMB - usedStorageInMB)/videoStorage

//:[Previous](@previous)  |  page 12 of 14  |  [Next: Exercise: Fixing Your Morning](@next)
