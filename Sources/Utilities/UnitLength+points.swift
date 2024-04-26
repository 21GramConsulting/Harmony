import Foundation

extension UnitLength {
  public static let points = UnitLength(
    symbol: "p",
    converter: UnitConverterLinear(
      coefficient: (UnitLength.picas.converter as! UnitConverterLinear).coefficient / 12
    )
  )
}
