//
//  Measure.swift
//  SwiftFHIR
//
//  Generated from FHIR 1.4.0.8139 (http://hl7.org/fhir/StructureDefinition/Measure) on 2016-08-17.
//  2016, SMART Health IT.
//

import Foundation


/**
 *  A quality measure.
 *
 *  The Measure resource provides the definition of a quality measure.
 */
open class Measure: DomainResource {
	override open class var resourceType: String {
		get { return "Measure" }
	}
	
	/// Clinical recommendation.
	public var clinicalRecommendationStatement: String?
	
	/// A natural language definition of the measure.
	public var definition: String?
	
	/// Disclaimer for the measure.
	public var disclaimer: String?
	
	/// Population criteria group.
	public var group: [MeasureGroup]?
	
	/// The guidance for the measure.
	public var guidance: String?
	
	/// Improvement notation for the measure, e.g. higher score indicates better quality.
	public var improvementNotation: String?
	
	/// Logic used by the measure.
	public var library: [Reference]?
	
	/// Metadata for the measure.
	public var moduleMetadata: ModuleMetadata?
	
	/// How is rate aggregation performed for this measure.
	public var rateAggregation: String?
	
	/// Why does this measure exist.
	public var rationale: String?
	
	/// How is risk adjustment applied for this measure.
	public var riskAdjustment: String?
	
	/// proportion | ratio | continuous-variable | cohort.
	public var scoring: String?
	
	/// The measure set, e.g. Preventive Care and Screening.
	public var set: String?
	
	/// Supplemental data.
	public var supplementalData: [MeasureSupplementalData]?
	
