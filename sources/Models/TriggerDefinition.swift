//
//  TriggerDefinition.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.4.0.8139 (http://hl7.org/fhir/StructureDefinition/TriggerDefinition) on 2016-08-17.
//  2016, SMART Health IT.
//

import Foundation


/**
 *  Defines an expected trigger for a module.
 *
 *  A description of a triggering event.
 */
open class TriggerDefinition: Element {
	override open class var resourceType: String {
		get { return "TriggerDefinition" }
	}
	
	/// Triggering data of the event.
	public var eventData: DataRequirement?
	
	/// Name of the event.
	public var eventName: String?
	
	/// Timing of the event.
	public var eventTimingDate: FHIRDate?
	
	/// Timing of the event.
	public var eventTimingDateTime: DateTime?
	
	/// Timing of the event.
	public var eventTimingReference: Reference?
	
	/// Timing of the event.
	public var eventTimingTiming: Timing?
	
	/// named-event | periodic | data-added | data-modified | data-removed | data-accessed | data-access-ended.
	public var type: String?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(type: String) {
		self.init(json: nil)
		self.type = type
	}
	
	override open func populate(fromJSON json: FHIRJSON?, presentKeys: inout Set<String>) -> [FHIRJSONError]? {
		var errors = super.populate(fromJSON: json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist = js["eventData"] {
				presentKeys.insert("eventData")
				if let val = exist as? FHIRJSON {
					self.eventData = DataRequirement(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "eventData", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["eventName"] {
				presentKeys.insert("eventName")
				if let val = exist as? String {
					self.eventName = val
				}
				else {
					errors.append(FHIRJSONError(key: "eventName", wants: String.self, has: type(of: exist)))
				}
			}
			if let exist = js["eventTimingDate"] {
				presentKeys.insert("eventTimingDate")
				if let val = exist as? String {
					self.eventTimingDate = FHIRDate(string: val)
				}
				else {
					errors.append(FHIRJSONError(key: "eventTimingDate", wants: String.self, has: type(of: exist)))
				}
			}
			if let exist = js["eventTimingDateTime"] {
				presentKeys.insert("eventTimingDateTime")
				if let val = exist as? String {
					self.eventTimingDateTime = DateTime(string: val)
				}
				else {
					errors.append(FHIRJSONError(key: "eventTimingDateTime", wants: String.self, has: type(of: exist)))
				}
			}
			if let exist = js["eventTimingReference"] {
				presentKeys.insert("eventTimingReference")
				if let val = exist as? FHIRJSON {
					self.eventTimingReference = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "eventTimingReference", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["eventTimingTiming"] {
				presentKeys.insert("eventTimingTiming")
				if let val = exist as? FHIRJSON {
					self.eventTimingTiming = Timing(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "eventTimingTiming", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["type"] {
				presentKeys.insert("type")
				if let val = exist as? String {
					self.type = val
				}
				else {
					errors.append(FHIRJSONError(key: "type", wants: String.self, has: type(of: exist)))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "type"))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let eventData = self.eventData {
			json["eventData"] = eventData.asJSON()
		}
		if let eventName = self.eventName {
			json["eventName"] = eventName.asJSON()
		}
		if let eventTimingDate = self.eventTimingDate {
			json["eventTimingDate"] = eventTimingDate.asJSON()
		}
		if let eventTimingDateTime = self.eventTimingDateTime {
			json["eventTimingDateTime"] = eventTimingDateTime.asJSON()
		}
		if let eventTimingReference = self.eventTimingReference {
			json["eventTimingReference"] = eventTimingReference.asJSON()
		}
		if let eventTimingTiming = self.eventTimingTiming {
			json["eventTimingTiming"] = eventTimingTiming.asJSON()
		}
		if let type = self.type {
			json["type"] = type.asJSON()
		}
		
		return json
	}
}

