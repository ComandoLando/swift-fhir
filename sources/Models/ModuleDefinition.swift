//
//  ModuleDefinition.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.4.0.8139 (http://hl7.org/fhir/StructureDefinition/ModuleDefinition) on 2016-08-17.
//  2016, SMART Health IT.
//

import Foundation


/**
 *  Defines the data requirements information for a quality artifact.
 *
 *  The ModuleDefinition resource defines the data requirements for a quality artifact.
 */
open class ModuleDefinition: DomainResource {
	override open class var resourceType: String {
		get { return "ModuleDefinition" }
	}
	
	/// None.
	public var codeSystem: [ModuleDefinitionCodeSystem]?
	
	/// Describes a required data item.
	public var data: [ModuleDefinitionData]?
	
	/// Logical identifier.
	public var identifier: [Identifier]?
	
	/// A library referenced by the module.
	public var library: [ModuleDefinitionLibrary]?
	
	/// None.
	public var model: [ModuleDefinitionModel]?
	
	/// None.
	public var parameter: [ModuleDefinitionParameter]?
	
	/// None.
	public var valueSet: [ModuleDefinitionValueSet]?
	
	/// The version of the module, if any.
	public var version: String?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	override open func populate(fromJSON json: FHIRJSON?, presentKeys: inout Set<String>) -> [FHIRJSONError]? {
		var errors = super.populate(fromJSON: json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist = js["codeSystem"] {
				presentKeys.insert("codeSystem")
				if let val = exist as? [FHIRJSON] {
					self.codeSystem = ModuleDefinitionCodeSystem.instantiate(fromArray: val, owner: self) as? [ModuleDefinitionCodeSystem]
				}
				else {
					errors.append(FHIRJSONError(key: "codeSystem", wants: Array<FHIRJSON>.self, has: type(of: exist)))
				}
			}
			if let exist = js["data"] {
				presentKeys.insert("data")
				if let val = exist as? [FHIRJSON] {
					self.data = ModuleDefinitionData.instantiate(fromArray: val, owner: self) as? [ModuleDefinitionData]
				}
				else {
					errors.append(FHIRJSONError(key: "data", wants: Array<FHIRJSON>.self, has: type(of: exist)))
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
			if let exist = js["library"] {
				presentKeys.insert("library")
				if let val = exist as? [FHIRJSON] {
					self.library = ModuleDefinitionLibrary.instantiate(fromArray: val, owner: self) as? [ModuleDefinitionLibrary]
				}
				else {
					errors.append(FHIRJSONError(key: "library", wants: Array<FHIRJSON>.self, has: type(of: exist)))
				}
			}
			if let exist = js["model"] {
				presentKeys.insert("model")
				if let val = exist as? [FHIRJSON] {
					self.model = ModuleDefinitionModel.instantiate(fromArray: val, owner: self) as? [ModuleDefinitionModel]
				}
				else {
					errors.append(FHIRJSONError(key: "model", wants: Array<FHIRJSON>.self, has: type(of: exist)))
				}
			}
			if let exist = js["parameter"] {
				presentKeys.insert("parameter")
				if let val = exist as? [FHIRJSON] {
					self.parameter = ModuleDefinitionParameter.instantiate(fromArray: val, owner: self) as? [ModuleDefinitionParameter]
				}
				else {
					errors.append(FHIRJSONError(key: "parameter", wants: Array<FHIRJSON>.self, has: type(of: exist)))
				}
			}
			if let exist = js["valueSet"] {
				presentKeys.insert("valueSet")
				if let val = exist as? [FHIRJSON] {
					self.valueSet = ModuleDefinitionValueSet.instantiate(fromArray: val, owner: self) as? [ModuleDefinitionValueSet]
				}
				else {
					errors.append(FHIRJSONError(key: "valueSet", wants: Array<FHIRJSON>.self, has: type(of: exist)))
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
		
		if let codeSystem = self.codeSystem {
			json["codeSystem"] = codeSystem.map() { $0.asJSON() }
		}
		if let data = self.data {
			json["data"] = data.map() { $0.asJSON() }
		}
		if let identifier = self.identifier {
			json["identifier"] = identifier.map() { $0.asJSON() }
		}
		if let library = self.library {
			json["library"] = library.map() { $0.asJSON() }
		}
		if let model = self.model {
			json["model"] = model.map() { $0.asJSON() }
		}
		if let parameter = self.parameter {
			json["parameter"] = parameter.map() { $0.asJSON() }
		}
		if let valueSet = self.valueSet {
			json["valueSet"] = valueSet.map() { $0.asJSON() }
		}
		if let version = self.version {
			json["version"] = version.asJSON()
		}
		
		return json
	}
}


/**
 *  None.
 *
 *  A code system definition used within the knowledge module.
 */
open class ModuleDefinitionCodeSystem: BackboneElement {
	override open class var resourceType: String {
		get { return "ModuleDefinitionCodeSystem" }
	}
	
	/// None.
	public var identifier: String?
	
	/// None.
	public var name: String?
	
	/// None.
	public var version: String?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(identifier: String, name: String) {
		self.init(json: nil)
		self.identifier = identifier
		self.name = name
	}
	
	override open func populate(fromJSON json: FHIRJSON?, presentKeys: inout Set<String>) -> [FHIRJSONError]? {
		var errors = super.populate(fromJSON: json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist = js["identifier"] {
				presentKeys.insert("identifier")
				if let val = exist as? String {
					self.identifier = val
				}
				else {
					errors.append(FHIRJSONError(key: "identifier", wants: String.self, has: type(of: exist)))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "identifier"))
			}
			if let exist = js["name"] {
				presentKeys.insert("name")
				if let val = exist as? String {
					self.name = val
				}
				else {
					errors.append(FHIRJSONError(key: "name", wants: String.self, has: type(of: exist)))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "name"))
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
		
		if let identifier = self.identifier {
			json["identifier"] = identifier.asJSON()
		}
		if let name = self.name {
			json["name"] = name.asJSON()
		}
		if let version = self.version {
			json["version"] = version.asJSON()
		}
		
		return json
	}
}


/**
 *  Describes a required data item.
 *
 *  Describes a required data item for evaluation in terms of the type of data, and optional code- or date-based filters
 *  of the data.
 */
open class ModuleDefinitionData: BackboneElement {
	override open class var resourceType: String {
		get { return "ModuleDefinitionData" }
	}
	
	/// None.
	public var codeFilter: [ModuleDefinitionDataCodeFilter]?
	
	/// None.
	public var dateFilter: [ModuleDefinitionDataDateFilter]?
	
	/// Indicates that specific structure elements are referenced by the knowledge module.
	public var mustSupport: [String]?
	
	/// The profile of the required data.
	public var profile: Reference?
	
	/// The type of the required data.
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
			if let exist = js["codeFilter"] {
				presentKeys.insert("codeFilter")
				if let val = exist as? [FHIRJSON] {
					self.codeFilter = ModuleDefinitionDataCodeFilter.instantiate(fromArray: val, owner: self) as? [ModuleDefinitionDataCodeFilter]
				}
				else {
					errors.append(FHIRJSONError(key: "codeFilter", wants: Array<FHIRJSON>.self, has: type(of: exist)))
				}
			}
			if let exist = js["dateFilter"] {
				presentKeys.insert("dateFilter")
				if let val = exist as? [FHIRJSON] {
					self.dateFilter = ModuleDefinitionDataDateFilter.instantiate(fromArray: val, owner: self) as? [ModuleDefinitionDataDateFilter]
				}
				else {
					errors.append(FHIRJSONError(key: "dateFilter", wants: Array<FHIRJSON>.self, has: type(of: exist)))
				}
			}
			if let exist = js["mustSupport"] {
				presentKeys.insert("mustSupport")
				if let val = exist as? [String] {
					self.mustSupport = val
				}
				else {
					errors.append(FHIRJSONError(key: "mustSupport", wants: Array<String>.self, has: type(of: exist)))
				}
			}
			if let exist = js["profile"] {
				presentKeys.insert("profile")
				if let val = exist as? FHIRJSON {
					self.profile = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "profile", wants: FHIRJSON.self, has: type(of: exist)))
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
		
		if let codeFilter = self.codeFilter {
			json["codeFilter"] = codeFilter.map() { $0.asJSON() }
		}
		if let dateFilter = self.dateFilter {
			json["dateFilter"] = dateFilter.map() { $0.asJSON() }
		}
		if let mustSupport = self.mustSupport {
			var arr = [Any]()
			for val in mustSupport {
				arr.append(val.asJSON())
			}
			json["mustSupport"] = arr
		}
		if let profile = self.profile {
			json["profile"] = profile.asJSON()
		}
		if let type = self.type {
			json["type"] = type.asJSON()
		}
		
		return json
	}
}


/**
 *  None.
 *
 *  Code filters for the required data, if any.
 */
open class ModuleDefinitionDataCodeFilter: BackboneElement {
	override open class var resourceType: String {
		get { return "ModuleDefinitionDataCodeFilter" }
	}
	
	/// The codeableConcepts for the filter.
	public var codeableConcept: [CodeableConcept]?
	
	/// The code-valued attribute of the filter.
	public var path: String?
	
	/// The valueset for the code filter.
	public var valueSetReference: Reference?
	
	/// The valueset for the code filter.
	public var valueSetString: String?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(path: String) {
		self.init(json: nil)
		self.path = path
	}
	
	override open func populate(fromJSON json: FHIRJSON?, presentKeys: inout Set<String>) -> [FHIRJSONError]? {
		var errors = super.populate(fromJSON: json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist = js["codeableConcept"] {
				presentKeys.insert("codeableConcept")
				if let val = exist as? [FHIRJSON] {
					self.codeableConcept = CodeableConcept.instantiate(fromArray: val, owner: self) as? [CodeableConcept]
				}
				else {
					errors.append(FHIRJSONError(key: "codeableConcept", wants: Array<FHIRJSON>.self, has: type(of: exist)))
				}
			}
			if let exist = js["path"] {
				presentKeys.insert("path")
				if let val = exist as? String {
					self.path = val
				}
				else {
					errors.append(FHIRJSONError(key: "path", wants: String.self, has: type(of: exist)))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "path"))
			}
			if let exist = js["valueSetReference"] {
				presentKeys.insert("valueSetReference")
				if let val = exist as? FHIRJSON {
					self.valueSetReference = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "valueSetReference", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["valueSetString"] {
				presentKeys.insert("valueSetString")
				if let val = exist as? String {
					self.valueSetString = val
				}
				else {
					errors.append(FHIRJSONError(key: "valueSetString", wants: String.self, has: type(of: exist)))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let codeableConcept = self.codeableConcept {
			json["codeableConcept"] = codeableConcept.map() { $0.asJSON() }
		}
		if let path = self.path {
			json["path"] = path.asJSON()
		}
		if let valueSetReference = self.valueSetReference {
			json["valueSetReference"] = valueSetReference.asJSON()
		}
		if let valueSetString = self.valueSetString {
			json["valueSetString"] = valueSetString.asJSON()
		}
		
		return json
	}
}


/**
 *  None.
 *
 *  Date filters for the required data, if any.
 */
open class ModuleDefinitionDataDateFilter: BackboneElement {
	override open class var resourceType: String {
		get { return "ModuleDefinitionDataDateFilter" }
	}
	
	/// The date-valued attribute of the filter.
	public var path: String?
	
	/// The value of the filter, as a Period or dateTime value.
	public var valueDateTime: DateTime?
	
	/// The value of the filter, as a Period or dateTime value.
	public var valuePeriod: Period?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(path: String) {
		self.init(json: nil)
		self.path = path
	}
	
	override open func populate(fromJSON json: FHIRJSON?, presentKeys: inout Set<String>) -> [FHIRJSONError]? {
		var errors = super.populate(fromJSON: json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist = js["path"] {
				presentKeys.insert("path")
				if let val = exist as? String {
					self.path = val
				}
				else {
					errors.append(FHIRJSONError(key: "path", wants: String.self, has: type(of: exist)))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "path"))
			}
			if let exist = js["valueDateTime"] {
				presentKeys.insert("valueDateTime")
				if let val = exist as? String {
					self.valueDateTime = DateTime(string: val)
				}
				else {
					errors.append(FHIRJSONError(key: "valueDateTime", wants: String.self, has: type(of: exist)))
				}
			}
			if let exist = js["valuePeriod"] {
				presentKeys.insert("valuePeriod")
				if let val = exist as? FHIRJSON {
					self.valuePeriod = Period(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "valuePeriod", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let path = self.path {
			json["path"] = path.asJSON()
		}
		if let valueDateTime = self.valueDateTime {
			json["valueDateTime"] = valueDateTime.asJSON()
		}
		if let valuePeriod = self.valuePeriod {
			json["valuePeriod"] = valuePeriod.asJSON()
		}
		
		return json
	}
}


/**
 *  A library referenced by the module.
 *
 *  A library referenced by the module. The reference must consist of either an id, or a document reference.
 */
open class ModuleDefinitionLibrary: BackboneElement {
	override open class var resourceType: String {
		get { return "ModuleDefinitionLibrary" }
	}
	
	/// None.
	public var documentAttachment: Attachment?
	
	/// None.
	public var documentReference: Reference?
	
	/// None.
	public var identifier: String?
	
	/// The local name for the library.
	public var name: String?
	
	/// None.
	public var version: String?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	override open func populate(fromJSON json: FHIRJSON?, presentKeys: inout Set<String>) -> [FHIRJSONError]? {
		var errors = super.populate(fromJSON: json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist = js["documentAttachment"] {
				presentKeys.insert("documentAttachment")
				if let val = exist as? FHIRJSON {
					self.documentAttachment = Attachment(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "documentAttachment", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["documentReference"] {
				presentKeys.insert("documentReference")
				if let val = exist as? FHIRJSON {
					self.documentReference = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "documentReference", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["identifier"] {
				presentKeys.insert("identifier")
				if let val = exist as? String {
					self.identifier = val
				}
				else {
					errors.append(FHIRJSONError(key: "identifier", wants: String.self, has: type(of: exist)))
				}
			}
			if let exist = js["name"] {
				presentKeys.insert("name")
				if let val = exist as? String {
					self.name = val
				}
				else {
					errors.append(FHIRJSONError(key: "name", wants: String.self, has: type(of: exist)))
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
		
		if let documentAttachment = self.documentAttachment {
			json["documentAttachment"] = documentAttachment.asJSON()
		}
		if let documentReference = self.documentReference {
			json["documentReference"] = documentReference.asJSON()
		}
		if let identifier = self.identifier {
			json["identifier"] = identifier.asJSON()
		}
		if let name = self.name {
			json["name"] = name.asJSON()
		}
		if let version = self.version {
			json["version"] = version.asJSON()
		}
		
		return json
	}
}


/**
 *  None.
 *
 *  A model reference used by the content.
 */
open class ModuleDefinitionModel: BackboneElement {
	override open class var resourceType: String {
		get { return "ModuleDefinitionModel" }
	}
	
	/// None.
	public var identifier: String?
	
	/// None.
	public var name: String?
	
	/// None.
	public var version: String?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(identifier: String) {
		self.init(json: nil)
		self.identifier = identifier
	}
	
	override open func populate(fromJSON json: FHIRJSON?, presentKeys: inout Set<String>) -> [FHIRJSONError]? {
		var errors = super.populate(fromJSON: json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist = js["identifier"] {
				presentKeys.insert("identifier")
				if let val = exist as? String {
					self.identifier = val
				}
				else {
					errors.append(FHIRJSONError(key: "identifier", wants: String.self, has: type(of: exist)))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "identifier"))
			}
			if let exist = js["name"] {
				presentKeys.insert("name")
				if let val = exist as? String {
					self.name = val
				}
				else {
					errors.append(FHIRJSONError(key: "name", wants: String.self, has: type(of: exist)))
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
		
		if let identifier = self.identifier {
			json["identifier"] = identifier.asJSON()
		}
		if let name = self.name {
			json["name"] = name.asJSON()
		}
		if let version = self.version {
			json["version"] = version.asJSON()
		}
		
		return json
	}
}


/**
 *  None.
 *
 *  Parameters to the module.
 */
open class ModuleDefinitionParameter: BackboneElement {
	override open class var resourceType: String {
		get { return "ModuleDefinitionParameter" }
	}
	
	/// None.
	public var documentation: String?
	
	/// None.
	public var name: String?
	
	/// None.
	public var profile: Reference?
	
	/// None.
	public var type: String?
	
	/// None.
	public var use: String?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(name: String, type: String, use: String) {
		self.init(json: nil)
		self.name = name
		self.type = type
		self.use = use
	}
	
	override open func populate(fromJSON json: FHIRJSON?, presentKeys: inout Set<String>) -> [FHIRJSONError]? {
		var errors = super.populate(fromJSON: json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist = js["documentation"] {
				presentKeys.insert("documentation")
				if let val = exist as? String {
					self.documentation = val
				}
				else {
					errors.append(FHIRJSONError(key: "documentation", wants: String.self, has: type(of: exist)))
				}
			}
			if let exist = js["name"] {
				presentKeys.insert("name")
				if let val = exist as? String {
					self.name = val
				}
				else {
					errors.append(FHIRJSONError(key: "name", wants: String.self, has: type(of: exist)))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "name"))
			}
			if let exist = js["profile"] {
				presentKeys.insert("profile")
				if let val = exist as? FHIRJSON {
					self.profile = Reference(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "profile", wants: FHIRJSON.self, has: type(of: exist)))
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
			if let exist = js["use"] {
				presentKeys.insert("use")
				if let val = exist as? String {
					self.use = val
				}
				else {
					errors.append(FHIRJSONError(key: "use", wants: String.self, has: type(of: exist)))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "use"))
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let documentation = self.documentation {
			json["documentation"] = documentation.asJSON()
		}
		if let name = self.name {
			json["name"] = name.asJSON()
		}
		if let profile = self.profile {
			json["profile"] = profile.asJSON()
		}
		if let type = self.type {
			json["type"] = type.asJSON()
		}
		if let use = self.use {
			json["use"] = use.asJSON()
		}
		
		return json
	}
}


/**
 *  None.
 *
 *  A value set definition used by the knowledge module.
 */
open class ModuleDefinitionValueSet: BackboneElement {
	override open class var resourceType: String {
		get { return "ModuleDefinitionValueSet" }
	}
	
	/// None.
	public var codeSystem: [String]?
	
	/// None.
	public var identifier: String?
	
	/// None.
	public var name: String?
	
	/// None.
	public var version: String?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(identifier: String, name: String) {
		self.init(json: nil)
		self.identifier = identifier
		self.name = name
	}
	
	override open func populate(fromJSON json: FHIRJSON?, presentKeys: inout Set<String>) -> [FHIRJSONError]? {
		var errors = super.populate(fromJSON: json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist = js["codeSystem"] {
				presentKeys.insert("codeSystem")
				if let val = exist as? [String] {
					self.codeSystem = val
				}
				else {
					errors.append(FHIRJSONError(key: "codeSystem", wants: Array<String>.self, has: type(of: exist)))
				}
			}
			if let exist = js["identifier"] {
				presentKeys.insert("identifier")
				if let val = exist as? String {
					self.identifier = val
				}
				else {
					errors.append(FHIRJSONError(key: "identifier", wants: String.self, has: type(of: exist)))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "identifier"))
			}
			if let exist = js["name"] {
				presentKeys.insert("name")
				if let val = exist as? String {
					self.name = val
				}
				else {
					errors.append(FHIRJSONError(key: "name", wants: String.self, has: type(of: exist)))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "name"))
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
		
		if let codeSystem = self.codeSystem {
			var arr = [Any]()
			for val in codeSystem {
				arr.append(val.asJSON())
			}
			json["codeSystem"] = arr
		}
		if let identifier = self.identifier {
			json["identifier"] = identifier.asJSON()
		}
		if let name = self.name {
			json["name"] = name.asJSON()
		}
		if let version = self.version {
			json["version"] = version.asJSON()
		}
		
		return json
	}
}

