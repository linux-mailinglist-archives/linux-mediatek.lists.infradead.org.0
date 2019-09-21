Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F27FCB9F17
	for <lists+linux-mediatek@lfdr.de>; Sat, 21 Sep 2019 19:07:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kBZTjaaMqY90F3JwPTvWqet/SjGMPIBHPWyr8iVIUcc=; b=XQ0u9sBvbo9xu1
	jiLCmhZrimYEJ82XF7boUg/doLez83M2a6aEBo3Oz8KHYTjlBZXnnL4GuyQ24aqQ6kuwImLJe3+ko
	RwPm4KSN3S0Je0xBXOCsr7Zaunas/kFDF6b0glHkET5y/wDk5Wg36JREAM5YkMIDapObVuwsRzTEH
	gpEdEiu2RAI6VgmoPyx/ENIFGEhXD5LzCYdK5rtx3BfwJXA/4KrMoYxkTiRhYRYQX0VuY6BfGwADO
	2S6PMIlr22++fsnGUfNpYCn3g2hvmtH6iYk0K5JxsVEWXfCKL4CcfuGawVKsm5oEMRFZIJoBpvEcK
	vG8r9ToWTUae/YyFE2sA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iBiqh-0005Le-P7; Sat, 21 Sep 2019 17:07:07 +0000
Received: from gentwo.org ([3.19.106.255])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iBiqd-0005Ky-ER
 for linux-mediatek@lists.infradead.org; Sat, 21 Sep 2019 17:07:04 +0000
Received: by gentwo.org (Postfix, from userid 1002)
 id 546873EEB4; Sat, 21 Sep 2019 17:00:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by gentwo.org (Postfix) with ESMTP id 5325B3E86F;
 Sat, 21 Sep 2019 17:00:51 +0000 (UTC)
Date: Sat, 21 Sep 2019 17:00:51 +0000 (UTC)
From: cl@linux.com
X-X-Sender: cl@ip-172-31-20-140.us-east-2.compute.internal
To: David Rientjes <rientjes@google.com>
Subject: Re: [PATCH] mm: slub: print_hex_dump() with DUMP_PREFIX_OFFSET
In-Reply-To: <alpine.DEB.2.21.1909210207240.259613@chino.kir.corp.google.com>
Message-ID: <alpine.DEB.2.21.1909211659470.27404@ip-172-31-20-140.us-east-2.compute.internal>
References: <20190920104849.32504-1-miles.chen@mediatek.com>
 <alpine.DEB.2.21.1909210207240.259613@chino.kir.corp.google.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190921_100703_555193_5850B55E 
X-CRM114-Status: UNSURE (   8.06  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
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
 Pekka Enberg <penberg@kernel.org>, linux-mm@kvack.org,
 Miles Chen <miles.chen@mediatek.com>, linux-mediatek@lists.infradead.org,
 Joonsoo Kim <iamjoonsoo.kim@lge.com>,
 Andrew Morton <akpm@linux-foundation.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Sat, 21 Sep 2019, David Rientjes wrote:

> I agree it looks nicer for poisoning, I'm not sure that every caller of
> print_section() is the same, however.  For example trace() seems better
> off as DUMP_PREFIX_ADDRESS since it already specifies the address of the
> object being allocated or freed and offset here wouldn't really be useful,
> no?

The address is printed earlier before the object dump. Maybe that is
sufficient and we could even reduce the number of digits further to have
the display more compact? In this case two hex digits would do the trick.


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
