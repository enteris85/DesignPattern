//
//  ItemCreator.m
//  DesignPattern_Factory Method pattern
//
//  Created by enteris on 2016. 4. 1..
//  Copyright © 2016년 12corp. All rights reserved.
//

#import "ItemCreator.h"
@interface ItemCreator()
- (void)requestitemsInfo;
- (void)createItemLog;
- (id<Item>)createItem;
@end
@implementation ItemCreator
//팩토리 메소드 - > 템플릿 매소드
- (id<Item>)create {
    id<Item> item;
    
    [self requestitemsInfo];
    
    item = [self createItem];
    
    [self createItemLog];
    
    return item;
}
//아이템을 생성하기 전에 데이터 베이스에서 아이템 정보 요청
- (void)requestitemsInfo {
    
}
//아이템을 생성 후 아이템 복제 등의 불법을 방지하기 위해 데이터베이스에 아이템 생성
- (void)createItemLog {
    
}
//아이템 생성하는 알고리즘
- (id<Item>)createItem {
    return nil;
}
@end
