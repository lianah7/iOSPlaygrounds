/*:
 ## Exercise - Memberwise and Custom Initializers
 
 If you completed the exercise Structs, Instances, and Default Values, you created a `GPS` struct with default values for properties of `latitude` and `longitude`. Create your `GPS` struct again, but this time do not provide default values. Both properties should be of type `Double`.
 */
struct GPS {
    var latitude = Double()
    var longitude = Double()
}



/*:
 In Structs, Instance, and Default Values, you also created a `Book` struct. Creat this struct again without default values. Give each property appropriate types. Declare your `favoriteBook` instance and pass in the values of your favorite book using the memberwise initializer. Print a statement about your favorite book using `favoriteBook`'s properties.
 */
struct Book {
    var title = String()
    var author = String()
    var pages = Double()
    var price = Double()
}

var favoriteBook = Book()
print(favoriteBook)
favoriteBook.title = "We Were Liars"
favoriteBook.author = "E. Lockhart"
favoriteBook.pages = 227
favoriteBook.price = 12.93

print("My favorite book is \(favoriteBook.title). It is written by \(favoriteBook.author). It is \(favoriteBook.pages) long and costs \(favoriteBook.price) dollars.")
/*:
 Make a `Height` struct with two variable properties, `heightInInches` and `heightInCentimeters`. Both should be of type `Double`.
 
 Create two custom initializers. One initializer will take a `Double` argument that represents height in inches. The other initializer will take a `Double` argument that represents height in centimeters. Each initializer should take the passed in value and use it to set the property that corresponds to the unit of measurement passed in. It should then set the other property by calculating the right value from the passed in value. Hint: *1 inch = 2.54 centimeters*.
 
 - Example: If you use the initializer for inches to pass in a height of 65, the initializer should set `heightInInches` to 65 and `heightInCentimeters` to 165.1.
 */
struct Height {
    var heightInInches = Double()
    var heightInCentimeters = Double()

    init(heightInInches: Double) {
        self.heightInCentimeters = heightInInches * 2.54
        self.heightInInches = heightInInches
    }
    init(heightInCentimeters: Double) {
        self.heightInInches = heightInCentimeters / 2.54
        self.heightInCentimeters = heightInCentimeters
    }
}

/*:
 Now create a variable instance of `Height` called `someonesHeight`. Use the initializer for inches to set the height to 65. Print out the property for height in centimeters and verify that it is equal to 165.1.
 */
var someonesHeight = Height(heightInInches: 65)
print(someonesHeight.heightInCentimeters)

/*:
 Now create a variable instance of `Height` called `myHeight` and initialize it with your own height. Verify that both `heightInInches` and `heightInCentimeters` are accurate.
 */
var myHeight = Height(heightInInches: 68)
print(myHeight.heightInCentimeters)

//: [Previous](@previous)  |  page 3 of 10  |  [Next: App Exercise - Users and Distance](@next)
