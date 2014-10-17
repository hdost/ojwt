//
//  NSString+OJStringUtilities.m
//  
//
//  Created by Harold Dost III on 17/10/14.
//
//

#import "NSString+OJStringUtilities.h"

@implementation NSString (OJStringUtilities)
-(NSString*) base64EncodedString{
    return [[self dataUsingEncoding:NSUTF8StringEncoding] base64EncodedStringWithOptions:0];
}
@end
