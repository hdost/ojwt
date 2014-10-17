//
//  OJWTAlgorithm.h
//  
//
//  Created by Harold Dost III on 10/10/14.
//
//

#import <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger,OJAlgorithmType){
    OJAlgorithmNone,
    OJAlgorithmHS256,
    OJAlgorithmHS384,
    OJAlgorithmHS512,
    OJAlgorithmRS256,
    OJAlgorithmRS384,
    OJAlgorithmRS512,
    OJAlgorithmES256,
    OJAlgorithmES384,
    OJAlgorithmES512,
};

@interface OJHeader : NSObject

@property (nonatomic,strong) NSInteger* algorithm;
@property (nonatomic,strong) NSString* type;
@property (nonatomic,strong) NSString* contentType;
@end
