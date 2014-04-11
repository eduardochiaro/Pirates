//
//  Board.h
//  Pirates
//
//  Created by Eduardo Chiaro on 02/04/2014.
//  Copyright (c) 2014 Eduardo Chiaro. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Board : NSObject


@property int rows;
@property int columns;
@property (strong, nonatomic) NSMutableArray *gameBoard;

@

-(void) generateBoard;

@end
