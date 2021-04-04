# Callable
> A light weight Swift Package for making web calls.

[![Swift Version][swift-image]][swift-url]
[![License][license-image]][license-url]

Callable was created to solve the tiresome and tedius chore of writing `URLSession.shared.dataTask` etc. etc. etc.

## Installation into a project

[Copy the `.git` url for this repo.](https://github.com/ElevatedUnderdogs/Callable.git)


<img width="426" alt="Screen Shot 2021-04-03 at 10 11 14 PM" src="https://user-images.githubusercontent.com/4231144/113499279-85428a80-94c9-11eb-996d-4683db42b36d.png">


<img width="426" alt="Screen Shot 2021-04-03 at 10 11 31 PM" src="https://user-images.githubusercontent.com/4231144/113499283-8f648900-94c9-11eb-925e-9a984fac0979.png">

Paste it here: 


<img width="426" alt="Screen Shot 2021-04-03 at 10 12 07 PM" src="https://user-images.githubusercontent.com/4231144/113499290-a4d9b300-94c9-11eb-908c-0a0b1c76a33f.png">

Click enter, then follow the prompts. 


## Installation into a package

Add this project on your `Package.swift`

```swift
import PackageDescription

let package = Package(
    dependencies: [
        .Package(url: "https://github.com/user/project.git", majorVersion: 0, minor: 0)
    ]
)
```

## Usage example

You can simply specify your `URL` and then access either `Data`, `JSON` or through the magic of generics: a `Codable` type.  

```swift
import Callable

URL(string: "http://api/website.com").callCodable { (myStruct: MyStruct?) in 
    print("The data", (myStruct == nil ? "doesn't convert": "converts"), "into MyStruct.")
}

```
`URLRequest` conforms to `Callable` as well, so you can do the same thing: 

```
import Callable

myURLRequest.callCodable { (myStruct: MyStruct?) in 
    print("The data", (myStruct == nil ? "doesn't convert": "converts"), "into MyStruct.")
}
```


## Meta

Scott Lydon – 
[Linkedin](https://www.linkedin.com/in/scottlydon/)

Distributed under the MIT license. See ``LICENSE`` for more information.

[ElevatedUnderdogs](https://github.com/orgs/ElevatedUnderdogs/dashboard)

[swift-image]:https://img.shields.io/badge/swift-3.0-orange.svg
[swift-url]: https://swift.org/
[license-image]: https://img.shields.io/badge/License-MIT-blue.svg
[license-url]: LICENSE
