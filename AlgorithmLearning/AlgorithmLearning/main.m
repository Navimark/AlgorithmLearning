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
        {
            CSTListNode *nineNode = malloc(sizeof(CSTListNode));
            nineNode->val = 9;
            nineNode->next = linkList->next;
            linkList->next = nineNode;
        }
        {
            CSTListNode *nineNode = malloc(sizeof(CSTListNode));
            nineNode->val = 9;
            nineNode->next = linkList->next;
            linkList->next = nineNode;
        }
        {
            CSTListNode *nineNode = malloc(sizeof(CSTListNode));
            nineNode->val = 9;
            nineNode->next = NULL;
            CSTListNode *lastNode = linkList;
            while (lastNode->next) {
                lastNode = lastNode->next;
            }
            lastNode->next = nineNode;
        }
        {
            CSTListNode *nineNode = malloc(sizeof(CSTListNode));
            nineNode->val = 9;
            nineNode->next = NULL;
            CSTListNode *lastNode = linkList;
            while (lastNode->next) {
                lastNode = lastNode->next;
            }
            lastNode->next = nineNode;
        }
        
        printLinkList(linkList,YES,YES);
        removeElementsInLinkList(linkList, 9);
//        printLinkList(linkList,YES);
        /**
         1 中间一个 9 pass
         2 中间一个 + 末尾一个 pass
         3 中间一个 + 末尾连续两个 pass
         4 开头一个 9 + 中间一个 9 pass
         5 开头两个 9 pass
         6
         */
//        reverseLinkList(linkList);
//        NSLog(@"反装之后");"";
//        printLinkList(linkList,YES);
//        reverseLinkListBetween(linkList, 3, 5);//pass
//        reverseLinkListBetween(linkList, 1, 5);//pass
//        reverseLinkListBetween(linkList, 3, 11);//pass
//        reverseLinkListBetween(linkList, 3, 10);//pass
//        reverseLinkListBetween(linkList, 1, 10);//pass
//        reverseLinkListBetween(linkList, 1, 11);//pass
//        reverseLinkListBetween(linkList, 0, 11);//pass
//
        
//        [[NSRunLoop currentRunLoop] runUntilDate:[NSDate distantFuture]];
    }
    return 0;
}
