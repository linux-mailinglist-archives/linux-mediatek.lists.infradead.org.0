Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E951A33A8F
	for <lists+linux-mediatek@lfdr.de>; Tue,  4 Jun 2019 00:00:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	From:Subject:To:Message-Id:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ChGEY+9AfosmUKa1cltJB8YwiHLFp7xjQ27G/Q3DHVU=; b=XO+SazNxCOyDTt
	X/DmbOWKnF9A7WAx4OtHMaFRRPDSZMtAAt8903yb19BpnHc71OQ6htQPBnD3IwM3MTPON0fQ6+KS8
	kfYeubsA8uZ/+Kt7LSdPxGugIAMh5STKrEhSvvUp1YVw6s5TZ5C8g7Ji8EWDgn58q6C9x5E7Jr9c/
	4ezlWV50tOgEX33RlVtpIB17uDU90HC4Nn5qBmXAnm5gGNgRH2yoAPClhR5DkPFqgmBV/A/SCd/lR
	FctbtOOTfOabp4XMDlgcOK4ZSuAjJQuCOlX2iXh1rUcNfI2bWg7feC8Hy5z7bGq3h24OlxWiA9euG
	9u/l3cUcsmDn8+iy1dEw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXv0B-00023R-Mn; Mon, 03 Jun 2019 22:00:23 +0000
Received: from shards.monkeyblade.net ([2620:137:e000::1:9])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXv08-00022K-1m
 for linux-mediatek@lists.infradead.org; Mon, 03 Jun 2019 22:00:21 +0000
Received: from localhost (unknown [IPv6:2601:601:9f80:35cd::3d5])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id A6E78133E98DA;
 Mon,  3 Jun 2019 15:00:18 -0700 (PDT)
Date: Mon, 03 Jun 2019 15:00:18 -0700 (PDT)
Message-Id: <20190603.150018.656008041790620010.davem@davemloft.net>
To: sean.wang@mediatek.com
Subject: Re: [PATCH net-next v1 0/6] Add MT7629 ethernet support
From: David Miller <davem@davemloft.net>
In-Reply-To: <1559347395-14058-1-git-send-email-sean.wang@mediatek.com>
References: <1559347395-14058-1-git-send-email-sean.wang@mediatek.com>
X-Mailer: Mew version 6.8 on Emacs 26.1
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Mon, 03 Jun 2019 15:00:18 -0700 (PDT)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190603_150020_347508_28922F49 
X-CRM114-Status: UNSURE (   9.26  )
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
Cc: netdev@vger.kernel.org, nbd@openwrt.org, linux-mediatek@lists.infradead.org,
 linux-kernel@vger.kernel.org, john@phrozen.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

From: <sean.wang@mediatek.com>
Date: Sat, 1 Jun 2019 08:03:09 +0800

> From: Sean Wang <sean.wang@mediatek.com>
> 
> MT7629 inlcudes two sets of SGMIIs used for external switch or PHY, and embedded
> switch (ESW) via GDM1, GePHY via GMAC2, so add several patches in the series to
> make the code base common with the old SoCs.
> 
> The patch 1, 3 and 6, adds extension for SGMII to have the hardware configured
> for 1G, 2.5G and AN to fit the capability of the target PHY. In patch 6 could be
> an example showing how to use these configurations for underlying PHY speed to
> match up the link speed of the target PHY.
> 
> The patch 4 is used for automatically configured the hardware path from GMACx to
> the target PHY by the description in deviceetree topology to determine the
> proper value for the corresponding MUX.
> 
> The patch 2 and 5 is for the update for MT7629 including dt-binding document and
> its driver.

Series applied.

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
