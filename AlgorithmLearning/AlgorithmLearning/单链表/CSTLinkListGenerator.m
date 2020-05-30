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

void printLinkList(CSTListNode *linkList)
{
    printf("linkList(%p)的长度:%ld \n",linkList, linkList->val);
    CSTListNode *workerNode = linkList->next;
    int counter = 1;
    while (workerNode) {
        printf("第%d个首地址：%p，下一个:%p，值：%ld\n",counter++, workerNode, workerNode->next, workerNode->val);
        workerNode = workerNode->next;
    }
}

void reverseLinkList(CSTListNode *linkList)
{
    CSTListNode *header = linkList;
    CSTListNode *tmpHeader = linkList->next; // 新的被反转的链表的头
    CSTListNode *workNode = linkList->next->next;
    tmpHeader->next = NULL;
    
    while (workNode) {
        CSTListNode *tmp = workNode;
        workNode = workNode->next;
        tmp->next = tmpHeader;
        tmpHeader = tmp;
    }
    header->next = tmpHeader;
}
