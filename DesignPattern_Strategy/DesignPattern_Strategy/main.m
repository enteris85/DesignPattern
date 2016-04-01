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
        /**
         전략패터
         여러 알고리즘을 하나의 추상적인 접근점을 만들어 접근 점에서 서로 교환하도록 하는 패턴
         Ex)캐릭터는 무기를 가지고 있고 무기를 여러가지로 변경할 수 있다.
         
         참조사이트 : https://www.inflearn.com/course/%EC%9E%90%EB%B0%94-%EB%94%94%EC%9E%90%EC%9D%B8-%ED%8C%A8%ED%84%B4/
         */
        
        Character *unit = [[Character alloc] init];
        unit.weapon = [[Knife alloc] init];
        [unit attack];
        unit.weapon = [[Swrod alloc] init];
        [unit attack];
    }
    return 0;
}
