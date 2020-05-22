Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EB4851DF1EA
	for <lists+linux-mediatek@lfdr.de>; Sat, 23 May 2020 00:37:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	From:Subject:To:Message-Id:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Xj1GPrQyQ14HHIsw9lECsqlREJPEGCM7druErItOnZs=; b=rJhHMptmH80von
	yooS8A4CfMHjr4Y9x/kEZ6VNiuMs+2pE8jtrYwLwICsv/LnRDhBKHe1WSNFVHfg7PhCictdJVHn3G
	kt6Hfw5ZN2UJxVieO4LMvPFywi/dJtxq0TpxhY/jeXlFPnKZD73g3iVb0pBss/OKI1vj3wJy4pEaX
	URKH1LSy+6IRawk3qgwRGNosePHarG4OTX1TzQGXdxXZH8O9Ei6YURf0Q9zj67IDkTzYIjl6a9s3r
	UneWlUcrLd01hKSLkOjEv+WIRC4WESSTAbqhtZaarSCm9RUYxR85onC1P/TacNg52jYclQCikNhSQ
	KkeCotvc+akN16tb+PpQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jcGHz-00085V-LL; Fri, 22 May 2020 22:37:15 +0000
Received: from shards.monkeyblade.net ([2620:137:e000::1:9])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jcGHn-0007y1-Fa; Fri, 22 May 2020 22:37:04 +0000
Received: from localhost (unknown [IPv6:2601:601:9f00:477::3d5])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id B0F6412738EE0;
 Fri, 22 May 2020 15:36:54 -0700 (PDT)
Date: Fri, 22 May 2020 15:36:53 -0700 (PDT)
Message-Id: <20200522.153653.998395486877096103.davem@davemloft.net>
To: brgl@bgdev.pl
Subject: Re: [PATCH 0/5] net: provide a devres variant of register_netdev()
From: David Miller <davem@davemloft.net>
In-Reply-To: <20200520114415.13041-1-brgl@bgdev.pl>
References: <20200520114415.13041-1-brgl@bgdev.pl>
X-Mailer: Mew version 6.8 on Emacs 26.3
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Fri, 22 May 2020 15:36:55 -0700 (PDT)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200522_153703_521093_4E3E4DFA 
X-CRM114-Status: UNSURE (   3.88  )
X-CRM114-Notice: Please train this message.
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
Cc: edwin.peer@broadcom.com, devicetree@vger.kernel.org,
 bgolaszewski@baylibre.com, stephane.leprovost@mediatek.com, arnd@arndb.de,
 corbet@lwn.net, netdev@vger.kernel.org, sean.wang@mediatek.com,
 linux-kernel@vger.kernel.org, fparent@baylibre.com, pedro.tsai@mediatek.com,
 linux-mediatek@lists.infradead.org, andrew.perepech@mediatek.com,
 john@phrozen.org, matthias.bgg@gmail.com, kuba@kernel.org,
 Mark-MC.Lee@mediatek.com, linux-arm-kernel@lists.infradead.org,
 hkallweit1@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

From: Bartosz Golaszewski <brgl@bgdev.pl>
Date: Wed, 20 May 2020 13:44:10 +0200

>   net: ethernet: mtk_eth_mac: use devm_register_netdev()

This patch doesn't apply to net-next.

Neither the source file drivers/net/ethernet/mediatek/mtk_eth_mac.c,
nor the function mtk_mac_probe() even exist in the net-next GIT
tree.

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
