Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FE74105C99
	for <lists+linux-mediatek@lfdr.de>; Thu, 21 Nov 2019 23:23:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2YLiwnTWMAf3pRouEiq5sCD1oJ9pRe2PzFVHVq1+YKI=; b=g2HIwpV2I8R3Ot
	s0UMF/Aq7RXrxaDyE9z687zt4eXUl/wN6X252AUORoL61/Z3/yyxBXqHc/YAPWKowUE+6QsZPq8Yz
	3sxK3RtKmj9nQv0n+c29e6MnaP8a7ASPqYZIvmNvi/8jzufnaHJQlJRxebEL2w04e0n3/Mip7uvhT
	MperTzxYv82plYT0jZ2HPxOtizYX3nVxCY/w8jSsdNDfY0gbuNEoZ8fCjfItE/xSBqi8A3QTleTJc
	mWRW6sdsHM9BqypI4SPGdaEYgxDnM4mw8+76Hugo2MDFDhZN8niM7E9pCaXA4rR+2AZstygz5UH6a
	CvtuMYtQT7pjbZuoLpkw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXuqz-0003tU-N8; Thu, 21 Nov 2019 22:23:09 +0000
Received: from relay.sw.ru ([185.231.240.75])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXuqx-0003sz-A1; Thu, 21 Nov 2019 22:23:08 +0000
Received: from [192.168.15.154] by relay.sw.ru with esmtp (Exim 4.92.3)
 (envelope-from <aryabinin@virtuozzo.com>)
 id 1iXuqu-0007wC-R0; Fri, 22 Nov 2019 01:23:04 +0300
Subject: Re: [PATCH v4 2/2] kasan: add test for invalid size in memmove
To: Walter Wu <walter-zh.wu@mediatek.com>,
 Alexander Potapenko <glider@google.com>, Dmitry Vyukov <dvyukov@google.com>,
 Matthias Brugger <matthias.bgg@gmail.com>
References: <20191112065313.7060-1-walter-zh.wu@mediatek.com>
From: Andrey Ryabinin <aryabinin@virtuozzo.com>
Message-ID: <619b898f-f9c2-1185-5ea7-b9bf21924942@virtuozzo.com>
Date: Fri, 22 Nov 2019 01:21:17 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <20191112065313.7060-1-walter-zh.wu@mediatek.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191121_142307_346393_C9D891F7 
X-CRM114-Status: UNSURE (   8.69  )
X-CRM114-Notice: Please train this message.
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
 linux-mediatek@lists.infradead.org, Andrew Morton <akpm@linux-foundation.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org



On 11/12/19 9:53 AM, Walter Wu wrote:
> Test negative size in memmove in order to verify whether it correctly
> get KASAN report.
> 
> Casting negative numbers to size_t would indeed turn up as a large
> size_t, so it will have out-of-bounds bug and be detected by KASAN.
> 
> Signed-off-by: Walter Wu <walter-zh.wu@mediatek.com>
> Reviewed-by: Dmitry Vyukov <dvyukov@google.com>

Reviewed-by: Andrey Ryabinin <aryabinin@virtuozzo.com>

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
