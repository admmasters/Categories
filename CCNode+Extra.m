//
//  CCNode+Extra.m
//  Blade Dash
//
//  Created by Matt Revell on 28/03/2012.
//  Copyright (c) 2012 ADM. All rights reserved.
//

#import "CCNode+Extra.h"

@implementation CCNode (Extra)

-(void)scaleUpDuration:(float)time toScaleX:(float)scaleX toScaleY:(float)scaleY {
    
    id scaleUp = [CCScaleTo actionWithDuration:time scaleX:scaleX scaleY:scaleY];
    [self runAction:scaleUp];
    
}

-(void) fadeOut:(float)time {
    
    //if([self isKindOfClass:[CCSprite class]])
    //{
    
    //CCSprite *selfSprite = (CCSprite*)self;
    //if(selfSprite.opacity>0)
    //{
    [self runAction:[CCFadeOut actionWithDuration:time]];
    //}
    //}
}

-(void) fadeOutFromCurrent:(float)time {
    
    //if([self isKindOfClass:[CCSprite class]])
    //{
    
    //CCSprite *selfSprite = (CCSprite*)self;
    //if(selfSprite.opacity>0)
    //{
    [self runAction:[CCFadeOut actionWithDuration:time]];
    //}
    //}
}

-(void) fadeIn:(float)time {
    
    if([self isKindOfClass:[CCSprite class]])
    {
        [(CCSprite*)self setOpacity:0];
    }
    
    self.visible=YES;
    
    [self runAction:[CCFadeIn actionWithDuration:time]];
}

+(id) initWithScanlines:(int)deviceType {

    CCScene *scene = [CCScene node];
    CGSize winSize = [[CCDirector sharedDirector] winSize];
    
    if (deviceType==2) {
    CCSprite *scanlines = [[CCSprite alloc] initWithFile:@"SCANLINES480X320.png"];
    scanlines.position = ccp(winSize.width/2,winSize.height/2);    
    [scene addChild:scanlines z:1];
    } else {
        CCSprite *scanlines = [[CCSprite alloc] initWithFile:@"SCANLINES512X384.png"];
        scanlines.position = ccp(winSize.width/2,winSize.height/2);
        scanlines.scale = 2;
        [scene addChild:scanlines z:1];
    }
    
    return scene;

}

@end
