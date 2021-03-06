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
 * [FhirComposite("ImmunizationVaccinationProtocolComponent")]
 * [Serializable]
 */

#import "FHIRElement.h"

#import "FHIRImmunization.h"

@class FHIRInteger;
@class FHIRString;
@class FHIRResource;
@class FHIRCodeableConcept;

@interface FHIRImmunizationVaccinationProtocolComponent : FHIRElement

/*
 * What dose number within series?
 */
@property (nonatomic, strong) FHIRInteger *doseSequenceElement;

@property (nonatomic, strong) NSNumber *doseSequence;

/*
 * Details of vaccine protocol
 */
@property (nonatomic, strong) FHIRString *descriptionElement;

@property (nonatomic, strong) NSString *description;

/*
 * Who is responsible for protocol
 */
@property (nonatomic, strong) FHIRResource *authority;

/*
 * Name of vaccine series
 */
@property (nonatomic, strong) FHIRString *seriesElement;

@property (nonatomic, strong) NSString *series;

/*
 * Recommended number of doses for immunity
 */
@property (nonatomic, strong) FHIRInteger *seriesDosesElement;

@property (nonatomic, strong) NSNumber *seriesDoses;

/*
 * Disease immunized against
 */
@property (nonatomic, strong) FHIRCodeableConcept *doseTarget;

/*
 * Does dose count towards immunity?
 */
@property (nonatomic, strong) FHIRCodeableConcept *doseStatus;

/*
 * Why does does count/not count?
 */
@property (nonatomic, strong) FHIRCodeableConcept *doseStatusReason;

- (FHIRErrorList *)validate;

@end
