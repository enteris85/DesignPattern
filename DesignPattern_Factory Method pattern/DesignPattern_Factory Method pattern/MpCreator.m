//
//  MpCreator.m
//  DesignPattern_Factory Method pattern
//
//  Created by enteris on 2016. 4. 1..
//  Copyright © 2016년 12corp. All rights reserved.
//

#import "MpCreator.h"
#import "MpPotion.h"
@implementation MpCreator
- (void)requestitemsInfo {
    printf("데이터베이스 마력 물약 정보 가져옴");
}

- (void)createItemLog {
    printf("마력 물약을 새로 생성");
}

- (id<Item>)createItem {
    
    return [[MpPotion alloc] init];
}
@end
