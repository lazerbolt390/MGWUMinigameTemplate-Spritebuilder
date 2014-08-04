#import "CCSprite.h"

@interface Target : CCSprite


@property (nonatomic, assign) BOOL isAlive;


@property (nonatomic, assign) NSInteger livingNeighbors;

- (id)initTarget;




@end