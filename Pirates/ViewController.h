//
//  ViewController.h
//  Pirates
//
//  Created by Eduardo Chiaro on 28/03/2014.
//  Copyright (c) 2014 Eduardo Chiaro. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Hero.h"
#import "Board.h"

@interface ViewController : UIViewController

//hero stats
@property (strong, nonatomic) IBOutlet UIProgressView *heroHealthBar;
@property (strong, nonatomic) IBOutlet UILabel *heroHealthValue;

@property (strong, nonatomic) IBOutlet UILabel *heroSword;
@property (strong, nonatomic) IBOutlet UILabel *heroDamageValue;

@property (strong, nonatomic) IBOutlet UILabel *heroArmor;


/*hero controlls*/
@property (strong, nonatomic) IBOutlet UIButton *fightButton;
@property (strong, nonatomic) IBOutlet UIButton *fleeButton;
@property (strong, nonatomic) IBOutlet UIButton *openButton;
@property (strong, nonatomic) IBOutlet UIButton *resetButton;
@property (strong, nonatomic) IBOutlet UIButton *northButton;
@property (strong, nonatomic) IBOutlet UIButton *eastButton;
@property (strong, nonatomic) IBOutlet UIButton *westButton;
@property (strong, nonatomic) IBOutlet UIButton *southButton;

/*hero controlls actions*/
- (IBAction)goNorthButton:(UIButton *)sender;


/*settings*/

@property (strong, nonatomic) Hero *hero;
@property (strong, nonatomic) NSMutableArray *armors;
@property (strong, nonatomic) NSMutableArray *weapons;


-(void) settingArmors;
-(Weapon *) setWeapon: (int)hit  setName:(NSString *) name;

-(void) settingWeapons;
-(Armor *) setArmor: (int)defence  setName:(NSString *) name;

-(void) settingHero;

/*updates*/
 -(void) updateHeroView;

@end
