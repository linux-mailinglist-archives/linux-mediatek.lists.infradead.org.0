Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DF1D105298
	for <lists+linux-mediatek@lfdr.de>; Thu, 21 Nov 2019 14:04:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cxVZ6EzhuHoeoWP38iduuLarkfP76aC8wlFPI130HRY=; b=lE7J00aB4AC7y+
	+K9PQw46/GH0gJDj83wIDFtPXf5QL6ytLwqb8Yo27Bf15h1bVEOuTqvrUCsBUZ7Srt5auvAX019f5
	5Y7AFkMW7dR9ATJ5nWt3MCMQz7jfx46ad9685JxJc0bCu8nwdqNgLvBGRXWiX9E4l3MpSJWgaH5Wi
	BhUI9NoPbYdApQo3YsNjqiX5MnflcVVXqoQWlK46KXX2B38NN+wI4i6qOkjpl3/YO3SV2BqUgOoAx
	gjvMJX9lcCcRVxtwctmid9VZZ7/a0OvQkUKMvqZSGf96aNg43JWwFLLk1xhM7Q33y1xKyRiSBQap0
	SgIOtOu5qeeUdBUYdBVA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXm7q-00069D-AF; Thu, 21 Nov 2019 13:03:58 +0000
Received: from relay.sw.ru ([185.231.240.75])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXm7n-00068b-Ov; Thu, 21 Nov 2019 13:03:57 +0000
Received: from dhcp-172-16-25-5.sw.ru ([172.16.25.5])
 by relay.sw.ru with esmtp (Exim 4.92.3)
 (envelope-from <aryabinin@virtuozzo.com>)
 id 1iXm7i-0002DQ-S4; Thu, 21 Nov 2019 16:03:50 +0300
Subject: Re: [PATCH v4 1/2] kasan: detect negative size in memory operation
 function
To: Walter Wu <walter-zh.wu@mediatek.com>
References: <20191112065302.7015-1-walter-zh.wu@mediatek.com>
 <040479c3-6f96-91c6-1b1a-9f3e947dac06@virtuozzo.com>
 <1574341376.8338.4.camel@mtksdccf07>
From: Andrey Ryabinin <aryabinin@virtuozzo.com>
Message-ID: <217bd537-e6b7-3acc-b6bb-ac9c5d94da89@virtuozzo.com>
Date: Thu, 21 Nov 2019 16:03:38 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <1574341376.8338.4.camel@mtksdccf07>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191121_050355_807642_59309202 
X-CRM114-Status: GOOD (  10.50  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-mediatek@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <linux-mediatek.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-mediatek>, 
 <mailto:linux-mediatek-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-mediatek/>
List-Post: <mailto:linux-mediatek@lists.infradead.org>
List-Help: <mailto:linux-mediatek-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-mediatek>, 
 <mailto:linux-mediatek-request@lists.infradead.org?subject=subscribe>
Cc: wsd_upstream <wsd_upstream@mediatek.com>, linux-kernel@vger.kernel.org,
 kasan-dev@googlegroups.com, linux-mm@kvack.org,
 Alexander Potapenko <glider@google.com>, linux-arm-kernel@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>, linux-mediatek@lists.infradead.org,
 Dmitry Vyukov <dvyukov@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org



On 11/21/19 4:02 PM, Walter Wu wrote:
> On Thu, 2019-11-21 at 15:26 +0300, Andrey Ryabinin wrote:
>>
>> On 11/12/19 9:53 AM, Walter Wu wrote:
>>
>>> diff --git a/mm/kasan/common.c b/mm/kasan/common.c
>>> index 6814d6d6a023..4bfce0af881f 100644
>>> --- a/mm/kasan/common.c
>>> +++ b/mm/kasan/common.c
>>> @@ -102,7 +102,8 @@ EXPORT_SYMBOL(__kasan_check_write);
>>>  #undef memset
>>>  void *memset(void *addr, int c, size_t len)
>>>  {
>>> -	check_memory_region((unsigned long)addr, len, true, _RET_IP_);
>>> +	if (!check_memory_region((unsigned long)addr, len, true, _RET_IP_))
>>> +		return NULL;
>>>  
>>>  	return __memset(addr, c, len);
>>>  }
>>> @@ -110,8 +111,9 @@ void *memset(void *addr, int c, size_t len)
>>>  #undef memmove
>>>  void *memmove(void *dest, const void *src, size_t len)
>>>  {
>>> -	check_memory_region((unsigned long)src, len, false, _RET_IP_);
>>> -	check_memory_region((unsigned long)dest, len, true, _RET_IP_);
>>> +	if (!check_memory_region((unsigned long)src, len, false, _RET_IP_) ||
>>> +	    !check_memory_region((unsigned long)dest, len, true, _RET_IP_))
>>> +		return NULL;
>>>  
>>>  	return __memmove(dest, src, len);
>>>  }
>>> @@ -119,8 +121,9 @@ void *memmove(void *dest, const void *src, size_t len)
>>>  #undef memcpy
>>>  void *memcpy(void *dest, const void *src, size_t len)
>>>  {
>>> -	check_memory_region((unsigned long)src, len, false, _RET_IP_);
>>> -	check_memory_region((unsigned long)dest, len, true, _RET_IP_);
>>> +	if (!check_memory_region((unsigned long)src, len, false, _RET_IP_) ||
>>> +	    !check_memory_region((unsigned long)dest, len, true, _RET_IP_))
>>> +		return NULL;
>>>  
>>
>> I realized that we are going a wrong direction here. Entirely skipping mem*() operation on any
>> poisoned shadow value might only make things worse. Some bugs just don't have any serious consequences,
>> but skipping the mem*() ops entirely might introduce such consequences, which wouldn't happen otherwise.
>>
>> So let's keep this code as this, no need to check the result of check_memory_region().
>>
>>
> Ok, we just need to determine whether size is negative number. If yes
> then KASAN produce report and continue to execute mem*(). right?
> 

Yes.

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
