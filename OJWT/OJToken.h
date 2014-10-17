//
//  OJToken.h
//  
//
//  Created by Harold Dost III on 16/10/14.
//
//

#import <Foundation/Foundation.h>
#import "OJClaimsSet.h"
#import "OJHeader.h"

@interface OJToken : NSObject

@property (nonatomic,strong) OJHeader* header;
@property (nonatomic,strong) OJClaimsSet* claimsSet;

+(instancetype) initWithTokenString:(NSString*)tokenString;
+(BOOL)isTokenStringExpired:(NSString*)tokenString;
-(BOOL)isExpired;
@end
