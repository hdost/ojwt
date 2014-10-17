//
//  NSDate+OJDateUtilities.m
//  
//
//  Created by Harold Dost III on 17/10/14.
//
//

#import "NSDate+OJDateUtilities.h"

@implementation NSDate (OJDateUtilities)

+ (instancetype)initWithEpochString:(NSString*)string{
    return [[NSDate alloc] dateWithTimeIntervalSince1970:[string doubleValue]];
}

- (NSString*)toEpochString{
    return [@(floor([self timeIntervalSince1970])) stringValue];
}

@end
