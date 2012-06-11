//
//  CCNode+Extra.h
//  Blade Dash
//
//  Created by Matt Revell on 28/03/2012.
//  Copyright (c) 2012 ADM. All rights reserved.
//

#import "CCNode.h"
#import "cocos2d.h"

@interface CCNode (Extra)

-(void)scaleUpDuration:(float)time toScaleX:(float)scaleX toScaleY:(float)scaleY;
-(void) fadeOut:(float)time;
-(void) fadeIn:(float)time;
+(id) initWithScanlines:(int)deviceType ;

@end
