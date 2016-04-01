//
//  main.m
//  DesignPattern_Factory Method pattern
//
//  Created by enteris on 2016. 4. 1..
//  Copyright © 2016년 12corp. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ItemCreator.h"
#import "HpCreator.h"
#import "MpCreator.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        /**
         *  팩토리 메소드 패턴
         *  구조와 구현의 분리를 이해하고 구조와 구현의 분리의 장점을 안다.
         
         *  게임 아이템과 아이템 생성 구현
         *  아이템을 생성하기 전에 데이터 베이스에서 아이템 정보 요청
         *  아이템을 생성 후 아이템 복제 등의 불법을 방지하기 위해 데이터 베이스에 아이템 생성 정보 기록
         *  아이템 생성주체는 ItemCreator
         *  아이템은 item이라는 인터페이스로 구성
         *  아이템은 use함수가 기본 함수
         *  아이템 종류는 체력 회복 물약, 마력 회복 물약
         
         
         *  참조 사이트: 참조사이트 : https://www.inflearn.com/course/%EC%9E%90%EB%B0%94-%EB%94%94%EC%9E%90%EC%9D%B8-%ED%8C%A8%ED%84%B4/
         */
        ItemCreator *creator = [[HpCreator alloc]init];
        id<Item> item = [creator create];
        [item use];
        
        creator = [[MpCreator alloc] init];
         item = [creator create];
        [item use];
    }
    return 0;
}
