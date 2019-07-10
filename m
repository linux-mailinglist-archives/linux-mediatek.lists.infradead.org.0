Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6618264C09
	for <lists+linux-mediatek@lfdr.de>; Wed, 10 Jul 2019 20:25:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kaJGsRp15zWkDVeaJmQotA+VQx0oYoe7w0ekTsTWRek=; b=cfSEjLnQv/4KWH
	M2BJY12m6xtGZ2d9Zs9YKjEHJqBI7rMeimTkGdXdk6s67lwqkhcw6Fuqa4yEXRq2KEVpmTXLv6/Wn
	Y93K5d3pmo8uaEMWkEBsJqzWEmGw9ldAqTQuC9+NonGhqMOvGbshVx5KGg4/bYPjgEvTO5qLO70ZF
	IY0HM4JFZuFM3G1XuK89vjoWnJXYlCn3Nn7H2+FkKn9kYjKkOO+h3meQSIfD9dni7yYsvF0Ixar4z
	zmpO6zvbse4wKAtDEne03vI0E9ghSc2cW9Xrl1C6kXeq5lMlVlVVsKSds7XdgJTzhqwU3Sx+mu/Kw
	yrPTQkclYSqeyFXvv33g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hlHGt-0002Kf-VM; Wed, 10 Jul 2019 18:24:52 +0000
Received: from relay.sw.ru ([185.231.240.75])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlHGl-0002J8-2Z; Wed, 10 Jul 2019 18:24:45 +0000
Received: from [172.16.25.12] by relay.sw.ru with esmtp (Exim 4.92)
 (envelope-from <aryabinin@virtuozzo.com>)
 id 1hlHGV-0006Kk-L9; Wed, 10 Jul 2019 21:24:27 +0300
Subject: Re: [PATCH v3] kasan: add memory corruption identification for
 software tag-based mode
To: Walter Wu <walter-zh.wu@mediatek.com>, Dmitry Vyukov <dvyukov@google.com>
References: <20190613081357.1360-1-walter-zh.wu@mediatek.com>
 <da7591c9-660d-d380-d59e-6d70b39eaa6b@virtuozzo.com>
 <1560447999.15814.15.camel@mtksdccf07> <1560479520.15814.34.camel@mtksdccf07>
 <1560744017.15814.49.camel@mtksdccf07>
 <CACT4Y+Y3uS59rXf92ByQuFK_G4v0H8NNnCY1tCbr4V+PaZF3ag@mail.gmail.com>
 <1560774735.15814.54.camel@mtksdccf07> <1561974995.18866.1.camel@mtksdccf07>
 <CACT4Y+aMXTBE0uVkeZz+MuPx3X1nESSBncgkScWvAkciAxP1RA@mail.gmail.com>
 <ebc99ee1-716b-0b18-66ab-4e93de02ce50@virtuozzo.com>
 <1562640832.9077.32.camel@mtksdccf07>
From: Andrey Ryabinin <aryabinin@virtuozzo.com>
Message-ID: <d9fd1d5b-9516-b9b9-0670-a1885e79f278@virtuozzo.com>
Date: Wed, 10 Jul 2019 21:24:22 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <1562640832.9077.32.camel@mtksdccf07>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190710_112443_128648_2D8DD351 
X-CRM114-Status: GOOD (  12.67  )
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



On 7/9/19 5:53 AM, Walter Wu wrote:
> On Mon, 2019-07-08 at 19:33 +0300, Andrey Ryabinin wrote:
>>
>> On 7/5/19 4:34 PM, Dmitry Vyukov wrote:
>>> On Mon, Jul 1, 2019 at 11:56 AM Walter Wu <walter-zh.wu@mediatek.com> wrote:

>>>
>>> Sorry for delays. I am overwhelm by some urgent work. I afraid to
>>> promise any dates because the next week I am on a conference, then
>>> again a backlog and an intern starting...
>>>
>>> Andrey, do you still have concerns re this patch? This change allows
>>> to print the free stack.
>>
>> I 'm not sure that quarantine is a best way to do that. Quarantine is made to delay freeing, but we don't that here.
>> If we want to remember more free stacks wouldn't be easier simply to remember more stacks in object itself?
>> Same for previously used tags for better use-after-free identification.
>>
> 
> Hi Andrey,
> 
> We ever tried to use object itself to determine use-after-free
> identification, but tag-based KASAN immediately released the pointer
> after call kfree(), the original object will be used by another
> pointer, if we use object itself to determine use-after-free issue, then
> it has many false negative cases. so we create a lite quarantine(ring
> buffers) to record recent free stacks in order to avoid those false
> negative situations.

I'm telling that *more* than one free stack and also tags per object can be stored.
If object reused we would still have information about n-last usages of the object.
It seems like much easier and more efficient solution than patch you proposing.

As for other concern about this particular patch
 - It wasn't tested. There is deadlock (sleep in atomic) on the report path which would have been noticed it tested.
   Also GFP_NOWAIT allocation which fails very noisy and very often, especially in memory constraint enviromnent where tag-based KASAN supposed to be used.

 - Inefficient usage of memory:
	48 bytes (sizeof (qlist_object) + sizeof(kasan_alloc_meta)) per kfree() call seems like a lot. It could be less.

	The same 'struct kasan_track' stored twice in two different places (in object and in quarantine).
	Basically, at least some part of the quarantine always duplicates information that we already know about
	recently freed object. 

	Since now we call kmalloc() from kfree() path, every unique kfree() stacktrace now generates additional unique stacktrace that
	takes space in stackdepot.


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
