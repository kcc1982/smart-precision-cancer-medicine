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
 * A structured set of questions and their answers
 */
#import "FHIRQuestionnaire.h"

#import "FHIRCode.h"
#import "FHIRDateTime.h"
#import "FHIRResource.h"
#import "FHIRCodeableConcept.h"
#import "FHIRIdentifier.h"
#import "FHIRGroupComponent.h"

#import "FHIRErrorList.h"

@implementation FHIRQuestionnaire

- (kQuestionnaireStatus )status
{
    return [FHIREnumHelper parseString:[self.statusElement value] enumType:kEnumTypeQuestionnaireStatus];
}

- (void )setStatus:(kQuestionnaireStatus )status
{
    [self setStatusElement:[[FHIRCode/*<code>*/ alloc] initWithValue:[FHIREnumHelper enumToString:status enumType:kEnumTypeQuestionnaireStatus]]];
}


- (NSString *)authored
{
    if(self.authoredElement)
    {
        return [self.authoredElement value];
    }
    return nil;
}

- (void )setAuthored:(NSString *)authored
{
    if(authored)
    {
        [self setAuthoredElement:[[FHIRDateTime alloc] initWithValue:authored]];
    }
    else
    {
        [self setAuthoredElement:nil];
    }
}


- (FHIRErrorList *)validate
{
    FHIRErrorList *result = [[FHIRErrorList alloc] init];
    
    [result addValidation:[super validate]];
    
    if(self.statusElement != nil )
        [result addValidationRange:[self.statusElement validate]];
    if(self.authoredElement != nil )
        [result addValidationRange:[self.authoredElement validate]];
    if(self.subject != nil )
        [result addValidationRange:[self.subject validate]];
    if(self.author != nil )
        [result addValidationRange:[self.author validate]];
    if(self.source != nil )
        [result addValidationRange:[self.source validate]];
    if(self.name != nil )
        [result addValidationRange:[self.name validate]];
    if(self.identifier != nil )
        for(FHIRIdentifier *elem in self.identifier)
            [result addValidationRange:[elem validate]];
    if(self.encounter != nil )
        [result addValidationRange:[self.encounter validate]];
    if(self.group != nil )
        [result addValidationRange:[self.group validate]];
    
    return result;
}

@end
