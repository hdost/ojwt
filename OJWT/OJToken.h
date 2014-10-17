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

@property (nonatomic,strong) NSString* originalString;
@property (nonatomic,strong) OJHeader* header;
@property (nonatomic,strong) OJClaimsSet* claimsSet;
@property (nonatomic,strong) NSString* signature;

+(instancetype) initWithTokenString:(NSString*)tokenString;
-(BOOL)isValid;
@end
