//
//  DefaultGameConnectHelper.m
//  DesignPattern_Template Method pattern
//
//  Created by enteris on 2016. 4. 1..
//  Copyright © 2016년 12corp. All rights reserved.
//

#import "DefaultGameConnectHelper.h"

@implementation DefaultGameConnectHelper

- (NSString*)doSecurity:(NSString*)str{
    printf("디코드");
    return str;
}
- (BOOL)authentication:(NSString*)idName pw:(NSString*)password{
    printf("아이디/암호 확인 과정");
    return YES;
}
- (NSInteger)authorization:(NSString*)userName{
    printf("권한 확인");
    return 0;
}
- (NSString*)connection:(NSString*)str{
    printf("마지막 접속단계");
    return str;
}
@end
