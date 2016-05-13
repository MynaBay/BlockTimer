//
//  BlockTimer.m
//
//  Created by Kevin Snow on 12/12/12.
//  Copyright (c) 2012-2016 Kevin Snow. All rights reserved.
//

#import "BlockTimer.h"

///////////////////////////////////////////////////////////////////////////////////////////////////////////////

@interface BlockTimer ()
@property (nonatomic,retain) NSTimer* internalTimer;
@property (nonatomic,copy) void(^completionBlock)(BlockTimer* timer);
@end

///////////////////////////////////////////////////////////////////////////////////////////////////////////////

@implementation BlockTimer

-(void) dealloc
{
    [_internalTimer invalidate];
}

///////////////////////////////////////////////////////////////////////////////////////////////////////////////

+(BlockTimer*) timerWithTimeInterval:(NSTimeInterval)ti completion:(void(^)(BlockTimer* timer))block
{
    return [[BlockTimer alloc] initWithTimeInterval:ti completion:block];
}

+(BlockTimer*) timerWithTimeInterval:(NSTimeInterval)ti repeats:(BOOL)yesOrNo completion:(void(^)(BlockTimer* timer))block
{
    return [[BlockTimer alloc] initWithTimeInterval:ti repeats:yesOrNo completion:block];
}

///////////////////////////////////////////////////////////////////////////////////////////////////////////////

-(BlockTimer*) initWithTimeInterval:(NSTimeInterval)interval completion:(void(^)(BlockTimer* timer))compBlock
{
    if( self = [super init] )
    {
        _completionBlock = compBlock;
        _internalTimer = [NSTimer scheduledTimerWithTimeInterval:interval
                                                          target:self
                                                        selector:@selector(timerCallback)
                                                        userInfo:NULL
                                                         repeats:NO];
    }
    return self;
}

-(BlockTimer*) initWithTimeInterval:(NSTimeInterval)interval repeats:(BOOL)repeatsYesOrNo completion:(void(^)(BlockTimer* timer))compBlock
{
    if( self = [super init] )
    {
        _completionBlock = compBlock;
        _internalTimer = [NSTimer scheduledTimerWithTimeInterval:interval
                                                          target:self
                                                        selector:@selector(timerCallback)
                                                        userInfo:NULL
                                                         repeats:repeatsYesOrNo];
    }
    return self;
}

///////////////////////////////////////////////////////////////////////////////////////////////////////////////

-(void) timerCallback
{
    if( self.completionBlock )
    {
        self.completionBlock(self);
    }
}

///////////////////////////////////////////////////////////////////////////////////////////////////////////////

-(void) fire
{
    [self.internalTimer fire];
}

///////////////////////////////////////////////////////////////////////////////////////////////////////////////

-(void) invalidate
{
    [self.internalTimer invalidate];
}

///////////////////////////////////////////////////////////////////////////////////////////////////////////////

-(BOOL) valid
{
    return [self.internalTimer isValid];
}

///////////////////////////////////////////////////////////////////////////////////////////////////////////////

-(NSTimeInterval) timeInterval
{
    return self.internalTimer.timeInterval;
}


///////////////////////////////////////////////////////////////////////////////////////////////////////////////

-(NSTimeInterval) timeRemaining
{
    return self.internalTimer.fireDate.timeIntervalSinceNow;
}

///////////////////////////////////////////////////////////////////////////////////////////////////////////////

@end

