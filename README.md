# Team Assembler

[NEWS TEAM! ASSEMBBLLLEEEEEEE](https://www.youtube.com/watch?v=PVlXYoVZHfA)

This application assembles your team! And as well, allows you to build and create teams!

Also, it demonstrates a usage of [Realm](https://realm.io/docs/swift/latest/).


## Table of Contents

1. To Build
2. Dependencies
3. Comparison: Realm v. Core Data


## 1. To Build:

1. Install pods with `pod install`
2. Build in `Xcode 11.0` or newer, with `Swift 5`.


## 2. Dependencies

1. [Realm](https://realm.io/docs/swift/latest/)
2. [StateUITableView](https://github.com/1985wasagoodyear/StateUITableView)


## 3. Comparison: Realm v. Core Data

### 1. Installation

#### Pros:

* none here...?

#### Cons:

* Core Data is pre-installed on all iOS/macOS devices, unlike Realm
	* can increase binary-size, built-time.

### 2. Usage

#### Pros:

* Realm's [build for speed!](https://realm.io/blog/introducing-realm/#fast)
* modelling data is very simple.
	* subclass `Object` and `@objc dynamic` all your properties
* `Object`'s can be created independently and saved/deleted/etc whenever you'd like, in Realm's `write` blocks.
	* unlike Core Data requiring usage of an `NSManagedObjectContext` for object creation & tracking

#### Cons:

* cannot store nils
	* all objects must have a default value
	
* cannot store Arrays
	* need to use Realm's [Results](https://realm.io/docs/swift/latest/api/Classes/Results.html) object 

* [multithreading is weird](https://realm.io/docs/objc/latest/#threading)
	* `Realm` instances are thread-safe so long as they're used only on the thread they're created	
	* Instead, we use [ThreadSafeReference](https://realm.io/blog/obj-c-swift-2-2-thread-safe-reference-sort-properties-relationships/#using-thread-safe-references)
	* (does this belong as a con? Core Data's not thread-safe by default, either)

>The only thing you have to be aware of is that you cannot have multiple threads sharing the same instances of Realm objects. If multiple threads need to access the same objects they will each need to get their own instances (otherwise changes happening on one thread could cause other threads to see incomplete or inconsistent data).
	
