Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 708D687C61
	for <lists+linux-mediatek@lfdr.de>; Fri,  9 Aug 2019 16:12:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kzjxtq2PEq+9SNtt6pveP9hhogG/vYHgWMIAZ7WqFhc=; b=aZmKUlWs1yi0mi
	7d6AVoDuMxJWoC0dqTmFyU6yPrZWoZVz5BDWlcd3/0V+ebYlBJVp3LNrCgSWx1dFs1NUZMB/nRNjU
	XPDNB/U0M9mmRU8rL4/ztc4X4hh+dHxbx1lgOOP34IT+FKsXakjpDWvtclJOnMXXV5UXZYqd+E/hv
	wBpSrqhNoRsVJsKn4ntfvwDsQrRdky6XBV4uH9lfde3AZ6381K/rif7ByDr8AKpgJ3WZ0rOU+zc6m
	ctw1uAmsrew4VckX9piVDSq3vsyDDX5SJpkbbT8hkXjGjhxvDNRG4NhTSyCbQUmJ8gE2XBZrwQXoZ
	rFV7F564dTitvgFXnlDw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hw5cp-0001Sj-Uz; Fri, 09 Aug 2019 14:12:11 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hw5cm-0001Rk-P8
 for linux-mediatek@lists.infradead.org; Fri, 09 Aug 2019 14:12:10 +0000
X-UUID: 01a553edc29f4921b01bc4bf163c095a-20190809
X-UUID: 01a553edc29f4921b01bc4bf163c095a-20190809
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw02.mediatek.com
 (envelope-from <miles.chen@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 438238219; Fri, 09 Aug 2019 06:12:01 -0800
Received: from mtkmbs07n1.mediatek.inc (172.21.101.16) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 9 Aug 2019 07:12:00 -0700
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs07n1.mediatek.inc (172.21.101.16) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 9 Aug 2019 22:11:58 +0800
Received: from [172.21.77.33] (172.21.77.33) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Fri, 9 Aug 2019 22:11:58 +0800
Message-ID: <1565359918.12824.20.camel@mtkswgap22>
Subject: Re: [RFC PATCH v2] mm: slub: print kernel addresses in slub debug
 messages
From: Miles Chen <miles.chen@mediatek.com>
To: Matthew Wilcox <willy@infradead.org>
Date: Fri, 9 Aug 2019 22:11:58 +0800
In-Reply-To: <20190809024644.GL5482@bombadil.infradead.org>
References: <20190809010837.24166-1-miles.chen@mediatek.com>
 <20190809024644.GL5482@bombadil.infradead.org>
X-Mailer: Evolution 3.2.3-0ubuntu6 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190809_071208_826004_5D3FED6C 
X-CRM114-Status: GOOD (  11.74  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Andrew Morton <akpm@linux-foundation.org>, wsd_upstream@mediatek.com,
 Kees Cook <keescook@chromium.org>, linux-kernel@vger.kernel.org,
 Pekka Enberg <penberg@kernel.org>, linux-mm@kvack.org,
 linux-mediatek@lists.infradead.org, David Rientjes <rientjes@google.com>,
 Christoph Lameter <cl@linux.com>, Joonsoo Kim <iamjoonsoo.kim@lge.com>,
 "Tobin C . Harding" <me@tobin.cc>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Thu, 2019-08-08 at 19:46 -0700, Matthew Wilcox wrote:
> On Fri, Aug 09, 2019 at 09:08:37AM +0800, miles.chen@mediatek.com wrote:
> > Possible approaches are:
> > 1. stop printing kernel addresses
> > 2. print with %pK,
> > 3. print with %px.
> 
> No.  The point of obscuring kernel addresses is that if the attacker manages to find a way to get the kernel to spit out some debug messages that we shouldn't
> leak all this extra information.

got it.
> 
> > 4. do nothing
> 
> 5. Find something more useful to print.

agree
> 
> > INFO: Slab 0x(____ptrval____) objects=25 used=10 fp=0x(____ptrval____)
> 
> ... you don't have any randomness on your platform?

We have randomized base on our platforms.

> But if you have randomness, at least some of these "pointers" are valuable
> because you can compare them against "pointers" printed by other parts
> of the kernel.

Understood. Keep current %p, do not leak kernel addresses.

I'll collect more cases and see if we really need some extra
information. (maybe the @offset in current message is enough)


thanks for your comments!




_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
