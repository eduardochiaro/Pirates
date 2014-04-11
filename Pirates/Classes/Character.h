//
//  Character.h
//  Pirates
//
//  Created by Eduardo Chiaro on 01/04/2014.
//  Copyright (c) 2014 Eduardo Chiaro. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Weapon.h"
#import "Armor.h"

@interface Character : NSObject

@property int health;
@property (strong, nonatomic) Weapon *weapon;
@property (strong, nonatomic) Armor *armor;


-(int) returnHitPoint;
-(NSString *) returnWeapon;
-(NSString *) returnArmor;
-(int) returnDefencePoint;
@end
