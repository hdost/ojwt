//
//  NSDate+OJDateUtilities.h
//  
//
//  Created by Harold Dost III on 17/10/14.
//
//

#import <Foundation/Foundation.h>

@interface NSDate (OJDateUtilities)
+ (instancetype)initWithEpochString:(NSString*)string;
- (NSString*)toEpochString;
@end
