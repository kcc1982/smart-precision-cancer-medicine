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
 * An person that is related to a patient, but who is not a direct target of care
 *
 * [FhirResource("RelatedPerson")]
 * [Serializable]
 */

#import "FHIRBaseResource.h"


@class FHIRIdentifier;
@class FHIRResource;
@class FHIRCodeableConcept;
@class FHIRHumanName;
@class FHIRContact;
@class FHIRAddress;
@class FHIRAttachment;

@interface FHIRRelatedPerson : FHIRBaseResource

/*
 * A Human identifier for this person
 */
@property (nonatomic, strong) NSArray/*<Identifier>*/ *identifier;

/*
 * The patient this person is related to
 */
@property (nonatomic, strong) FHIRResource *patient;

/*
 * The nature of the relationship
 */
@property (nonatomic, strong) FHIRCodeableConcept *relationship;

/*
 * A name associated with the person
 */
@property (nonatomic, strong) FHIRHumanName *name;

/*
 * A contact detail for the person
 */
@property (nonatomic, strong) NSArray/*<Contact>*/ *telecom;

/*
 * Gender for administrative purposes
 */
@property (nonatomic, strong) FHIRCodeableConcept *gender;

/*
 * Address where the related person can be contacted or visited
 */
@property (nonatomic, strong) FHIRAddress *address;

/*
 * Image of the person
 */
@property (nonatomic, strong) NSArray/*<Attachment>*/ *photo;

- (FHIRErrorList *)validate;

@end
