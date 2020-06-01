Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 957011EAC25
	for <lists+linux-mediatek@lfdr.de>; Mon,  1 Jun 2020 20:36:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	From:Subject:To:Message-Id:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vRlsUWDjZm1tCcz9AMYnizi4SrQW1gWpOuVTm/zYh1w=; b=rH/96De1V3il2W
	psn+G0Ux/CrGprwg8c4IRRkIS79n3dv+WQUMcTM/R1etD+/KQUMwzvIE1wkyYvYnaYjZnZrO3hRdg
	oZcdgqztLp+vpSBVkG7c3pi3NbGXgVif6/PJJY/ONnOuaPfoi0klHGDnK5vJ5hQMFZFzwdZFySgVl
	iOxqN6ByLR423ckiPyCU6yKGEEJWHDt/LQzKEECmclkAH0O5yVNTQREJhA6DlHSWC+js3uk5mhFfB
	XiuxKb5+wB2Jdy7Dm+pJvEITOE/TUbcvwkhT4JfAqXW25bodDLIwIbF/Kuy+2X8LjYIpPTT18PjD/
	DIMzVmb030/tatLq6SpQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jfpHt-0000MF-UO; Mon, 01 Jun 2020 18:35:53 +0000
Received: from shards.monkeyblade.net ([2620:137:e000::1:9])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jfpHl-0000Ea-FO; Mon, 01 Jun 2020 18:35:46 +0000
Received: from localhost (unknown [IPv6:2601:601:9f00:477::3d5])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id 6CAF8120ED480;
 Mon,  1 Jun 2020 11:35:37 -0700 (PDT)
Date: Mon, 01 Jun 2020 11:35:36 -0700 (PDT)
Message-Id: <20200601.113536.134620919829517847.davem@davemloft.net>
To: brgl@bgdev.pl
Subject: Re: [PATCH v3 0/2] regmap: provide simple bitops and use them in a
 driver
From: David Miller <davem@davemloft.net>
In-Reply-To: <20200528154503.26304-1-brgl@bgdev.pl>
References: <20200528154503.26304-1-brgl@bgdev.pl>
X-Mailer: Mew version 6.8 on Emacs 26.3
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Mon, 01 Jun 2020 11:35:38 -0700 (PDT)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200601_113545_521810_FDAD3504 
X-CRM114-Status: GOOD (  11.91  )
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
 pedro.tsai@mediatek.com, fparent@baylibre.com, broonie@kernel.org,
 linux-mediatek@lists.infradead.org, andrew.perepech@mediatek.com,
 john@phrozen.org, matthias.bgg@gmail.com, kuba@kernel.org,
 Mark-MC.Lee@mediatek.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

From: Bartosz Golaszewski <brgl@bgdev.pl>
Date: Thu, 28 May 2020 17:45:01 +0200

> From: Bartosz Golaszewski <bgolaszewski@baylibre.com>
> 
> I noticed that oftentimes I use regmap_update_bits() for simple bit
> setting or clearing. In this case the fourth argument is superfluous as
> it's always 0 or equal to the mask argument.
> 
> This series proposes to add simple bit operations for setting, clearing
> and testing specific bits with regmap.
> 
> The second patch uses all three in a driver that got recently picked into
> the net-next tree.
> 
> The patches obviously target different trees so - if you're ok with
> the change itself - I propose you pick the first one into your regmap
> tree for v5.8 and then I'll resend the second patch to add the first
> user for these macros for v5.9.
> 
> v1 -> v2:
> - convert the new macros to static inline functions
> 
> v2 -> v3:
> - drop unneeded ternary operator

Series applied to net-next, thank you.

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
