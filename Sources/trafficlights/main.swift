import Glibc
import Foundation
import SwiftyGPIO

// Setup
let gpios = SwiftyGPIO.GPIOs(for:.RaspberryPi3)
let red = gpios[.P9]!
let amber = gpios[.P10]!
let green = gpios[.P11]!

red.direction = .OUT
amber.direction = .OUT
green.direction = .OUT

func allLightsOff() {
  red.value = 0
  amber.value = 0
  green.value = 0
}

// Start by making sure lights are all off.
allLightsOff()

// Loop forever
while true {
  // Red
  red.value = 1
  Thread.sleep(forTimeInterval: 3)

  // Red and amber
  amber.value = 1
  Thread.sleep(forTimeInterval: 1)

  // Green
  red.value = 0
  amber.value = 0
  green.value = 1
  Thread.sleep(forTimeInterval: 5)

  // Amber
  green.value = 0
  amber.value = 1
  Thread.sleep(forTimeInterval: 2)

  // Amber off (red comes on at top of loop)
  amber.value = 0
}
