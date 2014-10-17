//
//  OJToken.m
//  
//
//  Created by Harold Dost III on 16/10/14.
//
//

#import "OJToken.h"

@implementation OJToken


+(instancetype) initWithTokenString:(NSString*)tokenString{
    self = [super init];
    if (!self) {
        return nil;
    }
    self.originalString = tokenString;
    NSArray* components = [tokenString componentsSeparatedByString:@"."];
    self.header = [[OJHeader alloc] initWithBase64String:[components objectAtIndex:0]];
    self.claimsSet = [[OJClaimsSet alloc] initWithBase64String:[components objectAtIndex:1]];
    self.signature = [components objectAtIndex:2];
}

+(BOOL) isValid:(NSString*)publicKey{
    if ([self.claimsSet isExpired]) {
        return NO;
    }
    
}

@end
