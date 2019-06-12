Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AD8A1425F5
	for <lists+linux-mediatek@lfdr.de>; Wed, 12 Jun 2019 14:35:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1RrYp9WVhYJltu6HK0dFhJndxCXnChLttHPIPMH7T7I=; b=H92fo+c6HNUBoz
	I/G+fM5z6ADoFjKdtZWjlkraDVqFVmXp/2zUcJZ64CVKxP8GOBm6kQh0vvukH4F/PbaUdy0+eSSUg
	kDDVt1ezY5kf0WT2AKqkonabVEPN50qYVzBMZi9TpDj3OTzvwSNaPZwxaxYsDG4ie0cuojlTIEw1L
	Vh84Bbxe1tVgQycqCXTltOOMI+8C/b5rqMgprQRxerx1Y80Wb2X+DWtpolCwMiHzhj8L+m2mS++6U
	0zBg269fnG7etR0l3FBZkiwIEh/n3TneE3Hy1ZKFGPedNwOxQAuOxuZFTVGdG2oFA4OpfkILpINWm
	+V2ViEqaMZQ2dSKglyLg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hb2Tn-0005nX-MX; Wed, 12 Jun 2019 12:35:51 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hb2Tk-0005mO-K7
 for linux-mediatek@lists.infradead.org; Wed, 12 Jun 2019 12:35:49 +0000
X-UUID: 64606ff8caa14ababd8b7b0995adbef7-20190612
X-UUID: 64606ff8caa14ababd8b7b0995adbef7-20190612
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw01.mediatek.com
 (envelope-from <kobe-cp.wu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1727694239; Wed, 12 Jun 2019 04:35:44 -0800
Received: from mtkmbs07n1.mediatek.inc (172.21.101.16) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 12 Jun 2019 05:35:42 -0700
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs07n1.mediatek.inc (172.21.101.16) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 12 Jun 2019 20:35:41 +0800
Received: from [172.21.77.33] (172.21.77.33) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Wed, 12 Jun 2019 20:35:41 +0800
Message-ID: <1560342941.16581.2.camel@mtkswgap22>
Subject: Re: [PATCH] locking/lockdep: Fix UBSAN warnings
From: Kobe-CP Wu <Kobe-CP.Wu@mediatek.com>
To: Peter Zijlstra <peterz@infradead.org>
Date: Wed, 12 Jun 2019 20:35:41 +0800
In-Reply-To: <20190612073425.GD3436@hirez.programming.kicks-ass.net>
References: <1560318544-27635-1-git-send-email-kobe-cp.wu@mediatek.com>
 <20190612073425.GD3436@hirez.programming.kicks-ass.net>
X-Mailer: Evolution 3.2.3-0ubuntu6 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190612_053548_668066_2A88ACE2 
X-CRM114-Status: UNSURE (   8.67  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-mediatek@lists.infradead.org, Ingo Molnar <mingo@redhat.com>,
 Will Deacon <will.deacon@arm.com>, wsd_upstream@mediatek.com,
 Eason Lin <eason-yh.lin@mediatek.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Wed, 2019-06-12 at 09:34 +0200, Peter Zijlstra wrote:
> On Wed, Jun 12, 2019 at 01:49:04PM +0800, Kobe Wu wrote:
> > Fix complaints from UBSAN about signed integer overflow.
> > 
> > ========================================================================
> > UBSAN: Undefined behaviour in kernel/locking/lockdep.c:2998:3
> > signed integer overflow:
> 
> I don't mind the patch, but this is an UBSAN bug and cannot therefore be
> a reason.

I think the description could be amended as follows.
There is unnecessary to mention the UBSAN bug.

locking/lockdep: add size of counters for lockdep statistics

When system has been running for a long time, signed integer counters 
are not enough for some lockdep statistics. Using unsigned long counters
can satisfy the requirement. Besides, most of lockdep statistics are 
unsigned. It is better to use unsigned int instead of int.



_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
