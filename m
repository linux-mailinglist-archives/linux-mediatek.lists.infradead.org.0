Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F2C3D109F3A
	for <lists+linux-mediatek@lfdr.de>; Tue, 26 Nov 2019 14:23:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4JR5jByb4faSu3k2gZEiRE0GDuh5EzS/PDx+6gp9OnA=; b=jMzc5jU+W3O0Ij
	xb1bbEUcQ07ANX+zQqqwuiGB5kk4FS9TwGEHBq7crgXNCT5ajW3wWZuLHao0YROkzzcl8A6sIK9sM
	3Qx4bJR+Q/GoZsCR+fioGXH1IEyuSX0q4w0bt1F7C6Z8n9nip4FAgBoaz/zILvt4JPjfXMrh7Klnk
	MEB1ireIg5wrAoyeMGcpwY4nCF38unl938zk+Wo2wR2C9rngVZiVZ5DJI/QiP0+b9qNYVWjZ7gCsu
	Bv2fOlvAjJR26gmb4fCkpzB3ZOrWdULO8j8oHjtftvpesNAycumJ31mPD6Ovh3XPab+/4kikOZVBn
	qQ5hd6Bu1b51wWhDH4FA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZao0-0002LE-7k; Tue, 26 Nov 2019 13:23:00 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZamj-00075j-5G; Tue, 26 Nov 2019 13:21:42 +0000
X-UUID: d3b3bd13d20f497fa05fe903a6ec3ebc-20191126
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=WlPnUjC0Phkva1NreMCotJOZ/GKrJRhduHCPYVkHaA0=; 
 b=fTbR+yooKFztBsSCvuDvMAttoEjWpz/cVcLKPpJ0EKQDKoVquDsLw2z6NDMp4LE8xBsTaUIdyaWLDrnkeuz/7PjepOy4ZfdEqmF5PeXP9dKNECa7JVUnL5cjvKLdK8Xg6pEdDnGpD9cuvGStTSGBN/wHZNXXBlA0fvIAWj10pg0=;
X-UUID: d3b3bd13d20f497fa05fe903a6ec3ebc-20191126
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <yt.chang@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 378892954; Tue, 26 Nov 2019 05:21:29 -0800
Received: from mtkmbs07n1.mediatek.inc (172.21.101.16) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 26 Nov 2019 05:11:40 -0800
Received: from mtkcas09.mediatek.inc (172.21.101.178) by
 mtkmbs07n1.mediatek.inc (172.21.101.16) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 26 Nov 2019 21:11:27 +0800
Received: from [172.21.84.99] (172.21.84.99) by mtkcas09.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Tue, 26 Nov 2019 21:12:01 +0800
Message-ID: <1574773890.12247.23.camel@mtksdccf07>
Subject: Re: [PATCH 1/1] sched: panic, when call schedule with preemption
 disable
From: Kathleen Chang <yt.chang@mediatek.com>
To: Peter Zijlstra <peterz@infradead.org>
Date: Tue, 26 Nov 2019 21:11:30 +0800
In-Reply-To: <20191121123048.GQ4097@hirez.programming.kicks-ass.net>
References: <1574323985-24193-1-git-send-email-yt.chang@mediatek.com>
 <20191121123048.GQ4097@hirez.programming.kicks-ass.net>
X-Mailer: Evolution 3.2.3-0ubuntu6 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191126_052141_236933_F2ACDFD3 
X-CRM114-Status: UNSURE (   7.26  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Matthias Brugger <matthias.bgg@gmail.com>,
 linux-mediatek@lists.infradead.org, linux-kernel@vger.kernel.org,
 wsd_upstream@mediatek.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Thu, 2019-11-21 at 13:30 +0100, Peter Zijlstra wrote:
> On Thu, Nov 21, 2019 at 04:13:05PM +0800, YT Chang wrote:
> > When preemption is disable, call schedule() is incorrect behavior.
> > Suggest to panic directly rather than depend on panic_on_warn.
> 
> Why!?


1. Panic directly will easily find the root cause. 

   Call scheduling in atomic affects not only performance but also
system stability. 
    ex: 
      Call scheduling in IRQ will result in IRQ enable after schedule() 

2. A lot of warnings depend on panic_on_warn. It is not practical to
set panic_on_warn=1. 

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
