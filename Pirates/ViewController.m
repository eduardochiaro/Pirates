//
//  ViewController.m
//  Pirates
//
//  Created by Eduardo Chiaro on 28/03/2014.
//  Copyright (c) 2014 Eduardo Chiaro. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    [self settingArmors];
    [self settingWeapons];
    [self settingHero];
    
    Board *newBoard = [[Board alloc] init];
    
    newBoard.rows = 4;
    newBoard.columns = 5;
    
    [newBoard generateBoard];
    
    
    [self updateHeroView];
    
    
    self.fleeButton.hidden = true;
    
}

-(void) settingArmors{
    
    
    self.armors = [[ NSMutableArray alloc] init];

    
    [self.armors addObject:[self setArmor:25 setName:@"leather armor"]];
    [self.armors addObject:[self setArmor:35 setName:@"copper armor"]];
    [self.armors addObject:[self setArmor:60 setName:@"iron armor"]];
    [self.armors addObject:[self setArmor:100 setName:@"pirate armor"]];
    
    
}
-(void) settingWeapons{
    
    self.weapons = [[ NSMutableArray alloc] init];
    
    [self.weapons addObject:[self setWeapon:60 setName:@"small dagger"]];
    [self.weapons addObject:[self setWeapon:100 setName:@"copper sword"]];
    [self.weapons addObject:[self setWeapon:140 setName:@"iron sword"]];
    [self.weapons addObject:[self setWeapon:180 setName:@"gold sword"]];
    
}
-(Weapon *) setWeapon: (int)hit  setName:(NSString *) name{
    
    Weapon *newWeapon = [[Weapon alloc] init];
    
    newWeapon.name = name;
    newWeapon.hitPoint = hit;
    
    return newWeapon;
}
-(Armor *) setArmor: (int)defence  setName:(NSString *) name{
    
    Armor *newArmor = [[Armor alloc] init];
    
    newArmor.name = name;
    newArmor.defencePoint = defence;
    
    return newArmor;
}

-(void) settingHero{
    
    self.hero = [[Hero alloc] init];
    
    
    self.hero.health = 100;
    self.hero.maxHealth = 100;
    
    self.hero.weapon = [self.weapons objectAtIndex:0];
    self.hero.armor = [self.armors objectAtIndex:0];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void) updateHeroView{
    
    float heroHealth = self.hero.health;
    float heroHealthMax = self.hero.maxHealth;
    
    
    self.heroHealthBar.progress = (heroHealth / heroHealthMax);
    self.heroHealthValue.text = [NSString stringWithFormat:@"%i", (int)heroHealth];
    
    
    self.heroSword.text = [self.hero returnWeapon];
    
    int heroDamage = [self.hero returnHitPoint];
    self.heroDamageValue.text = [NSString stringWithFormat:@"(%i)", heroDamage];
    
    self.heroArmor.text = [self.hero returnArmor];

}

- (IBAction)goNorthButton:(UIButton *)sender {
    NSLog(@"Go north");
}
@end
