Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D3241FA197
	for <lists+linux-mediatek@lfdr.de>; Mon, 15 Jun 2020 22:33:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	From:Subject:To:Message-Id:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lwal6xkH2k2q+57uBMsV41muJoKrM7aQwx65xZaLGWg=; b=cai/hBMMYmG+Om
	ugMXxr8oy2JmJd0bNqnHM7bMbFmeUmQikxNsE8Dk310uhs8om5Sspy1NfCMtsMi0EfdMARxiJAgIs
	f/KUauhBGfWetApgsfPyGRjs1btl24Mhp8A01iBU+Gaqh8JaX6b2LuKcTQoTNO+ZYp4ZpOYI1H4lJ
	8ITI1oxnOKCeDFtqSUk61JC8bPxCVfJyM6ijnw3T0GX2CdAxoHUNjDO9anvQ2qykzQasRDcQfz6yj
	w2QvjUNjyGKxzNZo3JK7P3kpRCUktQEZh2xMbISrkgVhk1YQbS4ZRMD1gF7bzAt7WAuNqlmI6i2bO
	fPS5CepceNEt/kmhRu1A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jkvnO-00014Y-Mq; Mon, 15 Jun 2020 20:33:30 +0000
Received: from shards.monkeyblade.net ([2620:137:e000::1:9])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jkvlc-0007li-1y; Mon, 15 Jun 2020 20:31:41 +0000
Received: from localhost (unknown [IPv6:2601:601:9f00:477::3d5])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id 4A520120ED49A;
 Mon, 15 Jun 2020 13:31:37 -0700 (PDT)
Date: Mon, 15 Jun 2020 13:31:36 -0700 (PDT)
Message-Id: <20200615.133136.632752213609052484.davem@davemloft.net>
To: brgl@bgdev.pl
Subject: Re: [PATCH] net: ethernet: mtk-star-emac: simplify interrupt handling
From: David Miller <davem@davemloft.net>
In-Reply-To: <20200611140139.17702-1-brgl@bgdev.pl>
References: <20200611140139.17702-1-brgl@bgdev.pl>
X-Mailer: Mew version 6.8 on Emacs 26.3
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Mon, 15 Jun 2020 13:31:37 -0700 (PDT)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200615_133140_185335_0A43EEAE 
X-CRM114-Status: GOOD (  11.73  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: stephane.leprovost@mediatek.com, bgolaszewski@baylibre.com,
 netdev@vger.kernel.org, sean.wang@mediatek.com, linux-kernel@vger.kernel.org,
 fparent@baylibre.com, pedro.tsai@mediatek.com,
 linux-mediatek@lists.infradead.org, andrew.perepech@mediatek.com,
 john@phrozen.org, matthias.bgg@gmail.com, kuba@kernel.org,
 Mark-MC.Lee@mediatek.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

From: Bartosz Golaszewski <brgl@bgdev.pl>
Date: Thu, 11 Jun 2020 16:01:39 +0200

> From: Bartosz Golaszewski <bgolaszewski@baylibre.com>
> 
> During development we tried to make the interrupt handling as fine-grained
> as possible with TX and RX interrupts being disabled/enabled independently
> and the counter registers reset from workqueue context.
> 
> Unfortunately after thorough testing of current mainline, we noticed the
> driver has become unstable under heavy load. While this is hard to
> reproduce, it's quite consistent in the driver's current form.
> 
> This patch proposes to go back to the previous approach of doing all
> processing in napi context with all interrupts masked in order to make the
> driver usable in mainline linux. This doesn't impact the performance on
> pumpkin boards at all and it's in line with what many ethernet drivers do
> in mainline linux anyway.
> 
> At the same time we're adding a FIXME comment about the need to improve
> the interrupt handling.
> 
> Fixes: 8c7bd5a454ff ("net: ethernet: mtk-star-emac: new driver")
> Signed-off-by: Bartosz Golaszewski <bgolaszewski@baylibre.com>

Applied.

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
