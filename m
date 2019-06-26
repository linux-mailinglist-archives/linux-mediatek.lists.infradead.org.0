Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2744F55D39
	for <lists+linux-mediatek@lfdr.de>; Wed, 26 Jun 2019 03:06:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CQRUds1Jo/bC+ciVLzPYL0/JH+O6DgPlfrFmg+qTdfs=; b=fNqFmlYefJTDM4
	wRNumiPfMiA2gU6BYycg98hfrkcp1Ir9W2cWgTF+9mZ6jWvOgaxgyz8t/WzMUZswJSGGLyBxoME1h
	qIz2vm/unh9PAxRmC1f0cVaPUe3BydLHNJGf32bpd58jaI2TXmut/wFmkD29o4LV9NJWHLOAulkQS
	NofuCLz2TM5v01A6Kpxsh7SZv+2q2InMqKWBcfqxihsUy6fD4YCOuNBl928J1mRQPlDLvbv9uLqBR
	dw1I/ih5B0R3hGUzNrUI8r7URTUSSXlaDVUWJq3IfauMPB5NSCUqfI+POHFVuUDx5HD/GbkkFine0
	1BWWqXip8t+BZ73CKZoA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfwOH-0004jQ-V5; Wed, 26 Jun 2019 01:06:26 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfwNV-0004Ok-1o; Wed, 26 Jun 2019 01:05:39 +0000
X-UUID: d066b5c35866476aa075657f9dda9867-20190625
X-UUID: d066b5c35866476aa075657f9dda9867-20190625
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <weiyi.lu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 712194665; Tue, 25 Jun 2019 17:05:30 -0800
Received: from MTKMBS01N1.mediatek.inc (172.21.101.68) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 25 Jun 2019 18:05:29 -0700
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 mtkmbs01n1.mediatek.inc (172.21.101.68) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 26 Jun 2019 09:05:22 +0800
Received: from [172.21.77.4] (172.21.77.4) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Wed, 26 Jun 2019 09:05:22 +0800
Message-ID: <1561511122.24282.10.camel@mtksdaap41>
Subject: Re: [RFC v1] clk: core: support clocks that need to be enabled
 during re-parent
From: Weiyi Lu <weiyi.lu@mediatek.com>
To: Stephen Boyd <sboyd@kernel.org>
Date: Wed, 26 Jun 2019 09:05:22 +0800
In-Reply-To: <20190625221415.B0DC22086D@mail.kernel.org>
References: <1560138293-4163-1-git-send-email-weiyi.lu@mediatek.com>
 <20190625221415.B0DC22086D@mail.kernel.org>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_180537_949217_39FFE864 
X-CRM114-Status: GOOD (  12.75  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
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
Cc: James Liao <jamesjj.liao@mediatek.com>, srv_heupstream@mediatek.com,
 Biao Huang <biao.huang@mediatek.com>, linux-kernel@vger.kernel.org,
 Fan Chen <fan.chen@mediatek.com>, linux-mediatek@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Tue, 2019-06-25 at 15:14 -0700, Stephen Boyd wrote:
> Quoting Weiyi Lu (2019-06-09 20:44:53)
> > When using property assigned-clock-parents to assign parent clocks,
> > core clocks might still be disabled during re-parent.
> > Add flag 'CLK_OPS_CORE_ENABLE' for those clocks must be enabled
> > during re-parent.
> > 
> > Signed-off-by: Weiyi Lu <weiyi.lu@mediatek.com>
> 
> Can you further describe the scenario where this is a problem? Is it
> some sort of clk that is enabled by default out of the bootloader and is
> then configured to have an 'assigned-clock-parents' property to change
> the parent, but that clk needs to be "enabled" so that the framework
> turns on the parents for the parent switch?

When driver is built as module(.ko) and install at runtime after the
whole initialization stage. Clk might already be turned off before
configuring by assigned-clock-parents. For such clock design that need
to have clock enabled during re-parent, the configuration of
assigned-clock-parents might be failed. That's the problem we have now.
Do you have any suggestion for such usage of clocks? Many thanks.

> 



_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
