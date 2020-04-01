//let 
//: - callout(Exercise): Write a function that takes the daily number as an argument and returns a message as a string. It should return a different message based on how close the number comes to your goal. You can be as ambitious and creative as you'd like with your responses, but make sure to return at least two different messages depending on your daily progress!
let minutesExercised: [Double] = [3, 42, 18, 55.98, 34, 0, 13.2, 98.7, 25, 7, 63.3, 88.6, 11.4, 12, 17.8, 23, 45, 1.5, 88.2, 58, 33, 90.5, 54.3]

func goals(dailyNumber: Double) -> String {
    if dailyNumber < 5 {
        return "You are a bad exerciser."
    }
    else if dailyNumber < 20 {
        return "Not bad,but do better."
    }
    else {
        return "Superb job! You are now appointed, the Master of Exercise."
    }
}

//: - callout(Exercise): Write a `for…in` loop that loops over your sample data, calls your function to get an appropriate message for each item, and prints the message to the console.
for goal in minutesExercised {
    print(goals(dailyNumber: goal))
}




//: [Previous](@previous)  |  page 16 of 17  |  [Next: Exercise: Screening Messages](@next)
