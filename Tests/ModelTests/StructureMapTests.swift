//
//  StructureMapTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.4.0.8139 on 2016-08-17.
//  2016, SMART Health IT.
//

import XCTest
import SwiftFHIR


class StructureMapTests: XCTestCase {
	
	func instantiateFrom(filename: String) throws -> SwiftFHIR.StructureMap {
		return instantiateFrom(json: try readJSONFile(filename))
	}
	
	func instantiateFrom(json: FHIRJSON) -> SwiftFHIR.StructureMap {
		let instance = SwiftFHIR.StructureMap(json: json)
		XCTAssertNotNil(instance, "Must have instantiated a test instance")
		return instance
	}
	
	func testStructureMap1() {
		do {
			let instance = try runStructureMap1()
			try runStructureMap1(instance.asJSON())
		}
		catch {
			XCTAssertTrue(false, "Must instantiate and test StructureMap successfully, but threw")
		}
	}
	
	@discardableResult
	func runStructureMap1(_ json: FHIRJSON? = nil) throws -> SwiftFHIR.StructureMap {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "structuremap-example.json")
		
		XCTAssertEqual(inst.group?[0].input?[0].mode, "source")
		XCTAssertEqual(inst.group?[0].input?[0].name, "test")
		XCTAssertEqual(inst.group?[0].name, "Examples")
		XCTAssertEqual(inst.group?[0].rule?[0].name, "rule1")
		XCTAssertEqual(inst.group?[0].rule?[0].source?[0].context, "test")
		XCTAssertEqual(inst.group?[0].rule?[0].source?[0].contextType, "variable")
		XCTAssertEqual(inst.group?[0].rule?[0].source?[0].element, "test")
		XCTAssertTrue(inst.group?[0].rule?[0].source?[0].required ?? false)
		XCTAssertEqual(inst.group?[0].rule?[0].source?[0].variable, "t")
		XCTAssertEqual(inst.id, "example")
		XCTAssertEqual(inst.name, "Example Map")
		XCTAssertEqual(inst.status, "draft")
		XCTAssertEqual(inst.text?.div, "<div>[Put rendering here]</div>")
		XCTAssertEqual(inst.text?.status, "generated")
		XCTAssertEqual(inst.url?.absoluteString, "http://hl7.org/fhir/StructureMap/example")
		
		return inst
	}
}
