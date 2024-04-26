import Foundation

public struct DisplayMedium {
  public let width: Measurement<UnitLength>
  public let height: Measurement<UnitLength>

  public init(width: Measurement<UnitLength>, height: Measurement<UnitLength>) {
    self.width = width
    self.height = height
  }

  /// MARK: North American Paper Sizes
  public static let usLetter = DisplayMedium(width: .in(8.5), height: .in(11))
  public static let usLegal = DisplayMedium(width: .in(8.5), height: .in(14))
  public static let usTabloid = DisplayMedium(width: .in(11), height: .in(17))
  public static let usLedger = DisplayMedium(width: .in(17), height: .in(11))
  public static let usJuniorLegal = DisplayMedium(width: .in(8), height: .in(5))

  /// MARK: European Paper Sizes
  public static let a4 = DisplayMedium(width: .mm(210), height: .mm(297))
  public static let a3 = DisplayMedium(width: .mm(297), height: .mm(420))
  public static let a2 = DisplayMedium(width: .mm(420), height: .mm(594))
  public static let a1 = DisplayMedium(width: .mm(594), height: .mm(841))
  public static let a0 = DisplayMedium(width: .mm(841), height: .mm(1189))
}
