import Foundation

public struct Fraction {
  public let numerator: Int
  public let denominator: Int

  public init(numerator: Int, denominator: Int) {
    self.numerator = numerator
    self.denominator = denominator
  }

  public var floatValue: Float {
    return Float(numerator) / Float(denominator)
  }
}
