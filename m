Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 695DC62670
	for <lists+linux-mediatek@lfdr.de>; Mon,  8 Jul 2019 18:34:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PxNFn4R8zx01a+yJAlxfABHudPuLmRChjwX57Oi9SaE=; b=fbAcAzcbxRtWmy
	2rZKsfYCYlmEbBUITcPtlzu29EQnWbKy7EQX7AxSQN3YXEONg+cwsKOKUi3/ExU7Y2gYVbHUmBjnx
	FDQcNUQxVCQadTJ/Uq2l9IZdaEr6+LhW8DbREqv/8uyiVg09eHxtGDlX2U5rF4vCq3Qs69tUeoIQI
	2/XRv361EkihTi04VH7RTPcEBCQ9Lr9bMdUNHUJl28d85CUmtUkOe3juwySznBtNbqqMsLdMVPu3V
	DMxB5JJrd2H4hIK5o3esUtiGP970XcWXbnhnifN9sZt+jvPOkKnW0PoiKypaDrqa8VdSmI98xHiuc
	dUBICsgjg00Rc6TybXcA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hkWaU-00087B-3p; Mon, 08 Jul 2019 16:33:58 +0000
Received: from relay.sw.ru ([185.231.240.75])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hkWaM-00086R-Bg; Mon, 08 Jul 2019 16:33:52 +0000
Received: from [172.16.25.12] by relay.sw.ru with esmtp (Exim 4.92)
 (envelope-from <aryabinin@virtuozzo.com>)
 id 1hkWa8-00028e-L6; Mon, 08 Jul 2019 19:33:36 +0300
Subject: Re: [PATCH v3] kasan: add memory corruption identification for
 software tag-based mode
To: Dmitry Vyukov <dvyukov@google.com>, Walter Wu <walter-zh.wu@mediatek.com>
References: <20190613081357.1360-1-walter-zh.wu@mediatek.com>
 <da7591c9-660d-d380-d59e-6d70b39eaa6b@virtuozzo.com>
 <1560447999.15814.15.camel@mtksdccf07> <1560479520.15814.34.camel@mtksdccf07>
 <1560744017.15814.49.camel@mtksdccf07>
 <CACT4Y+Y3uS59rXf92ByQuFK_G4v0H8NNnCY1tCbr4V+PaZF3ag@mail.gmail.com>
 <1560774735.15814.54.camel@mtksdccf07> <1561974995.18866.1.camel@mtksdccf07>
 <CACT4Y+aMXTBE0uVkeZz+MuPx3X1nESSBncgkScWvAkciAxP1RA@mail.gmail.com>
From: Andrey Ryabinin <aryabinin@virtuozzo.com>
Message-ID: <ebc99ee1-716b-0b18-66ab-4e93de02ce50@virtuozzo.com>
Date: Mon, 8 Jul 2019 19:33:41 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <CACT4Y+aMXTBE0uVkeZz+MuPx3X1nESSBncgkScWvAkciAxP1RA@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190708_093350_396544_1E2216FF 
X-CRM114-Status: GOOD (  21.25  )
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
Cc: wsd_upstream <wsd_upstream@mediatek.com>,
 "Jason A . Donenfeld" <Jason@zx2c4.com>, Vasily Gorbik <gor@linux.ibm.com>,
 Arnd Bergmann <arnd@arndb.de>, Linux-MM <linux-mm@kvack.org>,
 Andrey Konovalov <andreyknvl@google.com>, LKML <linux-kernel@vger.kernel.org>,
 kasan-dev <kasan-dev@googlegroups.com>, Pekka Enberg <penberg@kernel.org>,
 Martin Schwidefsky <schwidefsky@de.ibm.com>,
 Miles Chen <miles.chen@mediatek.com>, Alexander Potapenko <glider@google.com>,
 David Rientjes <rientjes@google.com>,
 Matthias Brugger <matthias.bgg@gmail.com>, linux-mediatek@lists.infradead.org,
 Christoph Lameter <cl@linux.com>, Joonsoo Kim <iamjoonsoo.kim@lge.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org



