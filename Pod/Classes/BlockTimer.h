//
//  BlockTimer.h
//
//  Created by Kevin Snow on 12/12/12.
//  Copyright (c) 2012-2016 Kevin Snow. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BlockTimer : NSObject

+(BlockTimer* _Nonnull) timerWithTimeInterval:(NSTimeInterval)ti completion:(void(^ _Nullable)(BlockTimer* _Nonnull timer))block;
+(BlockTimer* _Nonnull) timerWithTimeInterval:(NSTimeInterval)ti repeats:(BOOL)yesOrNo completion:(void(^ _Nullable)(BlockTimer* _Nonnull timer))block;

-(BlockTimer* _Nonnull) initWithTimeInterval:(NSTimeInterval)ti completion:(void(^ _Nullable)(BlockTimer* _Nonnull timer))block;
-(BlockTimer* _Nonnull) initWithTimeInterval:(NSTimeInterval)ti repeats:(BOOL)yesOrNo completion:(void(^ _Nullable)(BlockTimer* _Nonnull timer))block;

-(void) fire;
-(void) invalidate;

@property (readonly) NSTimeInterval timeInterval;
@property (readonly) NSTimeInterval timeRemaining;
@property (readonly) BOOL valid;

@property (nullable, strong) id userInfo;

@end
