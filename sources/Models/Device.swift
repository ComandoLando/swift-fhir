//
//  Device.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.4.0.8139 (http://hl7.org/fhir/StructureDefinition/Device) on 2016-08-17.
//  2016, SMART Health IT.
//

import Foundation


/**
 *  Item used in healthcare.
 *
 *  This resource identifies an instance or a type of a manufactured item that is used in the provision of healthcare
 *  without being substantially changed through that activity. The device may be a medical or non-medical device.
 *  Medical devices includes durable (reusable) medical equipment, implantable devices, as well as disposable equipment
 *  used for diagnostic, treatment, and research for healthcare and public health.  Non-medical devices may include
 *  items such as a machine, cellphone, computer, application, etc.
 */
open class Device: DomainResource {
	override open class var resourceType: String {
		get { return "Device" }
	}
	
	/// Details for human/organization for support.
	public var contact: [ContactPoint]?
	
	/// Date and time of expiry of this device (if applicable).
	public var expirationDate: DateTime?
	
	/// Instance identifier.
	public var identifier: [Identifier]?
	
	/// Where the resource is found.
	public var location: Reference?
	
	/// Lot number of manufacture.
	public var lotNumber: String?
	
	/// Date when the device was made.
	public var manufactureDate: DateTime?
	
	/// Name of device manufacturer.
	public var manufacturer: String?
	
	/// Model id assigned by the manufacturer.
	public var model: String?
	
	/// Device notes and comments.
	public var note: [Annotation]?
	
	/// Organization responsible for device.
	public var owner: Reference?
	
	/// Patient to whom Device is affixed.
	public var patient: Reference?
	
	/// available | not-available | entered-in-error.
	public var status: String?
	
	/// What kind of device this is.
	public var type: CodeableConcept?
	
	/// Unique Device Identifier (UDI) Barcode string.
	public var udiCarrier: Identifier?
	
	/// Network address to contact device.
	public var url: URL?
	
	/// Version number (i.e. software).
	public var version: String?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(type: CodeableConcept) {
		self.init(json: nil)
		self.type = type
	}
	
	override open func populate(fromJSON json: FHIRJSON?, presentKeys: inout Set<String>) -> [FHIRJSONError]? {
		var errors = super.populate(fromJSON: json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist = js["contact"] {
				presentKeys.insert("contact")
				if let val = exist as? [FHIRJSON] {
					self.contact = ContactPoint.instantiate(fromArray: val, owner: self) as? [ContactPoint]
				}
				else {
					errors.append(FHIRJSONError(key: "contact", wants: Array<FHIRJSON>.self, has: type(of: exist)))
				}
			}
			if let exist = js["expirationDate"] {
				presentKeys.insert("expirationDate")
				if let val = exist as? String {
					self.expirationDate = DateTime(string: val)
				}
				else {
					errors.append(FHIRJSONError(key: "expirationDate", wants: String.self, has: type(of: exist)))
				}
			}
			if let exist = js["identifier"] {
				presentKeys.insert("identifier")
				if let val = exist as? [FHIRJSON] {
					self.identifier = Identifier.instantiate(fromArray: val, owner: self) as? [Identifier]
				}
				else {
					errors.append(FHIRJSONError(key: "identifier", wants: Array<FHIRJSON>.self, has: type(of: exist)))
				}
			}
			if let exist = js["location"] {
				presentKeys.insert("location")
				if let val = exist as? FHIRJSON {
					self.location = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "location", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["lotNumber"] {
				presentKeys.insert("lotNumber")
				if let val = exist as? String {
					self.lotNumber = val
				}
				else {
					errors.append(FHIRJSONError(key: "lotNumber", wants: String.self, has: type(of: exist)))
				}
			}
			if let exist = js["manufactureDate"] {
				presentKeys.insert("manufactureDate")
				if let val = exist as? String {
					self.manufactureDate = DateTime(string: val)
				}
				else {
					errors.append(FHIRJSONError(key: "manufactureDate", wants: String.self, has: type(of: exist)))
				}
			}
			if let exist = js["manufacturer"] {
				presentKeys.insert("manufacturer")
				if let val = exist as? String {
					self.manufacturer = val
				}
				else {
					errors.append(FHIRJSONError(key: "manufacturer", wants: String.self, has: type(of: exist)))
				}
			}
			if let exist = js["model"] {
				presentKeys.insert("model")
				if let val = exist as? String {
					self.model = val
				}
				else {
					errors.append(FHIRJSONError(key: "model", wants: String.self, has: type(of: exist)))
				}
			}
			if let exist = js["note"] {
				presentKeys.insert("note")
				if let val = exist as? [FHIRJSON] {
					self.note = Annotation.instantiate(fromArray: val, owner: self) as? [Annotation]
				}
				else {
					errors.append(FHIRJSONError(key: "note", wants: Array<FHIRJSON>.self, has: type(of: exist)))
				}
			}
			if let exist = js["owner"] {
				presentKeys.insert("owner")
				if let val = exist as? FHIRJSON {
					self.owner = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "owner", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["patient"] {
				presentKeys.insert("patient")
				if let val = exist as? FHIRJSON {
					self.patient = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "patient", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["status"] {
				presentKeys.insert("status")
				if let val = exist as? String {
					self.status = val
				}
				else {
					errors.append(FHIRJSONError(key: "status", wants: String.self, has: type(of: exist)))
				}
			}
			if let exist = js["type"] {
				presentKeys.insert("type")
				if let val = exist as? FHIRJSON {
					self.type = CodeableConcept(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "type", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "type"))
			}
			if let exist = js["udiCarrier"] {
				presentKeys.insert("udiCarrier")
				if let val = exist as? FHIRJSON {
					self.udiCarrier = Identifier(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "udiCarrier", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["url"] {
				presentKeys.insert("url")
				if let val = exist as? String {
					self.url = URL(string: val)
				}
				else {
					errors.append(FHIRJSONError(key: "url", wants: String.self, has: type(of: exist)))
				}
			}
			if let exist = js["version"] {
				presentKeys.insert("version")
				if let val = exist as? String {
					self.version = val
				}
				else {
					errors.append(FHIRJSONError(key: "version", wants: String.self, has: type(of: exist)))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let contact = self.contact {
			json["contact"] = contact.map() { $0.asJSON() }
		}
		if let expirationDate = self.expirationDate {
			json["expirationDate"] = expirationDate.asJSON()
		}
		if let identifier = self.identifier {
			json["identifier"] = identifier.map() { $0.asJSON() }
		}
		if let location = self.location {
			json["location"] = location.asJSON()
		}
		if let lotNumber = self.lotNumber {
			json["lotNumber"] = lotNumber.asJSON()
		}
		if let manufactureDate = self.manufactureDate {
			json["manufactureDate"] = manufactureDate.asJSON()
		}
		if let manufacturer = self.manufacturer {
			json["manufacturer"] = manufacturer.asJSON()
		}
		if let model = self.model {
			json["model"] = model.asJSON()
		}
		if let note = self.note {
			json["note"] = note.map() { $0.asJSON() }
		}
		if let owner = self.owner {
			json["owner"] = owner.asJSON()
		}
		if let patient = self.patient {
			json["patient"] = patient.asJSON()
		}
		if let status = self.status {
			json["status"] = status.asJSON()
		}
		if let type = self.type {
			json["type"] = type.asJSON()
		}
		if let udiCarrier = self.udiCarrier {
			json["udiCarrier"] = udiCarrier.asJSON()
		}
		if let url = self.url {
			json["url"] = url.asJSON()
		}
		if let version = self.version {
			json["version"] = version.asJSON()
		}
		
		return json
	}
}

