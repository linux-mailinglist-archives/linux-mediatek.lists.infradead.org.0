Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FC7F1052BD
	for <lists+linux-mediatek@lfdr.de>; Thu, 21 Nov 2019 14:13:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0HUhSoqbf5ggFecaOoQiZwTTWp0FA7AY1AUZpu3DCB4=; b=mZkn2nYN1r2c4o
	IPi9PvCrUsNvVi5J5IYsetMFJKkx1E+cyQotXEVf+X7EWjLS7y7/3WssA1ga2rTHOLeUDe2CtV3CK
	ey9vBMq8XoESUuoZHjpVWyHq2GIAw4w8WBYGiOOFz7HSRfQfQxotOHCrCG3CvMQxdFRnO/Nh7/D3T
	dpan5l6g6WYcxZGnw+KQByitxTDg6MSh8OYdP24E4mCOmhjxB/YI/3o6kRfIUDAdwywCYUzLHXb30
	Xk4iO/fIsO3PVY/gIFMOpMM7Pgt8+REGW738izNw2XCA5W6/Deoh0ys9xIkYWWydsJFzKucc2oidu
	CjyjfZq/tCihu9nbj+Zg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXmGv-0001wu-Ap; Thu, 21 Nov 2019 13:13:21 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXmGe-0001mS-BP; Thu, 21 Nov 2019 13:13:05 +0000
X-UUID: 2c9a14dfb06c4b2bad7baba62e2a486d-20191121
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=NsE4689yAaWq1T5b/skLebYVU2kKGZUndAF8Pm3G/5k=; 
 b=FssLwQtJ0KNeb9sizE3tAftLAkZ0tDyAgdj54n+V1McYT72q5bgXkUjmYn3XPEriUxNMQ94eGTYkKjOXPJxDMENJcDDHjaQ9c8G+5FOh+72A2LyFIC7oFT9MVzhyTmUOp210JMrny2Or2wTFfFY/Ny2ZB88tvanv/d3zGvATxuQ=;
X-UUID: 2c9a14dfb06c4b2bad7baba62e2a486d-20191121
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <walter-zh.wu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 381453896; Thu, 21 Nov 2019 05:12:59 -0800
Received: from mtkmbs07n1.mediatek.inc (172.21.101.16) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 21 Nov 2019 05:03:03 -0800
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs07n1.mediatek.inc (172.21.101.16) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 21 Nov 2019 21:02:54 +0800
Received: from [172.21.84.99] (172.21.84.99) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Thu, 21 Nov 2019 21:02:51 +0800
Message-ID: <1574341376.8338.4.camel@mtksdccf07>
Subject: Re: [PATCH v4 1/2] kasan: detect negative size in memory operation
 function
From: Walter Wu <walter-zh.wu@mediatek.com>
To: Andrey Ryabinin <aryabinin@virtuozzo.com>
Date: Thu, 21 Nov 2019 21:02:56 +0800
In-Reply-To: <040479c3-6f96-91c6-1b1a-9f3e947dac06@virtuozzo.com>
References: <20191112065302.7015-1-walter-zh.wu@mediatek.com>
 <040479c3-6f96-91c6-1b1a-9f3e947dac06@virtuozzo.com>
X-Mailer: Evolution 3.2.3-0ubuntu6 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191121_051304_397351_32BC2D5D 
X-CRM114-Status: UNSURE (   9.75  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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

On Thu, 2019-11-21 at 15:26 +0300, Andrey Ryabinin wrote:
> 
> On 11/12/19 9:53 AM, Walter Wu wrote:
> 
> > diff --git a/mm/kasan/common.c b/mm/kasan/common.c
> > index 6814d6d6a023..4bfce0af881f 100644
> > --- a/mm/kasan/common.c
> > +++ b/mm/kasan/common.c
> > @@ -102,7 +102,8 @@ EXPORT_SYMBOL(__kasan_check_write);
> >  #undef memset
> >  void *memset(void *addr, int c, size_t len)
> >  {
> > -	check_memory_region((unsigned long)addr, len, true, _RET_IP_);
> > +	if (!check_memory_region((unsigned long)addr, len, true, _RET_IP_))
> > +		return NULL;
> >  
> >  	return __memset(addr, c, len);
> >  }
> > @@ -110,8 +111,9 @@ void *memset(void *addr, int c, size_t len)
> >  #undef memmove
> >  void *memmove(void *dest, const void *src, size_t len)
> >  {
> > -	check_memory_region((unsigned long)src, len, false, _RET_IP_);
> > -	check_memory_region((unsigned long)dest, len, true, _RET_IP_);
> > +	if (!check_memory_region((unsigned long)src, len, false, _RET_IP_) ||
> > +	    !check_memory_region((unsigned long)dest, len, true, _RET_IP_))
> > +		return NULL;
> >  
> >  	return __memmove(dest, src, len);
> >  }
> > @@ -119,8 +121,9 @@ void *memmove(void *dest, const void *src, size_t len)
> >  #undef memcpy
> >  void *memcpy(void *dest, const void *src, size_t len)
> >  {
> > -	check_memory_region((unsigned long)src, len, false, _RET_IP_);
> > -	check_memory_region((unsigned long)dest, len, true, _RET_IP_);
> > +	if (!check_memory_region((unsigned long)src, len, false, _RET_IP_) ||
> > +	    !check_memory_region((unsigned long)dest, len, true, _RET_IP_))
> > +		return NULL;
> >  
> 
> I realized that we are going a wrong direction here. Entirely skipping mem*() operation on any
> poisoned shadow value might only make things worse. Some bugs just don't have any serious consequences,
> but skipping the mem*() ops entirely might introduce such consequences, which wouldn't happen otherwise.
> 
> So let's keep this code as this, no need to check the result of check_memory_region().
> 
> 
Ok, we just need to determine whether size is negative number. If yes
then KASAN produce report and continue to execute mem*(). right?
_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