	/// process | outcome.
	public var type: [String]?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	override open func populate(fromJSON json: FHIRJSON?, presentKeys: inout Set<String>) -> [FHIRJSONError]? {
		var errors = super.populate(fromJSON: json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist = js["clinicalRecommendationStatement"] {
				presentKeys.insert("clinicalRecommendationStatement")
				if let val = exist as? String {
					self.clinicalRecommendationStatement = val
				}
				else {
					errors.append(FHIRJSONError(key: "clinicalRecommendationStatement", wants: String.self, has: type(of: exist)))
				}
			}
			if let exist = js["definition"] {
				presentKeys.insert("definition")
				if let val = exist as? String {
					self.definition = val
				}
				else {
					errors.append(FHIRJSONError(key: "definition", wants: String.self, has: type(of: exist)))
				}
			}
			if let exist = js["disclaimer"] {
				presentKeys.insert("disclaimer")
				if let val = exist as? String {
					self.disclaimer = val
				}
				else {
					errors.append(FHIRJSONError(key: "disclaimer", wants: String.self, has: type(of: exist)))
				}
			}
			if let exist = js["group"] {
				presentKeys.insert("group")
				if let val = exist as? [FHIRJSON] {
					self.group = MeasureGroup.instantiate(fromArray: val, owner: self) as? [MeasureGroup]
				}
				else {
					errors.append(FHIRJSONError(key: "group", wants: Array<FHIRJSON>.self, has: type(of: exist)))
				}
			}
			if let exist = js["guidance"] {
				presentKeys.insert("guidance")
				if let val = exist as? String {
					self.guidance = val
				}
				else {
					errors.append(FHIRJSONError(key: "guidance", wants: String.self, has: type(of: exist)))
				}
			}
			if let exist = js["improvementNotation"] {
				presentKeys.insert("improvementNotation")
				if let val = exist as? String {
					self.improvementNotation = val
				}
				else {
					errors.append(FHIRJSONError(key: "improvementNotation", wants: String.self, has: type(of: exist)))
				}
			}
			if let exist = js["library"] {
				presentKeys.insert("library")
				if let val = exist as? [FHIRJSON] {
					self.library = Reference.instantiate(fromArray: val, owner: self) as? [Reference]
				}
				else {
					errors.append(FHIRJSONError(key: "library", wants: Array<FHIRJSON>.self, has: type(of: exist)))
				}
			}
			if let exist = js["moduleMetadata"] {
				presentKeys.insert("moduleMetadata")
				if let val = exist as? FHIRJSON {
					self.moduleMetadata = ModuleMetadata(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "moduleMetadata", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			if let exist = js["rateAggregation"] {
				presentKeys.insert("rateAggregation")
				if let val = exist as? String {
					self.rateAggregation = val
				}
				else {
					errors.append(FHIRJSONError(key: "rateAggregation", wants: String.self, has: type(of: exist)))
				}
			}
			if let exist = js["rationale"] {
				presentKeys.insert("rationale")
				if let val = exist as? String {
					self.rationale = val
				}
				else {
					errors.append(FHIRJSONError(key: "rationale", wants: String.self, has: type(of: exist)))
				}
			}
			if let exist = js["riskAdjustment"] {
				presentKeys.insert("riskAdjustment")
				if let val = exist as? String {
					self.riskAdjustment = val
				}
				else {
					errors.append(FHIRJSONError(key: "riskAdjustment", wants: String.self, has: type(of: exist)))
				}
			}
			if let exist = js["scoring"] {
				presentKeys.insert("scoring")
				if let val = exist as? String {
					self.scoring = val
				}
				else {
					errors.append(FHIRJSONError(key: "scoring", wants: String.self, has: type(of: exist)))
				}
			}
			if let exist = js["set"] {
				presentKeys.insert("set")
				if let val = exist as? String {
					self.set = val
				}
				else {
					errors.append(FHIRJSONError(key: "set", wants: String.self, has: type(of: exist)))
				}
			}
			if let exist = js["supplementalData"] {
				presentKeys.insert("supplementalData")
				if let val = exist as? [FHIRJSON] {
					self.supplementalData = MeasureSupplementalData.instantiate(fromArray: val, owner: self) as? [MeasureSupplementalData]
				}
				else {
					errors.append(FHIRJSONError(key: "supplementalData", wants: Array<FHIRJSON>.self, has: type(of: exist)))
				}
			}
			if let exist = js["type"] {
				presentKeys.insert("type")
				if let val = exist as? [String] {
					self.type = val
				}
				else {
					errors.append(FHIRJSONError(key: "type", wants: Array<String>.self, has: type(of: exist)))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let clinicalRecommendationStatement = self.clinicalRecommendationStatement {
			json["clinicalRecommendationStatement"] = clinicalRecommendationStatement.asJSON()
		}
		if let definition = self.definition {
			json["definition"] = definition.asJSON()
		}
		if let disclaimer = self.disclaimer {
			json["disclaimer"] = disclaimer.asJSON()
		}
		if let group = self.group {
			json["group"] = group.map() { $0.asJSON() }
		}
		if let guidance = self.guidance {
			json["guidance"] = guidance.asJSON()
		}
		if let improvementNotation = self.improvementNotation {
			json["improvementNotation"] = improvementNotation.asJSON()
		}
		if let library = self.library {
			json["library"] = library.map() { $0.asJSON() }
		}
		if let moduleMetadata = self.moduleMetadata {
			json["moduleMetadata"] = moduleMetadata.asJSON()
		}
		if let rateAggregation = self.rateAggregation {
			json["rateAggregation"] = rateAggregation.asJSON()
		}
		if let rationale = self.rationale {
			json["rationale"] = rationale.asJSON()
		}
		if let riskAdjustment = self.riskAdjustment {
			json["riskAdjustment"] = riskAdjustment.asJSON()
		}
		if let scoring = self.scoring {
			json["scoring"] = scoring.asJSON()
		}
		if let set = self.set {
			json["set"] = set.asJSON()
		}
		if let supplementalData = self.supplementalData {
			json["supplementalData"] = supplementalData.map() { $0.asJSON() }
		}
		if let type = self.type {
			var arr = [Any]()
			for val in type {
				arr.append(val.asJSON())
			}
			json["type"] = arr
		}
		
		return json
	}
}


/**
 *  Population criteria group.
 *
 *  A group of population criteria for the measure.
 */
open class MeasureGroup: BackboneElement {
	override open class var resourceType: String {
		get { return "MeasureGroup" }
	}
	
	/// Summary description.
	public var description_fhir: String?
	
	/// Unique identifier.
	public var identifier: Identifier?
	
	/// Short name.
	public var name: String?
	
	/// Population criteria.
	public var population: [MeasureGroupPopulation]?
	
	/// Stratifier criteria for the measure.
	public var stratifier: [MeasureGroupStratifier]?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(identifier: Identifier) {
		self.init(json: nil)
		self.identifier = identifier
	}
	
	override open func populate(fromJSON json: FHIRJSON?, presentKeys: inout Set<String>) -> [FHIRJSONError]? {
		var errors = super.populate(fromJSON: json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist = js["description"] {
				presentKeys.insert("description")
				if let val = exist as? String {
					self.description_fhir = val
				}
				else {
					errors.append(FHIRJSONError(key: "description", wants: String.self, has: type(of: exist)))
				}
			}
			if let exist = js["identifier"] {
				presentKeys.insert("identifier")
				if let val = exist as? FHIRJSON {
					self.identifier = Identifier(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "identifier", wants: FHIRJSON.self, has: type(of: exist)))
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
			if let exist = js["population"] {
				presentKeys.insert("population")
				if let val = exist as? [FHIRJSON] {
					self.population = MeasureGroupPopulation.instantiate(fromArray: val, owner: self) as? [MeasureGroupPopulation]
				}
				else {
					errors.append(FHIRJSONError(key: "population", wants: Array<FHIRJSON>.self, has: type(of: exist)))
				}
			}
			if let exist = js["stratifier"] {
				presentKeys.insert("stratifier")
				if let val = exist as? [FHIRJSON] {
					self.stratifier = MeasureGroupStratifier.instantiate(fromArray: val, owner: self) as? [MeasureGroupStratifier]
				}
				else {
					errors.append(FHIRJSONError(key: "stratifier", wants: Array<FHIRJSON>.self, has: type(of: exist)))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let description_fhir = self.description_fhir {
			json["description"] = description_fhir.asJSON()
		}
		if let identifier = self.identifier {
			json["identifier"] = identifier.asJSON()
		}
		if let name = self.name {
			json["name"] = name.asJSON()
		}
		if let population = self.population {
			json["population"] = population.map() { $0.asJSON() }
		}
		if let stratifier = self.stratifier {
			json["stratifier"] = stratifier.map() { $0.asJSON() }
		}
		
		return json
	}
}


/**
 *  Population criteria.
 *
 *  A population criteria for the measure.
 */
open class MeasureGroupPopulation: BackboneElement {
	override open class var resourceType: String {
		get { return "MeasureGroupPopulation" }
	}
	
	/// The name of a valid referenced CQL expression (may be namespaced) that defines this population criteria.
	public var criteria: String?
	
	/// The human readable description of this population criteria.
	public var description_fhir: String?
	
	/// Unique identifier.
	public var identifier: Identifier?
	
	/// Short name.
	public var name: String?
	
	/// initial-population | numerator | numerator-exclusion | denominator | denominator-exclusion | denominator-exception | measure-population | measure-population-exclusion | measure-score.
	public var type: String?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(criteria: String, identifier: Identifier, type: String) {
		self.init(json: nil)
		self.criteria = criteria
		self.identifier = identifier
		self.type = type
	}
	
	override open func populate(fromJSON json: FHIRJSON?, presentKeys: inout Set<String>) -> [FHIRJSONError]? {
		var errors = super.populate(fromJSON: json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist = js["criteria"] {
				presentKeys.insert("criteria")
				if let val = exist as? String {
					self.criteria = val
				}
				else {
					errors.append(FHIRJSONError(key: "criteria", wants: String.self, has: type(of: exist)))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "criteria"))
			}
			if let exist = js["description"] {
				presentKeys.insert("description")
				if let val = exist as? String {
					self.description_fhir = val
				}
				else {
					errors.append(FHIRJSONError(key: "description", wants: String.self, has: type(of: exist)))
				}
			}
			if let exist = js["identifier"] {
				presentKeys.insert("identifier")
				if let val = exist as? FHIRJSON {
					self.identifier = Identifier(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "identifier", wants: FHIRJSON.self, has: type(of: exist)))
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
		
		if let criteria = self.criteria {
			json["criteria"] = criteria.asJSON()
		}
		if let description_fhir = self.description_fhir {
			json["description"] = description_fhir.asJSON()
		}
		if let identifier = self.identifier {
			json["identifier"] = identifier.asJSON()
		}
		if let name = self.name {
			json["name"] = name.asJSON()
		}
		if let type = self.type {
			json["type"] = type.asJSON()
		}
		
		return json
	}
}


/**
 *  Stratifier criteria for the measure.
 *
 *  The stratifier criteria for the measure report, specified as either the name of a valid CQL expression defined
 *  within a referenced library, or a valid FHIR Resource Path.
 */
open class MeasureGroupStratifier: BackboneElement {
	override open class var resourceType: String {
		get { return "MeasureGroupStratifier" }
	}
	
	/// Stratifier criteria.
	public var criteria: String?
	
	/// The identifier for the stratifier used to coordinate the reported data back to this stratifier.
	public var identifier: Identifier?
	
	/// Path to the stratifier.
	public var path: String?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(identifier: Identifier) {
		self.init(json: nil)
		self.identifier = identifier
	}
	
	override open func populate(fromJSON json: FHIRJSON?, presentKeys: inout Set<String>) -> [FHIRJSONError]? {
		var errors = super.populate(fromJSON: json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist = js["criteria"] {
				presentKeys.insert("criteria")
				if let val = exist as? String {
					self.criteria = val
				}
				else {
					errors.append(FHIRJSONError(key: "criteria", wants: String.self, has: type(of: exist)))
				}
			}
			if let exist = js["identifier"] {
				presentKeys.insert("identifier")
				if let val = exist as? FHIRJSON {
					self.identifier = Identifier(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "identifier", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "identifier"))
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
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let criteria = self.criteria {
			json["criteria"] = criteria.asJSON()
		}
		if let identifier = self.identifier {
			json["identifier"] = identifier.asJSON()
		}
		if let path = self.path {
			json["path"] = path.asJSON()
		}
		
		return json
	}
}


/**
 *  Supplemental data.
 *
 *  The supplemental data criteria for the measure report, specified as either the name of a valid CQL expression within
 *  a referenced library, or a valid FHIR Resource Path.
 */
open class MeasureSupplementalData: BackboneElement {
	override open class var resourceType: String {
		get { return "MeasureSupplementalData" }
	}
	
	/// Supplemental data criteria.
	public var criteria: String?
	
	/// Identifier, unique within the measure.
	public var identifier: Identifier?
	
	/// Path to the supplemental data element.
	public var path: String?
	
	/// supplemental-data | risk-adjustment-factor.
	public var usage: [String]?
	
	
	/** Initialize with a JSON object. */
	public required init(json: FHIRJSON?, owner: FHIRAbstractBase? = nil) {
		super.init(json: json, owner: owner)
	}
	
	/** Convenience initializer, taking all required properties as arguments. */
	public convenience init(identifier: Identifier) {
		self.init(json: nil)
		self.identifier = identifier
	}
	
	override open func populate(fromJSON json: FHIRJSON?, presentKeys: inout Set<String>) -> [FHIRJSONError]? {
		var errors = super.populate(fromJSON: json, presentKeys: &presentKeys) ?? [FHIRJSONError]()
		if let js = json {
			if let exist = js["criteria"] {
				presentKeys.insert("criteria")
				if let val = exist as? String {
					self.criteria = val
				}
				else {
					errors.append(FHIRJSONError(key: "criteria", wants: String.self, has: type(of: exist)))
				}
			}
			if let exist = js["identifier"] {
				presentKeys.insert("identifier")
				if let val = exist as? FHIRJSON {
					self.identifier = Identifier(json: val, owner: self)
				}
				else {
					errors.append(FHIRJSONError(key: "identifier", wants: FHIRJSON.self, has: type(of: exist)))
				}
			}
			else {
				errors.append(FHIRJSONError(key: "identifier"))
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
			if let exist = js["usage"] {
				presentKeys.insert("usage")
				if let val = exist as? [String] {
					self.usage = val
				}
				else {
					errors.append(FHIRJSONError(key: "usage", wants: Array<String>.self, has: type(of: exist)))
				}
			}
		}
		return errors.isEmpty ? nil : errors
	}
	
	override open func asJSON() -> FHIRJSON {
		var json = super.asJSON()
		
		if let criteria = self.criteria {
			json["criteria"] = criteria.asJSON()
		}
		if let identifier = self.identifier {
			json["identifier"] = identifier.asJSON()
		}
		if let path = self.path {
			json["path"] = path.asJSON()
		}
		if let usage = self.usage {
			var arr = [Any]()
			for val in usage {
				arr.append(val.asJSON())
			}
			json["usage"] = arr
		}
		
		return json
	}
}

