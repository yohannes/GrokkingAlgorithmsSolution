// Chapter 1. Introduction to Algorithms

/// Pg. 9
func binarySearch(inside array: [Int], lookingfor target:Int) -> Int? {
  var lowPosition = 0, highPosition = array.count - 1
  
  while lowPosition <= highPosition {
    let middlePosition = (lowPosition + highPosition) / 2
    let guessValue = array[middlePosition]
    if guessValue == target {
      return middlePosition
    }
    else if guessValue < target {
      lowPosition = middlePosition + 1
    }
    else if guessValue > target {
      highPosition = middlePosition - 1 
    }
  }
  return nil
}

let target = 7

if let valueFound = binarySearch(inside: [1, 3, 5, 7, 9], lookingfor: target) {
  print("Found. \(target) is in position #\(valueFound)")
}
else {
  print("\(target) can't be found in the array!")
}

/// Exercises 1.1
/// 7 (Log2 128)
/// 
/// Exercises 1.2
/// 8 (Log2 256)
///
/// Exercises 1.3
/// O(log n)
/// 
/// Exercises 1.4
/// O(n)
///
/// Exercises 1.5
/// O(n)
///