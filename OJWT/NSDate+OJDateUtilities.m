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
    return [NSDate dateWithTimeIntervalSince1970:[string doubleValue]];
}

- (NSString*)toEpochString{
    return [@(floor([date timeIntervalSince1970])) stringValue];
}

@end
