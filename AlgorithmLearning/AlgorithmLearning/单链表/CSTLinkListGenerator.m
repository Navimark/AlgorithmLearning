//
//  CSTLinkListGenerator.m
//  AlgorithmLearning
//
//  Created by chenzheng on 2020/5/30.
//  Copyright © 2020 CST. All rights reserved.
//

#import "CSTLinkListGenerator.h"

CSTListNode *linkListWithRange(NSRange range)
{
    CSTListNode *headNode = (CSTListNode *)malloc(sizeof(CSTListNode));
    headNode->val = 0;
    headNode->next = NULL;
    CSTListNode *workerNode = headNode;
    for (NSInteger i = range.location; i != range.location + range.length; ++ i) {
        CSTListNode *tmpNode = (CSTListNode *)malloc(sizeof(CSTListNode));
        tmpNode->val = i;
        tmpNode->next = NULL;
        
        workerNode->next = tmpNode;
        workerNode = tmpNode;
        headNode->val += 1;
    }
    printf("生成链表，header地址:%p,长度:%ld，范围:[%ld,%ld]\n",headNode,headNode->val,range.location,range.location + range.length - 1);
    return headNode;
}

void printLinkList(CSTListNode *linkList, BOOL pretty)
{
    if (!linkList) {
        printf("NULL <-> NULL ???\n");
        return;
    }
    printf("linkList(%p)的长度:%ld \n",linkList, linkList->val);
    CSTListNode *workerNode = linkList->next;
    int counter = 1;
    while (workerNode) {
        if (pretty) {
            printf("%ld -> ",workerNode->val);
        } else {
            printf("第%d个首地址：%p(NEXT:%p)，值：%ld\n\n",counter++, workerNode, workerNode->next, workerNode->val);
        }
        workerNode = workerNode->next;
    }
    if (pretty) {
        printf("NULL\n\n");
    }
}

void reverseLinkList(CSTListNode *linkList)
{
    CSTListNode *header = linkList;
    CSTListNode *tmpHeader = linkList->next; // 新的被反转的链表的头
    if (!tmpHeader) {
        return;
    }
    CSTListNode *workNode = linkList->next->next;
    if (!workNode) {
        return;
    }
    tmpHeader->next = NULL;
    
    while (workNode) {
        CSTListNode *tmp = workNode;
        workNode = workNode->next;
        tmp->next = tmpHeader;
        tmpHeader = tmp;
    }
    header->next = tmpHeader;
}

void reverseLinkListBetween(CSTListNode *linkList, int from, int to)
{
    if (from >= to) {
        return;
    }
    if (from <= 0) {
        return;
    }
    int counter = 1;
    CSTListNode *worker = linkList->next;
    CSTListNode *firstTail = NULL; // 第一个链表的尾巴
    CSTListNode *secondHeader = NULL;
    CSTListNode *secondTail = NULL;
    
    while (worker) {
        if (from <= counter && counter <= to) {
            if (counter == from) {
                secondHeader = worker;
                worker = worker->next;
                secondHeader->next = NULL;
                secondTail = secondHeader;
            } else {
                CSTListNode *tmp = worker;
                worker = worker->next;
                tmp->next = secondHeader;
                secondHeader = tmp;
                if (to == counter || !worker) {
                    // 将第一个链表和第二个链表链接起来
                    if (firstTail) {
                        firstTail->next = secondHeader;
                    } else {
                        linkList->next = secondHeader;
                    }
                    
                    secondTail->next = worker;
                }
            }
        } else {
            if (counter < from) {
                firstTail = worker;
            }
            
            worker = worker->next;
        }
        counter ++;
    }
    printLinkList(linkList, YES);
//    printLinkList(secondHeader, YES);
//    printLinkList(thirdHeader, YES);
    printf("搞定");
    
//    if (firstHeader && secondHeader && firstHeader != secondHeader) {
//        firstHeader->next = secondHeader;
//    }
}
