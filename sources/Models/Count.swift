//
//  Count.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.4.0.8139 (http://hl7.org/fhir/StructureDefinition/Count) on 2016-08-17.
//  2016, SMART Health IT.
//

import Foundation


/**
 *  A count of a discrete element (no unit).
 *
 *  There SHALL be a code with a value of "1" if there is a value and it SHALL be an expression of length.  If system is
 *  present, it SHALL be UCUM.  If present, the value SHALL a whole number.
 */
open class Count: Quantity {
	override open class var resourceType: String {
		get { return "Count" }
	}
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}

}

