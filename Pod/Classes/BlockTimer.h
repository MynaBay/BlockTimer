//
//  BlockTimer.h
//
//  Created by Kevin Snow on 12/12/12.
//  Copyright (c) 2012-2016 Kevin Snow. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BlockTimer : NSObject

+(BlockTimer*) timerWithTimeInterval:(NSTimeInterval)ti completion:(void(^)(BlockTimer* timer))block;
+(BlockTimer*) timerWithTimeInterval:(NSTimeInterval)ti repeats:(BOOL)yesOrNo completion:(void(^)(BlockTimer* timer))block;

-(BlockTimer*) initWithTimeInterval:(NSTimeInterval)ti completion:(void(^)(BlockTimer* timer))block;
-(BlockTimer*) initWithTimeInterval:(NSTimeInterval)ti repeats:(BOOL)yesOrNo completion:(void(^)(BlockTimer* timer))block;

-(void) fire;
-(void) invalidate;

@property (readonly) NSTimeInterval timeInterval;
@property (readonly) BOOL valid;

@end
