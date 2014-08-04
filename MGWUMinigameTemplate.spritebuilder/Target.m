//
//  Target.m
//  GameOfLife
//
//  Created by Manish R on 6/28/14.
//  Copyright (c) 2014 Apportable. All rights reserved.
//

#import "Target.h"

@implementation Target

- (instancetype)initTarget {
    
    self = [super initWithImageNamed:@"GameOfLifeAssets/Buttons/button.png"];
    
    if (self) {
        self.isAlive = NO;
    }
    
    return self;
}
- (void)setIsAlive:(BOOL)newState {

    _isAlive = newState;
    
    
    self.visible = _isAlive;
}

@end
