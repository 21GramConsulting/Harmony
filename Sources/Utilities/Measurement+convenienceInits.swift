import Foundation

extension Measurement where UnitType == UnitLength {
  public static func P(_ value: Double) -> Self { .init(value: value, unit: .picas) }
  public static func p(_ value: Double) -> Self { .init(value: value, unit: .points) }
  public static func Mm(_ value: Double) -> Self { .init(value: value, unit: .megameters) }
  public static func kM(_ value: Double) -> Self { .init(value: value, unit: .kilometers) }
  public static func hm(_ value: Double) -> Self { .init(value: value, unit: .hectometers) }
  public static func dam(_ value: Double) -> Self { .init(value: value, unit: .decameters) }
  public static func m(_ value: Double) -> Self { .init(value: value, unit: .meters) }
  public static func dm(_ value: Double) -> Self { .init(value: value, unit: .decimeters) }
  public static func cm(_ value: Double) -> Self { .init(value: value, unit: .centimeters) }
  public static func mm(_ value: Double) -> Self { .init(value: value, unit: .millimeters) }
  public static func µm(_ value: Double) -> Self { .init(value: value, unit: .micrometers) }
  public static func nm(_ value: Double) -> Self { .init(value: value, unit: .nanometers) }
  public static func pm(_ value: Double) -> Self { .init(value: value, unit: .picometers) }
  public static func `in`(_ value: Double) -> Self { .init(value: value, unit: .inches) }
  public static func ft(_ value: Double) -> Self { .init(value: value, unit: .feet) }
  public static func yd(_ value: Double) -> Self { .init(value: value, unit: .yards) }
  public static func mi(_ value: Double) -> Self { .init(value: value, unit: .miles) }
  public static func smi(_ value: Double) -> Self { .init(value: value, unit: .scandinavianMiles) }
  public static func ly(_ value: Double) -> Self { .init(value: value, unit: .lightyears) }
  public static func NM(_ value: Double) -> Self { .init(value: value, unit: .nauticalMiles) }
  public static func ftm(_ value: Double) -> Self { .init(value: value, unit: .fathoms) }
  public static func fur(_ value: Double) -> Self { .init(value: value, unit: .furlongs) }
  public static func ua(_ value: Double) -> Self { .init(value: value, unit: .astronomicalUnits) }
  public static func pc(_ value: Double) -> Self { .init(value: value, unit: .parsecs) }
}
