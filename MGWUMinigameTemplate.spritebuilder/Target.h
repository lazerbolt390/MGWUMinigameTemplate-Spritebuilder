#import "CCSprite.h"

@interface Target : CCSprite


@property (nonatomic, assign) BOOL isAlive;


@property (nonatomic, assign) NSInteger livingNeighbors;

items/item_target_2.png.scale = 5;

- (id)initTarget;




@end