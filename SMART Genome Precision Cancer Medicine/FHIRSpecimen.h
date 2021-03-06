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
 * Sample for analysis
 *
 * [FhirResource("Specimen")]
 * [Serializable]
 */

#import "FHIRBaseResource.h"


@class FHIRIdentifier;
@class FHIRCodeableConcept;
@class FHIRSpecimenSourceComponent;
@class FHIRResource;
@class FHIRDateTime;
@class FHIRSpecimenCollectionComponent;
@class FHIRSpecimenTreatmentComponent;
@class FHIRSpecimenContainerComponent;

@interface FHIRSpecimen : FHIRBaseResource

/*
 * Type indicating if this is a parent or child relationship
 */
typedef enum 
{
    kHierarchicalRelationshipTypeParent, // The target resource is the parent of the focal specimen resource.
    kHierarchicalRelationshipTypeChild, // The target resource is the child of the focal specimen resource.
} kHierarchicalRelationshipType;

/*
 * External Identifier
 */
@property (nonatomic, strong) NSArray/*<Identifier>*/ *identifier;

/*
 * Kind of material that forms the specimen
 */
@property (nonatomic, strong) FHIRCodeableConcept *type;

/*
 * Parent of specimen
 */
@property (nonatomic, strong) NSArray/*<SpecimenSourceComponent>*/ *source;

/*
 * Where the specimen came from. This may be the patient(s) or from the environment or  a device
 */
@property (nonatomic, strong) FHIRResource *subject;

/*
 * Identifier assigned by the lab
 */
@property (nonatomic, strong) FHIRIdentifier *accessionIdentifier;

/*
 * The time when specimen was received for processing
 */
@property (nonatomic, strong) FHIRDateTime *receivedTimeElement;

@property (nonatomic, strong) NSString *receivedTime;

/*
 * Collection details
 */
@property (nonatomic, strong) FHIRSpecimenCollectionComponent *collection;

/*
 * Treatment and processing step details
 */
@property (nonatomic, strong) NSArray/*<SpecimenTreatmentComponent>*/ *treatment;

/*
 * Direct container of specimen (tube/slide, etc)
 */
@property (nonatomic, strong) NSArray/*<SpecimenContainerComponent>*/ *container;

- (FHIRErrorList *)validate;

@end
