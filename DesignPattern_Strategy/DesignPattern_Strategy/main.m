//
//  main.m
//  DesignPattern_Strategy
//
//  Created by enteris on 2016. 3. 24..
//  Copyright © 2016년 12corp. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Character.h"
#import "Knife.h"
#import "Swrod.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //전략패턴
        //캐릭터는 무기를 가지고 있고 무기를 여러가지로 변경할 수 있다.
        Character *unit = [[Character alloc] init];
        unit.weapon = [[Knife alloc] init];
        [unit attack];
        unit.weapon = [[Swrod alloc] init];
        [unit attack];
    }
    return 0;
}
