//
//  Character.m
//  Pirates
//
//  Created by Eduardo Chiaro on 01/04/2014.
//  Copyright (c) 2014 Eduardo Chiaro. All rights reserved.
//

#import "Character.h"

@implementation Character



-(int) returnHitPoint{
    return self.weapon.hitPoint;
}
-(NSString *) returnWeapon{
    return self.weapon.name;
}
-(int) returnDefencePoint{
    return self.armor.defencePoint;
}
-(NSString *) returnArmor{
    return self.armor.name;
}

@end
