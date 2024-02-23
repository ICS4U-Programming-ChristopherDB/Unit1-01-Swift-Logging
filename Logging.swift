//

//  Logging.swift

//

//  Created by Christopher Di Bert

//  Created on 2024-2-22

//  Version 1.0

//  Copyright (c) 2024 Christopher Di Bert. All rights reserved.

//

//  Finds maximum number of logs a truck can contain.

import Foundation

// Array defining all log lengths.
let logLengths: [Float] = [0.25, 0.5, 1]
// Maximum cargo weight of truck.
let maxWeight: Float = 1100
// Initializes log length.
var logLength: Float = 0.0

// Enumerator for error messages.
enum ErrorMessages: Error {
    case invalidUserChoice
}

// Function to retrieve log length and check for errors.
func retrieveLogLength(userChoice: String) throws -> Float {
    // Checks if index is in bound as is an int.
    guard let index = Int(userChoice), index > 0, index <= logLengths.count else {
        throw ErrorMessages.invalidUserChoice
    }
    // Sets log length equal to user's choice.
    let logLength: Float = logLengths[index - 1]
    return logLength
}

func main() {
    print("\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n")
    // Prints available log lengths
    for _ in 0..<logLengths.count {
        print("Enter the list number of your log length: ", terminator: "")
    }

    // Asks user to enter a listed log length
    let logLengthChoice = readLine() ?? ""

    // Try catch to find errors in user's choice'
    do {
        // Gets the chosen log length
        logLength = try retrieveLogLength(userChoice: logLengthChoice)
        // Calculates the maximum logs that can fit in the truck
        let maxLogs = Int(maxWeight / (20 * logLength))
        // Tells user how many logs can fit in the truck
        print("You can fit \(maxLogs) logs in the truck.")
        // Catches invalid user input
    } catch ErrorMessages.invalidUserChoice {
        print("You must enter a listed length!")
        // This catch is needed to compile
    } catch {
        print("An error occurred: \(error)")
    }
}

main()
