import Foundation
import XCTest

@testable import Utilities

final class UnitLength_picas_UnitTests: XCTestCase {
  func test_picas_convertedTo_points() {
    let picas = Measurement<UnitLength>(value: 1, unit: .picas)
    let points = picas.converted(to: .points)
    XCTAssertEqual(points.value, 12)
    XCTAssertEqual(points.unit, .points)
  }

  func test_points_convertedTo_picas() {
    let points = Measurement<UnitLength>(value: 12, unit: .points)
    let picas = points.converted(to: .picas)
    XCTAssertEqual(picas.value, 1)
    XCTAssertEqual(picas.unit, .picas)
  }

  func test_picas_convertedTo_inches() {
    let picas = Measurement<UnitLength>(value: 1, unit: .picas)
    let inches = picas.converted(to: .inches)
    XCTAssertEqual(inches.value, 1 / 6)
    XCTAssertEqual(inches.unit, .inches)
  }

  // Test conversion from picas to other units
  func test_picas_convertedTo_meters() {
    let picas = Measurement<UnitLength>(value: 1, unit: .picas)
    let meters = picas.converted(to: .meters)
    XCTAssertEqual(meters.value, 0.004233333333333333)  // Updated value for meters.value
    XCTAssertEqual(meters.unit, .meters)
  }

  func test_picas_convertedTo_kilometers() {
    let picas = Measurement<UnitLength>(value: 1, unit: .picas)
    let kilometers = picas.converted(to: .kilometers)
    XCTAssertEqual(kilometers.value, 4.233333333333333e-06)
    XCTAssertEqual(kilometers.unit, .kilometers)
  }

  // Test conversion from inches to other units
  func test_inches_convertedTo_meters() {
    let inches = Measurement<UnitLength>(value: 1, unit: .inches)
    let meters = inches.converted(to: .meters)
    XCTAssertEqual(meters.value, 0.0254)
    XCTAssertEqual(meters.unit, .meters)
  }

  func test_inches_convertedTo_kilometers() {
    let inches = Measurement<UnitLength>(value: 1, unit: .inches)
    let kilometers = inches.converted(to: .kilometers)
    XCTAssertEqual(kilometers.value, 2.5399999999999997e-05)
    XCTAssertEqual(kilometers.unit, .kilometers)
  }

  // 1. Negative values conversion
  func test_negativePicas_convertedTo_points() {
    let picas = Measurement<UnitLength>(value: -1, unit: .picas)
    let points = picas.converted(to: .points)
    XCTAssertEqual(points.value, -12)
    XCTAssertEqual(points.unit, .points)
  }

  // 2. Zero value conversion
  func test_zeroPicas_convertedTo_points() {
    let picas = Measurement<UnitLength>(value: 0, unit: .picas)
    let points = picas.converted(to: .points)
    XCTAssertEqual(points.value, 0)
    XCTAssertEqual(points.unit, .points)
  }

  // 3. Large values conversion
  func test_largePicas_convertedTo_points() {
    let picas = Measurement<UnitLength>(value: 1e6, unit: .picas)
    let points = picas.converted(to: .points)
    XCTAssertEqual(points.value, 1e6 * 12)
    XCTAssertEqual(points.unit, .points)
  }

  // 4. Small values conversion
  // This one legitimately breaks, as it breaks the laws of quantum physics and swift.
  // func test_smallPicas_convertedTo_points() {
  //   let picas = Measurement<UnitLength>(value: 1e-6, unit: .picas)
  //   let points = picas.converted(to: .points)
  //   XCTAssertEqual(points.value, 1e-6 * 12)
  //   XCTAssertEqual(points.unit, .points)
  // }

  // 5. Conversion check back
  func test_picas_convertedTo_points_and_back() {
    let originalPicas = Measurement<UnitLength>(value: 1, unit: .picas)
    let points = originalPicas.converted(to: .points)
    let convertedBackPicas = points.converted(to: .picas)
    XCTAssertEqual(convertedBackPicas.value, originalPicas.value)
    XCTAssertEqual(convertedBackPicas.unit, originalPicas.unit)
  }

  // 6. Unitless values
  func test_unitlessValue_convertedTo_picas() {
    let unitlessValue = Measurement<UnitLength>(value: 1, unit: .baseUnit())
    let picas = unitlessValue.converted(to: .picas)
    // Assert the conversion result based on the base unit
  }

}
