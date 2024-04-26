import Foundation
import XCTest

@testable import Utilities

final class UnitLength_points_UnitTests: XCTestCase {
  func test_points_convertedTo_picas() {
    let points = Measurement<UnitLength>(value: 12, unit: .points)
    let picas = points.converted(to: .picas)
    XCTAssertEqual(picas.value, 1)
    XCTAssertEqual(picas.unit, .picas)
  }

  func test_points_convertedTo_inches() {
    let points = Measurement<UnitLength>(value: 12, unit: .points)
    let inches = points.converted(to: .inches)
    XCTAssertEqual(inches.value, 1 / 6)
    XCTAssertEqual(inches.unit, .inches)
  }

  func test_points_convertedTo_meters() {
    let points = Measurement<UnitLength>(value: 12, unit: .points)
    let meters = points.converted(to: .meters)
    XCTAssertEqual(meters.value, 0.004233333333333333)
    XCTAssertEqual(meters.unit, .meters)
  }

  func test_points_convertedTo_kilometers() {
    let points = Measurement<UnitLength>(value: 12, unit: .points)
    let kilometers = points.converted(to: .kilometers)
    XCTAssertEqual(kilometers.value, 4.233333333333333e-06)
    XCTAssertEqual(kilometers.unit, .kilometers)
  }

  func test_negativePoints_convertedTo_picas() {
    let points = Measurement<UnitLength>(value: -12, unit: .points)
    let picas = points.converted(to: .picas)
    XCTAssertEqual(picas.value, -1)
    XCTAssertEqual(picas.unit, .picas)
  }

  func test_zeroPoints_convertedTo_picas() {
    let points = Measurement<UnitLength>(value: 0, unit: .points)
    let picas = points.converted(to: .picas)
    XCTAssertEqual(picas.value, 0)
    XCTAssertEqual(picas.unit, .picas)
  }

  func test_largePoints_convertedTo_picas() {
    let points = Measurement<UnitLength>(value: 1e6, unit: .points)
    let picas = points.converted(to: .picas)
    XCTAssertEqual(picas.value, 8.333333333333334e4)
    XCTAssertEqual(picas.unit, .picas)
  }

  func test_smallPoints_convertedTo_picas() {
    let points = Measurement<UnitLength>(value: 1e-6, unit: .points)
    let picas = points.converted(to: .picas)
    XCTAssertEqual(picas.value, 8.333333333333334e-08)
    XCTAssertEqual(picas.unit, .picas)
  }

  func test_points_convertedTo_picas_and_back() {
    let originalPoints = Measurement<UnitLength>(value: 12, unit: .points)
    let picas = originalPoints.converted(to: .picas)
    let convertedBackPoints = picas.converted(to: .points)
    XCTAssertEqual(convertedBackPoints.value, originalPoints.value)
    XCTAssertEqual(convertedBackPoints.unit, originalPoints.unit)
  }

  func test_unitlessValue_convertedTo_points() {
    let unitlessValue = Measurement<UnitLength>(value: 1, unit: .baseUnit())
    let points = unitlessValue.converted(to: .points)
    // Assert the conversion result based on the base unit
  }
}
