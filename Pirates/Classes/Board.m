//
//  Board.m
//  Pirates
//
//  Created by Eduardo Chiaro on 02/04/2014.
//  Copyright (c) 2014 Eduardo Chiaro. All rights reserved.
//

#import "Board.h"

@implementation Board

-(void) generateBoard{
    
    int rows = self.rows;
    int columns = self.columns;
    
    NSLog(@"total r: %i, total c:%i", rows, columns);
    
    self.gameBoard = [[ NSMutableArray alloc] init];
    
    
    for (int row = 0; row < rows; row++) {
        
        NSMutableArray *boardArray = [[ NSMutableArray alloc] init];
        
    
        for (int column = 0; column < columns; column++) {
           // NSLog(@"r: %i, c:%i", row, column);
            [boardArray addObject:[NSString stringWithFormat:@"%i", column]];
            
        }
        
        [self.gameBoard addObject:boardArray];
    }
    
    
    NSLog(@"%@", self.gameBoard);
    
}



@end
