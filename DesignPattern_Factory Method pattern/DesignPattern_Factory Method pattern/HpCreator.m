//
//  HpCreator.m
//  DesignPattern_Factory Method pattern
//
//  Created by enteris on 2016. 4. 1..
//  Copyright © 2016년 12corp. All rights reserved.
//

#import "HpCreator.h"
#import "HpPotion.h"
@implementation HpCreator
- (void)requestitemsInfo {
    printf("데이터베이스 회복 물약 정보 가져옴");
}

- (void)createItemLog {
    printf("회복 물약을 새로 생성");
}

- (id<Item>)createItem {
    
    return [[HpPotion alloc] init];
}
@end
