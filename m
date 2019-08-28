Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F6B69F8E8
	for <lists+linux-mediatek@lfdr.de>; Wed, 28 Aug 2019 05:49:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	From:Subject:To:Message-Id:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VcqbYCWhGXZr7Qph44Tlpib/ZTHvYzuBVYMrDgqvMP8=; b=atub2MTnO2dV2C
	yoOJwlQ9MgQHhBgJysK95iNE72ccvs97PPjMVlFmAiE2iLbllwzNRr6ECB2mjQNbbrEZd4zOOIzC1
	tMg08Hij2LJaDilAkGXea3TiGWhBJD8Icx4WbIgUEbliSG4zdt3+jed4zFYPr9VdNMfNTyQK6ic1a
	CbnXquQKi+6bw/HptVsSsAvCosrWH/qZsNtl2BNZ+BkK/fvxRiIeAYXEcHKEIQEySb1dVnyV6bc5E
	hrYXMXZoYUwYkYrBb3qY1K4412l2RweHZPOGH6cAVlLrmUkAcCuNV61FPL+Jzg/xIKt+YrG5tr9//
	E2H3d4PGIKBlwTOMVgMw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2ox5-0002jT-OE; Wed, 28 Aug 2019 03:48:55 +0000
Received: from shards.monkeyblade.net ([2620:137:e000::1:9])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2owa-0002Yh-MT; Wed, 28 Aug 2019 03:48:26 +0000
Received: from localhost (unknown [IPv6:2601:601:9f80:35cd::d71])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id 09F09153BA50F;
 Tue, 27 Aug 2019 20:48:22 -0700 (PDT)
Date: Tue, 27 Aug 2019 20:48:21 -0700 (PDT)
Message-Id: <20190827.204821.340435873815704705.davem@davemloft.net>
To: maowenan@huawei.com
Subject: Re: [PATCH v2 -next] net: mediatek: remove set but not used
 variable 'status'
From: David Miller <davem@davemloft.net>
In-Reply-To: <20190826013118.22720-1-maowenan@huawei.com>
References: <20190824.142158.1506174328495468705.davem@davemloft.net>
 <20190826013118.22720-1-maowenan@huawei.com>
X-Mailer: Mew version 6.8 on Emacs 26.1
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Tue, 27 Aug 2019 20:48:22 -0700 (PDT)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190827_204824_737885_A8EF7F6B 
X-CRM114-Status: UNSURE (   5.03  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: nbd@openwrt.org, nelson.chang@mediatek.com, netdev@vger.kernel.org,
 sean.wang@mediatek.com, kernel-janitors@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-mediatek@lists.infradead.org,
 john@phrozen.org, matthias.bgg@gmail.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

From: Mao Wenan <maowenan@huawei.com>
Date: Mon, 26 Aug 2019 09:31:18 +0800

> Fixes gcc '-Wunused-but-set-variable' warning:
> drivers/net/ethernet/mediatek/mtk_eth_soc.c: In function mtk_handle_irq:
> drivers/net/ethernet/mediatek/mtk_eth_soc.c:1951:6: warning: variable status set but not used [-Wunused-but-set-variable]
> 
> Fixes: 296c9120752b ("net: ethernet: mediatek: Add MT7628/88 SoC support")
> Signed-off-by: Mao Wenan <maowenan@huawei.com>

Applied to net-next.

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
