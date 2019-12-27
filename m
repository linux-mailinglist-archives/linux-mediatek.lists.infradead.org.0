Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 93FB012B27B
	for <lists+linux-mediatek@lfdr.de>; Fri, 27 Dec 2019 08:44:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GdqA3iokvS7xZM7K+lgicMKaI2J97f8VnkBbZgfIFH4=; b=UWBb12/FKjqAPY
	JP7VHiMwW95iAG78XQTB4d9Lx1Mx8WFAvIDijETjEr22ok83XH2heYmydQiLlMODxj55MhG/jfZG+
	YauMXKeZwBegxLgmAT/6OUcQXk33+mnh2ipajS16MTX1mNPBzZlwYqFticS5z3DPIwQHVihI/hemF
	fB75mu4d0nFadgOubcMiOGjRUyK3yh+fd0HTosm1K25fwUhVLSbknonfbFw8m1emaNtdkUlLctLpM
	YRBqKgDqlVf3CttVwjOAepiB5uatoaZY9AWK9QZzRzpuMHx2CNi0fhQIb7jaeCet7iqoIX8KiS1w/
	voDCZhK1NI5Tz9hJ/cBw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ikkIe-0005dV-0r; Fri, 27 Dec 2019 07:44:44 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ikkIa-0005d1-1X
 for linux-mediatek@lists.infradead.org; Fri, 27 Dec 2019 07:44:42 +0000
X-UUID: bf82dcb55e2f47498f2e9f382151331f-20191226
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=c7+sXShYFxG3wcTEwAICxBEiQe2t3QIDNgGX1i8gy9E=; 
 b=NkkHB4AtSFSKPRgdPKrWCW+PoJMENdBLHJk10B8rFqV8VlTsM0EF0WB4B6Na5uoS4b8HWeA9CxITGIfxO6cmRvPZLyaMEvLT6tihiom4Yk8+MDDAFOT4khsnUZK0ay9HXatevwwAz1O+5YvcwPutAAC+SK//zHt2O/StzDEcUY0=;
X-UUID: bf82dcb55e2f47498f2e9f382151331f-20191226
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw02.mediatek.com
 (envelope-from <miles.chen@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1333490791; Thu, 26 Dec 2019 23:44:33 -0800
Received: from MTKMBS07N2.mediatek.inc (172.21.101.141) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 26 Dec 2019 23:44:39 -0800
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs07n2.mediatek.inc (172.21.101.141) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 27 Dec 2019 15:44:08 +0800
Received: from [172.21.77.33] (172.21.77.33) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Fri, 27 Dec 2019 15:44:19 +0800
Message-ID: <1577432670.4248.3.camel@mtkswgap22>
Subject: Re: [PATCH] mm/page_owner: print largest memory consumer when OOM
 panic occurs
From: Miles Chen <miles.chen@mediatek.com>
To: Qian Cai <cai@lca.pw>
Date: Fri, 27 Dec 2019 15:44:30 +0800
In-Reply-To: <95CD23C9-D10D-4E6A-BF53-A4C1A4DB281A@lca.pw>
References: <20191226040114.8123-1-miles.chen@mediatek.com>
 <95CD23C9-D10D-4E6A-BF53-A4C1A4DB281A@lca.pw>
X-Mailer: Evolution 3.2.3-0ubuntu6 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191226_234440_097808_7E163360 
X-CRM114-Status: UNSURE (   9.50  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Michal Hocko <mhocko@suse.com>, wsd_upstream@mediatek.com,
 linux-kernel@vger.kernel.org, linux-mm@kvack.org,
 linux-mediatek@lists.infradead.org, Andrew Morton <akpm@linux-foundation.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Thu, 2019-12-26 at 00:53 -0500, Qian Cai wrote:
> 
> > On Dec 25, 2019, at 11:01 PM, Miles Chen <miles.chen@mediatek.com> wrote:
> > 
> > That is what the patch does -- targeting on the memory leakage which causes an OOM kernel panic, so the greatest consumer information helps (the amount of leakage is big enough to cause an OOM kernel panic)
> > 
> > I've posted the number of real problems since 2019/5 I solved by this approach.
> 
> The point is in order to make your debugging patch upstream, it has to be general useful. Right now, 

> it feels rather situational for me for the reasons given in the previous emails.


It's not complete situation.

I've listed different OOM panic situations in previous email [1]
and what we can do about them with current information.

There are some cases which cannot be covered by current information
easily.
For example: a memory leakage caused by alloc_pages() or vmalloc() with
a large size.
I keep seeing these issues for years and that's why I built this patch. 
It's like a missing piece of the puzzle.

To prove that the approach is practical and useful, I have collected
real test cases
under real devices and posted the test result in the commit message.
These are real cases, not my imagination.

[1] https://lkml.org/lkml/2019/12/25/53


thanks again for your comments

  Miles
_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
