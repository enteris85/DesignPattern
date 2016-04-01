//
//  Character.h
//  DesignPattern_Strategy
//
//  Created by enteris on 2016. 3. 24..
//  Copyright © 2016년 12corp. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Weapon.h"
@interface Character : NSObject
- (void)attack;
@property (nonatomic,strong) id<Weapon> weapon;
@end
