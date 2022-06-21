// Pablo Solórzano
// pablosv@me.com

import Foundation

func sortArrayByParity(_ input: [Int]) -> (allSorted:[Int], evens:[Int], odds:[Int]) {
	let evenElements = input.filter { $0 % 2 == 0 }
	let oddElements = input.filter { $0 % 2 == 1 }
	return (evenElements + oddElements, evenElements.sorted(), oddElements.sorted())
}

// Usage
let intArray = [9, 2, 0, 13, 7, 6, 1, 4]
let sorted = sortArrayByParity(intArray)

// Sorted by parity
let allSorted = sorted.allSorted

// Only Even ints
let evens = sorted.evens

// Only Odd ints
let odds = sorted.odds
