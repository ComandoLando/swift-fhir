//
//  AppointmentResponseTests.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.4.0.8139 on 2016-08-17.
//  2016, SMART Health IT.
//

import XCTest
import SwiftFHIR


class AppointmentResponseTests: XCTestCase {
	
	func instantiateFrom(filename: String) throws -> SwiftFHIR.AppointmentResponse {
		return instantiateFrom(json: try readJSONFile(filename))
	}
	
	func instantiateFrom(json: FHIRJSON) -> SwiftFHIR.AppointmentResponse {
		let instance = SwiftFHIR.AppointmentResponse(json: json)
		XCTAssertNotNil(instance, "Must have instantiated a test instance")
		return instance
	}
	
	func testAppointmentResponse1() {
		do {
			let instance = try runAppointmentResponse1()
			try runAppointmentResponse1(instance.asJSON())
		}
		catch {
			XCTAssertTrue(false, "Must instantiate and test AppointmentResponse successfully, but threw")
		}
	}
	
	@discardableResult
	func runAppointmentResponse1(_ json: FHIRJSON? = nil) throws -> SwiftFHIR.AppointmentResponse {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "appointmentresponse-example-req.json")
		
		XCTAssertEqual(inst.actor?.display, "Dr Adam Careful")
		XCTAssertEqual(inst.actor?.reference, "Practitioner/example")
		XCTAssertEqual(inst.appointment?.display, "Brian MRI results discussion")
		XCTAssertEqual(inst.appointment?.reference, "Appointment/examplereq")
		XCTAssertEqual(inst.comment, "can't we try for this time, can't do mornings")
		XCTAssertEqual(inst.end?.description, "2013-12-25T13:30:00Z")
		XCTAssertEqual(inst.id, "exampleresp")
		XCTAssertEqual(inst.identifier?[0].system?.absoluteString, "http://example.org/sampleappointmentresponse-identifier")
		XCTAssertEqual(inst.identifier?[0].value, "response123")
		XCTAssertEqual(inst.participantStatus, "tentative")
		XCTAssertEqual(inst.participantType?[0].coding?[0].code, "ATND")
		XCTAssertEqual(inst.participantType?[0].coding?[0].system?.absoluteString, "http://hl7.org/fhir/v3/ParticipationType")
		XCTAssertEqual(inst.start?.description, "2013-12-25T13:15:00Z")
		XCTAssertEqual(inst.text?.div, "<div>Accept Brian MRI results discussion</div>")
		XCTAssertEqual(inst.text?.status, "generated")
		
		return inst
	}
	
	func testAppointmentResponse2() {
		do {
			let instance = try runAppointmentResponse2()
			try runAppointmentResponse2(instance.asJSON())
		}
		catch {
			XCTAssertTrue(false, "Must instantiate and test AppointmentResponse successfully, but threw")
		}
	}
	
	@discardableResult
	func runAppointmentResponse2(_ json: FHIRJSON? = nil) throws -> SwiftFHIR.AppointmentResponse {
		let inst = (nil != json) ? instantiateFrom(json: json!) : try instantiateFrom(filename: "appointmentresponse-example.json")
		
		XCTAssertEqual(inst.actor?.display, "Peter James Chalmers")
		XCTAssertEqual(inst.actor?.reference, "Patient/example")
		XCTAssertEqual(inst.appointment?.display, "Brian MRI results discussion")
		XCTAssertEqual(inst.appointment?.reference, "Appointment/example")
		XCTAssertEqual(inst.id, "example")
		XCTAssertEqual(inst.participantStatus, "accepted")
		XCTAssertEqual(inst.text?.div, "<div>Accept Brian MRI results discussion</div>")
		XCTAssertEqual(inst.text?.status, "generated")
		
		return inst
	}
}
