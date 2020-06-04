//
//  main.m
//  AlgorithmLearning
//
//  Created by chenzheng on 2020/5/30.
//  Copyright © 2020 CST. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CSTLinkListGenerator.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        CSTListNode *linkList = linkListWithRange(NSMakeRange(1, 10));
        printLinkList(linkList,NO);
//        reverseLinkList(linkList);
//        NSLog(@"反装之后");
//        printLinkList(linkList,YES);
        
        reverseLinkListBetween(linkList, 3, 5);//pass
//        reverseLinkListBetween(linkList, 1, 5);//pass
//        reverseLinkListBetween(linkList, 3, 11);//pass
//        reverseLinkListBetween(linkList, 3, 10);//pass
//        reverseLinkListBetween(linkList, 1, 10);//pass
//        reverseLinkListBetween(linkList, 1, 11);//pass
//        reverseLinkListBetween(linkList, 0, 11);//pass
//
        
        [[NSRunLoop currentRunLoop] runUntilDate:[NSDate distantFuture]];
    }
    return 0;
}
