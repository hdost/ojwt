//
//  OJClaimsSet.h
//  
//
//  Created by Harold Dost III on 16/10/14.
//
//

#import <Foundation/Foundation.h>

@interface OJClaimsSet : NSObject

@property (nonatomic,strong) NSString* issuer;
@property (nonatomic,strong) NSString* subject;
@property (nonatomic,strong) NSString* audience;
@property (nonatomic,strong) NSDate* expiration;
@property (nonatomic,strong) NSDate* notBefore;
@property (nonatomic,strong) NSDate* issuedAt;
@property (nonatomic,strong) NSString* jwtId;

+(instancetype)init;
+(instancetype)initWithJSON:(NSString*)jsonString;
+(instancetype)initWithIssuer:(NSString*)issuer
                      subject:(NSString*)subject
                     audience:(NSString*)audience
                   expiration:(NSDate*)expiration
                    notBefore:(NSDate*)notBefore
                     issuedAt:(NSDate*)issuedAt
                        jwtId:(NSString*)jwtId;

- (NSString*)toJSON;
- (NSString*)toBase64EncodedJSON;
-(BOOL)isExpired;


@end
