Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D76836D751
	for <lists+linux-mediatek@lfdr.de>; Fri, 19 Jul 2019 01:36:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	From:Subject:To:Message-Id:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kD9EgT03el+LDeTdrEslslbA/Pr1oCGi/qz6ufPd9fE=; b=gtHmUpXigC5Rb2
	WvIyqedZQhBWS5/4rKKKPThN8X8xYjvJ23M9K6f10k5JXvPs/Mzy7EXu+ofUVVbMhnPYVF7nhdoLe
	LkkK209GsGIG7ucOSLAHvi8S0O4j8dRJszXuwfMAkmy1oMAOAhnBYcsPoN3QyJrk8fKyEIgMy5W6d
	/XrUHu+8DxRyAQQXpZnfgoTfr5Ef6JfshZJPt2Xc+wi1nuwe0dP/Huz5ARXppkbMJLUt+gJVq83Zg
	7fMSYuHhoFgumwVyJUcVX/6SVPbwmUe61I6zv7fC9ejuvypZk1KKvA2rX8fzYIo2EQOXlFiTNS+Vv
	rtrrYHPCCQNs51r+/qLQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hoFwk-0002bb-DX; Thu, 18 Jul 2019 23:36:22 +0000
Received: from shards.monkeyblade.net ([2620:137:e000::1:9])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hoFwg-0002b3-PG
 for linux-mediatek@lists.infradead.org; Thu, 18 Jul 2019 23:36:20 +0000
Received: from localhost (unknown [IPv6:2601:601:9f80:35cd::d71])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id 42CBB1528C8A9;
 Thu, 18 Jul 2019 16:36:12 -0700 (PDT)
Date: Thu, 18 Jul 2019 16:36:11 -0700 (PDT)
Message-Id: <20190718.163611.739573720782543608.davem@davemloft.net>
To: sr@denx.de
Subject: Re: [PATCH] net: ethernet: mediatek: Add MT7628/88 SoC support
From: David Miller <davem@davemloft.net>
In-Reply-To: <20190717110243.14240-1-sr@denx.de>
References: <20190717110243.14240-1-sr@denx.de>
X-Mailer: Mew version 6.8 on Emacs 26.1
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Thu, 18 Jul 2019 16:36:12 -0700 (PDT)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190718_163618_825148_B5D70FCA 
X-CRM114-Status: UNSURE (   7.05  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: nbd@openwrt.org, netdev@vger.kernel.org, sean.wang@mediatek.com,
 opensource@vdorst.com, linux-mediatek@lists.infradead.org, john@phrozen.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

From: Stefan Roese <sr@denx.de>
Date: Wed, 17 Jul 2019 13:02:43 +0200

> This patch adds support for the MediaTek MT7628/88 SoCs to the common
> MediaTek ethernet driver. Some minor changes are needed for this and
> a bigger change, as the MT7628 does not support QDMA (only PDMA).
> 
> Signed-off-by: Stefan Roese <sr@denx.de>

Besides the feedback you've received, this kind of change is only appropriate
for the net-next tree at this time.

If you wish to keep sending versions for review until the net-next tree opens
back up, clearly indicate in your Subject line by saying "[PATCH RFC ...]" or
similar.

Thank you.

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
