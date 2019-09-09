Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D3E78AD985
	for <lists+linux-mediatek@lfdr.de>; Mon,  9 Sep 2019 15:00:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=sqlkfS10XdRmSQPADLwPidvcRMFnFrFfqwAuIKtXdkA=; b=M0H2xXtgRYBAc1jifRG0nQW30
	iFUSUNue3PjC5CmUbiXMctZrbiC0eqbb3k4d/Qvkw4/Uvm5bS5pnDl8zJIc9bniJgCO+ceK1ZvtiG
	CtBw6ytSUBLY+UMvRTGAr1cbBwAOrWeZCmZTmI8nbAlWA2YZ1D0sGO0uWG1uE1x2ZdYHHSZZX8jtA
	Hc4FfdCGtUEW4WTNwL95qaA3c9lxxycIyjCSWMTyn7Ylb+nffYorTjoVxnd9be1DcCbRi9fmtiuRT
	qljr17ndYEG4ltQIUhLbbGC9fCXEZCw7UMg+SA0pnDYmHuMjEAglL7mFvYkBVoM6DsI+UzPcrsV0C
	pLtIP4kpw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7JGz-0006cL-2o; Mon, 09 Sep 2019 13:00:01 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7JGH-0006Qn-UR; Mon, 09 Sep 2019 12:59:20 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id E08F0AFBA;
 Mon,  9 Sep 2019 12:59:13 +0000 (UTC)
Subject: Re: [PATCH v2 1/2] mm/page_ext: support to record the last stack of
 page
To: Walter Wu <walter-zh.wu@mediatek.com>,
 Andrey Ryabinin <aryabinin@virtuozzo.com>,
 Alexander Potapenko <glider@google.com>, Dmitry Vyukov <dvyukov@google.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Andrew Morton <akpm@linux-foundation.org>,
 Martin Schwidefsky <schwidefsky@de.ibm.com>, Will Deacon <will@kernel.org>,
 Andrey Konovalov <andreyknvl@google.com>, Arnd Bergmann <arnd@arndb.de>,
 Thomas Gleixner <tglx@linutronix.de>, Michal Hocko <mhocko@kernel.org>,
 Qian Cai <cai@lca.pw>
References: <20190909085339.25350-1-walter-zh.wu@mediatek.com>
From: Vlastimil Babka <vbabka@suse.cz>
Message-ID: <0fd84c7b-a23b-0b09-519f-a006fade1b4f@suse.cz>
Date: Mon, 9 Sep 2019 14:59:12 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190909085339.25350-1-walter-zh.wu@mediatek.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190909_055918_359495_F4B69461 
X-CRM114-Status: GOOD (  17.58  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: wsd_upstream@mediatek.com, linux-kernel@vger.kernel.org,
 kasan-dev@googlegroups.com, linux-mm@kvack.org,
 linux-mediatek@lists.infradead.org, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On 9/9/19 10:53 AM, Walter Wu wrote:
> KASAN will record last stack of page in order to help programmer
> to see memory corruption caused by page.
> 
> What is difference between page_owner and our patch?
> page_owner records alloc stack of page, but our patch is to record
> last stack(it may be alloc or free stack of page).
> 
> Signed-off-by: Walter Wu <walter-zh.wu@mediatek.com>

There's no point in separating this from patch 2 (and as David pointed 
out, doesn't compile).

> ---
>   mm/page_ext.c | 3 +++
>   1 file changed, 3 insertions(+)
> 
> diff --git a/mm/page_ext.c b/mm/page_ext.c
> index 5f5769c7db3b..7ca33dcd9ffa 100644
> --- a/mm/page_ext.c
> +++ b/mm/page_ext.c
> @@ -65,6 +65,9 @@ static struct page_ext_operations *page_ext_ops[] = {
>   #if defined(CONFIG_IDLE_PAGE_TRACKING) && !defined(CONFIG_64BIT)
>   	&page_idle_ops,
>   #endif
> +#ifdef CONFIG_KASAN
> +	&page_stack_ops,
> +#endif
>   };
>   
>   static unsigned long total_usage;
> 


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