On 7/5/19 4:34 PM, Dmitry Vyukov wrote:
> On Mon, Jul 1, 2019 at 11:56 AM Walter Wu <walter-zh.wu@mediatek.com> wrote:
>>>>>>>>> This patch adds memory corruption identification at bug report for
>>>>>>>>> software tag-based mode, the report show whether it is "use-after-free"
>>>>>>>>> or "out-of-bound" error instead of "invalid-access" error.This will make
>>>>>>>>> it easier for programmers to see the memory corruption problem.
>>>>>>>>>
>>>>>>>>> Now we extend the quarantine to support both generic and tag-based kasan.
>>>>>>>>> For tag-based kasan, the quarantine stores only freed object information
>>>>>>>>> to check if an object is freed recently. When tag-based kasan reports an
>>>>>>>>> error, we can check if the tagged addr is in the quarantine and make a
>>>>>>>>> good guess if the object is more like "use-after-free" or "out-of-bound".
>>>>>>>>>
>>>>>>>>
>>>>>>>>
>>>>>>>> We already have all the information and don't need the quarantine to make such guess.
>>>>>>>> Basically if shadow of the first byte of object has the same tag as tag in pointer than it's out-of-bounds,
>>>>>>>> otherwise it's use-after-free.
>>>>>>>>
>>>>>>>> In pseudo-code it's something like this:
>>>>>>>>
>>>>>>>> u8 object_tag = *(u8 *)kasan_mem_to_shadow(nearest_object(cacche, page, access_addr));
>>>>>>>>
>>>>>>>> if (access_addr_tag == object_tag && object_tag != KASAN_TAG_INVALID)
>>>>>>>>   // out-of-bounds
>>>>>>>> else
>>>>>>>>   // use-after-free
>>>>>>>
>>>>>>> Thanks your explanation.
>>>>>>> I see, we can use it to decide corruption type.
>>>>>>> But some use-after-free issues, it may not have accurate free-backtrace.
>>>>>>> Unfortunately in that situation, free-backtrace is the most important.
>>>>>>> please see below example
>>>>>>>
>>>>>>> In generic KASAN, it gets accurate free-backrace(ptr1).
>>>>>>> In tag-based KASAN, it gets wrong free-backtrace(ptr2). It will make
>>>>>>> programmer misjudge, so they may not believe tag-based KASAN.
>>>>>>> So We provide this patch, we hope tag-based KASAN bug report is the same
>>>>>>> accurate with generic KASAN.
>>>>>>>
>>>>>>> ---
>>>>>>>     ptr1 = kmalloc(size, GFP_KERNEL);
>>>>>>>     ptr1_free(ptr1);
>>>>>>>
>>>>>>>     ptr2 = kmalloc(size, GFP_KERNEL);
>>>>>>>     ptr2_free(ptr2);
>>>>>>>
>>>>>>>     ptr1[size] = 'x';  //corruption here
>>>>>>>
>>>>>>>
>>>>>>> static noinline void ptr1_free(char* ptr)
>>>>>>> {
>>>>>>>     kfree(ptr);
>>>>>>> }
>>>>>>> static noinline void ptr2_free(char* ptr)
>>>>>>> {
>>>>>>>     kfree(ptr);
>>>>>>> }
>>>>>>> ---
>>>>>>>
>>>>>> We think of another question about deciding by that shadow of the first
>>>>>> byte.
>>>>>> In tag-based KASAN, it is immediately released after calling kfree(), so
>>>>>> the slub is easy to be used by another pointer, then it will change
>>>>>> shadow memory to the tag of new pointer, it will not be the
>>>>>> KASAN_TAG_INVALID, so there are many false negative cases, especially in
>>>>>> small size allocation.
>>>>>>
>>>>>> Our patch is to solve those problems. so please consider it, thanks.
>>>>>>
>>>>> Hi, Andrey and Dmitry,
>>>>>
>>>>> I am sorry to bother you.
>>>>> Would you tell me what you think about this patch?
>>>>> We want to use tag-based KASAN, so we hope its bug report is clear and
>>>>> correct as generic KASAN.
>>>>>
>>>>> Thanks your review.
>>>>> Walter
>>>>
>>>> Hi Walter,
>>>>
>>>> I will probably be busy till the next week. Sorry for delays.
>>>
>>> It's ok. Thanks your kindly help.
>>> I hope I can contribute to tag-based KASAN. It is a very important tool
>>> for us.
>>
>> Hi, Dmitry,
>>
>> Would you have free time to discuss this patch together?
>> Thanks.
> 
> Sorry for delays. I am overwhelm by some urgent work. I afraid to
> promise any dates because the next week I am on a conference, then
> again a backlog and an intern starting...
> 
> Andrey, do you still have concerns re this patch? This change allows
> to print the free stack.

I 'm not sure that quarantine is a best way to do that. Quarantine is made to delay freeing, but we don't that here.
If we want to remember more free stacks wouldn't be easier simply to remember more stacks in object itself?
Same for previously used tags for better use-after-free identification.

> We also have a quarantine for hwasan in user-space. Though it works a
> bit differently then the normal asan quarantine. We keep a per-thread
> fixed-size ring-buffer of recent allocations:
> https://github.com/llvm-mirror/compiler-rt/blob/master/lib/hwasan/hwasan_report.cpp#L274-L284
> and scan these ring buffers during reports.
> 

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
