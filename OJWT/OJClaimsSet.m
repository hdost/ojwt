//
//  OJClaimsSet.m
//  
//
//  Created by Harold Dost III on 16/10/14.
//
//

#import "OJClaimsSet.h"
#import "NSDate+OJDateUtilities.h"

@implementation OJClaimsSet

+(instancetype)init;
+(instancetype)initWithJSON:(NSString*)jsonString;
+(instancetype)initWithIssuer:(NSString*)issuer
                      subject:(NSString*)subject
                     audience:(NSString*)audience
                   expiration:(NSDate*)expiration
                    notBefore:(NSDate*)notBefore
                     issuedAt:(NSDate*)issuedAt
                        jwtId:(NSString*)jwtId{
    self = [super init];
    self.issuer = issuer;
    self.subject = subject;
    self.audience = audience;
    self.expiration = expiration;
    self.notBefore = notBefore;
    self.issuedAt = issuedAt;
    self.jwtId = jwtId;
}

- (BOOL)isExpired{

    NSDate* now = [NSDate date];
    
    NSComparisonResult* result = [self.expiration compare:now];
    if (result == NSOrderedDescending) {
        return NO;
    }
    else {
        return YES;
    }
}

- (NSString*)toJSON{
    [[NSException exceptionWithName:@"Not Implemented!" reason:@"Method toJSON: is not implmented yet." userInfo:nil] raise];
}

- (NSString*)toBase64EncodedJSON{
    NSString
    
    NSData
    
    return output;
}

@end
