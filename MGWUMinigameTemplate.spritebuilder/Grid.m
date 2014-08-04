#import "Grid.h"
#import "Target.h"


static const int GRID_ROWS = 8;
static const int GRID_COLUMNS = 10;

@implementation Grid {
    NSMutableArray *_gridArray;
    float _cellWidth;
    float _cellHeight;
}
- (void)onEnter
{
    [super onEnter];
    
    [self setupGrid];
    
    // accept touches on the grid
    self.userInteractionEnabled = YES;
}
- (void)setupGrid
{
    
    _cellWidth = self.contentSize.width / GRID_COLUMNS;
    _cellHeight = self.contentSize.height / GRID_ROWS;
    
    float x = 0;
    float y = 0;
    
  
    _gridArray = [NSMutableArray array];
    
   
    for (int i = 0; i < GRID_ROWS; i++) {
        
        _gridArray[i] = [NSMutableArray array];
        x = 0;
        
        for (int j = 0; j < GRID_COLUMNS; j++) {
            Target *target = [[Target alloc] initTarget];
            target.anchorPoint = ccp(0, 0);
            target.position = ccp(x, y);
            [self addChild:target];
            
            
            _gridArray[i][j] = target;
            
           
            target.isAlive = YES;
            
            x+=_cellWidth;
        }
        
        y += _cellHeight;
    }
}

@end
