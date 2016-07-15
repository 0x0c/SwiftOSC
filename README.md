# SwiftOSC v1.0
SwiftOSC is a Open Sound Control client and server 3.0 framework for Swift 3.0. 

## Quick Start

### OSC Client
#### Step 1
Import SwiftOSC framework into your project
```swift
import SwiftOSC
```
#### Step 2
Create client
```swift
var client = OSCClient(address: "localhost", port: 8080)
```
#### Step 3
Create a message
```swift
var message = OSCMessage(
    OSCAddressPattern("/"), 
    100, 
    5.0, 
    "Hello World", 
    Blob(), 
    true, 
    false, 
    nil, 
    impulse, 
    Timetag(1)
)
```
#### Step 4
Send message
```swift
client.send(message)
```
### OSC Server
#### Step 1
Import SwiftOSC framework into your project
```swift
import SwiftOSC
```
#### Step 2
Setup Server
```swift
var server = OSCServer(address: "", port: 8080)
```
#### Step 3
Star server
```
server.start()
```

#### Step 4
Receive notifications from server and handle incoming data
```swift
NotificationCenter.default.addObserver(
    forName: OSCServer.didReceiveMessage, 
    object: nil, 
    queue: nil, 
    using: { (notification: Notification) in
        let message = notification.object as! OSCMessage
        print(message)
    }
)
```
## About

[Devin Roth](http://devinrothmusic.com) is a composer and programmer. He has worked on the music for numerous projects including *Hotel Transylvania 2*, *The Book of Life*, *Crazy-Ex Girlfriend*, and *Alvin and the Chipmunks: The Road Chip*. When not composing, teaching, or being a dad, Devin attempts to make his life more efficient by writing programs.

