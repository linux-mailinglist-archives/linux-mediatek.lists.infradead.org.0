Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D77EA33AB1
	for <lists+linux-mediatek@lfdr.de>; Tue,  4 Jun 2019 00:04:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	From:Subject:To:Message-Id:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ONIdq11bz5Ic5GetGtlq+3GbJus9TaqK1ILE/Af+9y8=; b=Ys7EbSMJJQr183
	r1SENjCbfn57na0oxSj/jReXjv+ejvx8phrr/V9vB4ympXg1FtxqJlzq3LP079vcftKrIrAdsHGJT
	GfVRXtpdoD87qFRssic2FU3GdfY3F8sn44+cJ63biMLBVEae19GkYRqGjnGph99wXA4KmUFefsJhP
	fPntm7nXKLNvLuEEPLDWzXWIy9GK8RQoS65f/dWtYKTXLQDQgLFApjnJfsH9b0cfOoOr5LvRElDqO
	DkfnD1ZCWlG52truJdGWC9evuh18HsKr78w5PRjzOcUA8kPdfv5u1PAnUalWKDRfVdaPV+Xa2uut9
	Z7wBSrh+balW4wUCiwxA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXv4D-0002F5-Sj; Mon, 03 Jun 2019 22:04:33 +0000
Received: from shards.monkeyblade.net ([2620:137:e000::1:9])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXv4B-0002En-F3
 for linux-mediatek@lists.infradead.org; Mon, 03 Jun 2019 22:04:32 +0000
Received: from localhost (unknown [IPv6:2601:601:9f80:35cd::3d5])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id B82AA136DF6FB;
 Mon,  3 Jun 2019 15:04:30 -0700 (PDT)
Date: Mon, 03 Jun 2019 15:04:30 -0700 (PDT)
Message-Id: <20190603.150430.1257765088076082369.davem@davemloft.net>
To: sean.wang@mediatek.com
Subject: Re: [PATCH net v1 1/2] net: ethernet: mediatek: Use hw_feature to
 judge if HWLRO is supported
From: David Miller <davem@davemloft.net>
In-Reply-To: <1559348187-14941-1-git-send-email-sean.wang@mediatek.com>
References: <1559348187-14941-1-git-send-email-sean.wang@mediatek.com>
X-Mailer: Mew version 6.8 on Emacs 26.1
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Mon, 03 Jun 2019 15:04:31 -0700 (PDT)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190603_150431_502178_008B1F6E 
X-CRM114-Status: UNSURE (   4.48  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-BeenThere: linux-mediatek@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-mediatek.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-mediatek>, 
 <mailto:linux-mediatek-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-mediatek/>
List-Post: <mailto:linux-mediatek@lists.infradead.org>
List-Help: <mailto:linux-mediatek-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-mediatek>, 
 <mailto:linux-mediatek-request@lists.infradead.org?subject=subscribe>
Cc: nbd@openwrt.org, netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-mediatek@lists.infradead.org, john@phrozen.org, mark-mc.lee@mediatek.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

From: <sean.wang@mediatek.com>
Date: Sat, 1 Jun 2019 08:16:26 +0800

> From: Sean Wang <sean.wang@mediatek.com>
> 
> Should hw_feature as hardware capability flags to check if hardware LRO
> got support.
> 
> Signed-off-by: Mark Lee <mark-mc.lee@mediatek.com>
> Signed-off-by: Sean Wang <sean.wang@mediatek.com>

Applied.

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
