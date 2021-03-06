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
 * Information about a person or animal receiving health care services
 */
#import "FHIRPatient.h"

#import "FHIRIdentifier.h"
#import "FHIRHumanName.h"
#import "FHIRContact.h"
#import "FHIRCodeableConcept.h"
#import "FHIRDateTime.h"
#import "FHIRElement.h"
#import "FHIRAddress.h"
#import "FHIRAttachment.h"
#import "FHIRContactComponent.h"
#import "FHIRAnimalComponent.h"
#import "FHIRResource.h"
#import "FHIRPatientLinkComponent.h"
#import "FHIRBoolean.h"

#import "FHIRErrorList.h"

@implementation FHIRPatient

- (NSString *)birthDate
{
    if(self.birthDateElement)
    {
        return [self.birthDateElement value];
    }
    return nil;
}

- (void )setBirthDate:(NSString *)birthDate
{
    if(birthDate)
    {
        [self setBirthDateElement:[[FHIRDateTime alloc] initWithValue:birthDate]];
    }
    else
    {
        [self setBirthDateElement:nil];
    }
}


- (NSNumber *)active
{
    if(self.activeElement)
    {
        return [self.activeElement value];
    }
    return nil;
}

- (void )setActive:(NSNumber *)active
{
    if(active)
    {
        [self setActiveElement:[[FHIRBoolean alloc] initWithValue:active]];
    }
    else
    {
        [self setActiveElement:nil];
    }
}


- (FHIRErrorList *)validate
{
    FHIRErrorList *result = [[FHIRErrorList alloc] init];
    
    [result addValidation:[super validate]];
    
    if(self.identifier != nil )
        for(FHIRIdentifier *elem in self.identifier)
            [result addValidationRange:[elem validate]];
    if(self.name != nil )
        for(FHIRHumanName *elem in self.name)
            [result addValidationRange:[elem validate]];
    if(self.telecom != nil )
        for(FHIRContact *elem in self.telecom)
            [result addValidationRange:[elem validate]];
    if(self.gender != nil )
        [result addValidationRange:[self.gender validate]];
    if(self.birthDateElement != nil )
        [result addValidationRange:[self.birthDateElement validate]];
    if(self.deceased != nil )
        [result addValidationRange:[self.deceased validate]];
    if(self.address != nil )
        for(FHIRAddress *elem in self.address)
            [result addValidationRange:[elem validate]];
    if(self.maritalStatus != nil )
        [result addValidationRange:[self.maritalStatus validate]];
    if(self.multipleBirth != nil )
        [result addValidationRange:[self.multipleBirth validate]];
    if(self.photo != nil )
        for(FHIRAttachment *elem in self.photo)
            [result addValidationRange:[elem validate]];
    if(self.contact != nil )
        for(FHIRContactComponent *elem in self.contact)
            [result addValidationRange:[elem validate]];
    if(self.animal != nil )
        [result addValidationRange:[self.animal validate]];
    if(self.communication != nil )
        for(FHIRCodeableConcept *elem in self.communication)
            [result addValidationRange:[elem validate]];
    if(self.careProvider != nil )
        for(FHIRResource *elem in self.careProvider)
            [result addValidationRange:[elem validate]];
    if(self.managingOrganization != nil )
        [result addValidationRange:[self.managingOrganization validate]];
    if(self.link != nil )
        for(FHIRPatientLinkComponent *elem in self.link)
            [result addValidationRange:[elem validate]];
    if(self.activeElement != nil )
        [result addValidationRange:[self.activeElement validate]];
    
    return result;
}

@end
