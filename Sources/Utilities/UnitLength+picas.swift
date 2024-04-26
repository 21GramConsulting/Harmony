import Foundation

extension UnitLength {
  public static let picas = UnitLength(
    symbol: "P",
    converter: UnitConverterLinear(
      coefficient: (UnitLength.inches.converter as! UnitConverterLinear).coefficient / 6
    )
  )
}
