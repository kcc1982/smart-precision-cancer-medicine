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
 * A statement of relationships from one set of concepts to one or more other concept systems
 */
#import "FHIRConceptMap.h"

#import "FHIRString.h"
#import "FHIRContact.h"
#import "FHIRCode.h"
#import "FHIRBoolean.h"
#import "FHIRDateTime.h"
#import "FHIRResource.h"
#import "FHIRConceptMapConceptComponent.h"

#import "FHIRErrorList.h"

@implementation FHIRConceptMap

- (NSString *)identifier
{
    if(self.identifierElement)
    {
        return [self.identifierElement value];
    }
    return nil;
}

- (void )setIdentifier:(NSString *)identifier
{
    if(identifier)
    {
        [self setIdentifierElement:[[FHIRString alloc] initWithValue:identifier]];
    }
    else
    {
        [self setIdentifierElement:nil];
    }
}


- (NSString *)version
{
    if(self.versionElement)
    {
        return [self.versionElement value];
    }
    return nil;
}

- (void )setVersion:(NSString *)version
{
    if(version)
    {
        [self setVersionElement:[[FHIRString alloc] initWithValue:version]];
    }
    else
    {
        [self setVersionElement:nil];
    }
}


- (NSString *)name
{
    if(self.nameElement)
    {
        return [self.nameElement value];
    }
    return nil;
}

- (void )setName:(NSString *)name
{
    if(name)
    {
        [self setNameElement:[[FHIRString alloc] initWithValue:name]];
    }
    else
    {
        [self setNameElement:nil];
    }
}


- (NSString *)publisher
{
    if(self.publisherElement)
    {
        return [self.publisherElement value];
    }
    return nil;
}

- (void )setPublisher:(NSString *)publisher
{
    if(publisher)
    {
        [self setPublisherElement:[[FHIRString alloc] initWithValue:publisher]];
    }
    else
    {
        [self setPublisherElement:nil];
    }
}


- (NSString *)description
{
    if(self.descriptionElement)
    {
        return [self.descriptionElement value];
    }
    return nil;
}

- (void )setDescription:(NSString *)description
{
    if(description)
    {
        [self setDescriptionElement:[[FHIRString alloc] initWithValue:description]];
    }
    else
    {
        [self setDescriptionElement:nil];
    }
}


- (NSString *)copyright
{
    if(self.copyrightElement)
    {
        return [self.copyrightElement value];
    }
    return nil;
}

- (void )setCopyright:(NSString *)copyright
{
    if(copyright)
    {
        [self setCopyrightElement:[[FHIRString alloc] initWithValue:copyright]];
    }
    else
    {
        [self setCopyrightElement:nil];
    }
}


- (NSString *)status
{
    if(self.statusElement)
    {
        return [self.statusElement value];
    }
    return nil;
}

- (void )setStatus:(NSString *)status
{
    if(status)
    {
        [self setStatusElement:[[FHIRCode alloc] initWithValue:status]];
    }
    else
    {
        [self setStatusElement:nil];
    }
}


- (NSNumber *)experimental
{
    if(self.experimentalElement)
    {
        return [self.experimentalElement value];
    }
    return nil;
}

- (void )setExperimental:(NSNumber *)experimental
{
    if(experimental)
    {
        [self setExperimentalElement:[[FHIRBoolean alloc] initWithValue:experimental]];
    }
    else
    {
        [self setExperimentalElement:nil];
    }
}


- (NSString *)date
{
    if(self.dateElement)
    {
        return [self.dateElement value];
    }
    return nil;
}

- (void )setDate:(NSString *)date
{
    if(date)
    {
        [self setDateElement:[[FHIRDateTime alloc] initWithValue:date]];
    }
    else
    {
        [self setDateElement:nil];
    }
}


- (FHIRErrorList *)validate
{
    FHIRErrorList *result = [[FHIRErrorList alloc] init];
    
    [result addValidation:[super validate]];
    
    if(self.identifierElement != nil )
        [result addValidationRange:[self.identifierElement validate]];
    if(self.versionElement != nil )
        [result addValidationRange:[self.versionElement validate]];
    if(self.nameElement != nil )
        [result addValidationRange:[self.nameElement validate]];
    if(self.publisherElement != nil )
        [result addValidationRange:[self.publisherElement validate]];
    if(self.telecom != nil )
        for(FHIRContact *elem in self.telecom)
            [result addValidationRange:[elem validate]];
    if(self.descriptionElement != nil )
        [result addValidationRange:[self.descriptionElement validate]];
    if(self.copyrightElement != nil )
        [result addValidationRange:[self.copyrightElement validate]];
    if(self.statusElement != nil )
        [result addValidationRange:[self.statusElement validate]];
    if(self.experimentalElement != nil )
        [result addValidationRange:[self.experimentalElement validate]];
    if(self.dateElement != nil )
        [result addValidationRange:[self.dateElement validate]];
    if(self.source != nil )
        [result addValidationRange:[self.source validate]];
    if(self.target != nil )
        [result addValidationRange:[self.target validate]];
    if(self.concept != nil )
        for(FHIRConceptMapConceptComponent *elem in self.concept)
            [result addValidationRange:[elem validate]];
    
    return result;
}

@end
