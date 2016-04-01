//
//  main.m
//  DesignPattern_Template Method pattern
//
//  Created by enteris on 2016. 4. 1..
//  Copyright © 2016년 12corp. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DefaultGameConnectHelper.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        /**
         *  알고리즘의 구조를 메소드에 정의하고 하위 클래스에서 알고리즘 구조의 변경없이 알고리즘을 재정의 하는 패턴
         *   * 언제사용하나?
         *      - 구현하려는 알고리즘이 일정한 프로세스가 있다.
         *      - 구현하려는 알고리즘이 변경 가능성이 있다.
         *   * 구현방법
         *      - 알고리즘을 여러단계로 나눈다.
         *      - 나눠진 알고리즘의 단계를 메소드로 선언한다.
         *      - 알고리즘을 수행할 템플릿 메소드를 만든다.
         *      - 하위 클래스에서 나눠진 메소드들을 구현한다.
         *   * 참조사이트 : https://www.inflearn.com/course/%EC%9E%90%EB%B0%94-%EB%94%94%EC%9E%90%EC%9D%B8-%ED%8C%A8%ED%84%B4/
         */
        AbstGameConnectHelper *helper = [[DefaultGameConnectHelper alloc] init];
        [helper requestConnection:@"아이디 암호등 접속 정보"];
    }
    return 0;
}
