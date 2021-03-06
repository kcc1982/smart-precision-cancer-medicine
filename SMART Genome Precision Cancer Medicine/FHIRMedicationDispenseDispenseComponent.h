﻿/*
  Copyright (c) 2011-2013, HL7, Inc.
  All rights reserved.
  
  Redistribution and use in source and binary forms, with or without modification, 
  are permitted provided that the following conditions are met:
  
   * Redistributions of source code must retain the above copyright notice, this 
     list of conditions and the following disclaimer.
   * Redistributions in binary form must reproduce the above copyright notice, 
     this list of conditions and the following disclaimer in the documentation 
     and/or other materials provided with the distribution.
   * Neither the name of HL7 nor the names of its contributors may be used to 
     endorse or promote products derived from this software without specific 
     prior written permission.
  
  THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND 
  ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED 
  WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. 
  IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, 
  INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT 
  NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR 
  PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, 
  WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) 
  ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE 
  POSSIBILITY OF SUCH DAMAGE.
  

 * Generated on Fri, May 9, 2014 11:14+1000 for FHIR v0.0.81
 */
/*
 * null
 *
 * [FhirComposite("MedicationDispenseDispenseComponent")]
 * [Serializable]
 */

#import "FHIRElement.h"

#import "FHIRMedicationDispense.h"

@class FHIRIdentifier;
@class FHIRCode;
@class FHIRCodeableConcept;
@class FHIRQuantity;
@class FHIRResource;
@class FHIRDateTime;
@class FHIRMedicationDispenseDispenseDosageComponent;

@interface FHIRMedicationDispenseDispenseComponent : FHIRElement

/*
 * External identifier for individual item
 */
@property (nonatomic, strong) FHIRIdentifier *identifier;

/*
 * in progress | on hold | completed | entered in error | stopped
 */
@property (nonatomic, strong) FHIRCode/*<code>*/ *statusElement;

@property (nonatomic) kMedicationDispenseStatus status;

/*
 * Trial fill, partial fill, emergency fill, etc.
 */
@property (nonatomic, strong) FHIRCodeableConcept *type;

/*
 * Amount dispensed
 */
@property (nonatomic, strong) FHIRQuantity *quantity;

/*
 * What medication was supplied
 */
@property (nonatomic, strong) FHIRResource *medication;

/*
 * Dispense processing time
 */
@property (nonatomic, strong) FHIRDateTime *whenPreparedElement;

@property (nonatomic, strong) NSString *whenPrepared;

/*
 * Handover time
 */
@property (nonatomic, strong) FHIRDateTime *whenHandedOverElement;

@property (nonatomic, strong) NSString *whenHandedOver;

/*
 * Where the medication was sent
 */
@property (nonatomic, strong) FHIRResource *destination;

/*
 * Who collected the medication
 */
@property (nonatomic, strong) NSArray/*<ResourceReference>*/ *receiver;

/*
 * Medicine administration instructions to the patient/carer
 */
@property (nonatomic, strong) NSArray/*<MedicationDispenseDispenseDosageComponent>*/ *dosage;

- (FHIRErrorList *)validate;

@end
