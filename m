Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7237D64056
	for <lists+linux-mediatek@lfdr.de>; Wed, 10 Jul 2019 07:06:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=GtwdL6ut5XKo1NuFmGln6iRICBIzaYGz7T+AHBzLOss=; b=qJfV6SMg1CsGy9uLj7bX+2DF6W
	vA/Rv3xvFgT0yEKMKQjVOE+fpBfcwuTvkDSW2GxcpK+BWkVmla6cSNkIXxun7xI/01nUi2N2p3j4k
	fcgTaKOVdzXVi+9GUn3Nr+iJw4JORceFozhyTV6XSVqqo1slQ2XugGUrgdkVR45Y+KWEVQM6/RsiZ
	/B3d64+ISQrT1Zaw2ujts9bFGSo98nZKXQArvHuOoFfeoMgJW8GIAlah9+j0AZ/t4NWeDXpEF0fWc
	i9mipshRKqiGDaPwoUnSl0bhYOc2GC9FkN+J2GB0Nc5uVyrxF9mykgrmCDP4EMEGbIg7z8AXtN7dW
	QCCkMbNA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hl4nt-0000aF-Ms; Wed, 10 Jul 2019 05:06:05 +0000
Received: from smtprelay0072.hostedemail.com ([216.40.44.72]
 helo=smtprelay.hostedemail.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hl4mh-0006wE-NJ; Wed, 10 Jul 2019 05:04:53 +0000
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net
 [216.40.38.60])
 by smtprelay07.hostedemail.com (Postfix) with ESMTP id 161B4181D33FB;
 Wed, 10 Jul 2019 05:04:47 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 2, 0, 0, , d41d8cd98f00b204, joe@perches.com,
 :::::::::::::::::::::,
 RULES_HIT:41:355:379:541:800:960:973:988:989:1260:1345:1359:1437:1534:1541:1711:1730:1747:1777:1792:2198:2199:2393:2559:2562:3138:3139:3140:3141:3142:3352:3867:4321:4605:5007:6261:6642:8784:9121:10004:10848:11026:11233:11473:11657:11658:11914:12043:12048:12296:12297:12438:12555:12895:12986:13069:13311:13357:14181:14384:14394:14721:21080:21451:21627:30054:30080,
 0,
 RBL:23.242.196.136:@perches.com:.lbl8.mailshell.net-62.8.0.180 64.201.201.201,
 CacheIP:none, Bayesian:0.5, 0.5, 0.5, Netcheck:none, DomainCache:0,
 MSF:not bulk, SPF:fn, MSBL:0, DNSBL:neutral, Custom_rules:0:0:0, LFtime:2,
 LUA_SUMMARY:none
X-HE-Tag: fang39_c6a5a3a50f08
X-Filterd-Recvd-Size: 2562
Received: from joe-laptop.perches.com (cpe-23-242-196-136.socal.res.rr.com
 [23.242.196.136]) (Authenticated sender: joe@perches.com)
 by omf06.hostedemail.com (Postfix) with ESMTPA;
 Wed, 10 Jul 2019 05:04:45 +0000 (UTC)
From: Joe Perches <joe@perches.com>
To: Andrew Morton <akpm@linux-foundation.org>, Felix Fietkau <nbd@openwrt.org>,
 John Crispin <john@phrozen.org>, Sean Wang <sean.wang@mediatek.com>,
 Nelson Chang <nelson.chang@mediatek.com>,
 Matthias Brugger <matthias.bgg@gmail.com>
Subject: [PATCH 07/12] net: ethernet: mediatek: Fix misuses of GENMASK macro
Date: Tue,  9 Jul 2019 22:04:20 -0700
Message-Id: <1961dd832a1363b6dfdbac6cb0b1c71fa838d258.1562734889.git.joe@perches.com>
X-Mailer: git-send-email 2.15.0
In-Reply-To: <cover.1562734889.git.joe@perches.com>
References: <cover.1562734889.git.joe@perches.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190709_220452_019916_25786F43 
X-CRM114-Status: UNSURE (   8.57  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.40.44.72 listed in list.dnswl.org]
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
Cc: netdev@vger.kernel.org, linux-mediatek@lists.infradead.org,
 "David S. Miller" <davem@davemloft.net>, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Arguments are supposed to be ordered high then low.

Signed-off-by: Joe Perches <joe@perches.com>
---
 drivers/net/ethernet/mediatek/mtk_eth_soc.h | 2 +-
 drivers/net/ethernet/mediatek/mtk_sgmii.c   | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/mediatek/mtk_eth_soc.h b/drivers/net/ethernet/mediatek/mtk_eth_soc.h
index 876ce6798709..221012ecb845 100644
--- a/drivers/net/ethernet/mediatek/mtk_eth_soc.h
+++ b/drivers/net/ethernet/mediatek/mtk_eth_soc.h
@@ -712,7 +712,7 @@ struct mtk_soc_data {
 #define MTK_MAX_DEVS			2
 
 #define MTK_SGMII_PHYSPEED_AN          BIT(31)
-#define MTK_SGMII_PHYSPEED_MASK        GENMASK(0, 2)
+#define MTK_SGMII_PHYSPEED_MASK        GENMASK(2, 0)
 #define MTK_SGMII_PHYSPEED_1000        BIT(0)
 #define MTK_SGMII_PHYSPEED_2500        BIT(1)
 #define MTK_HAS_FLAGS(flags, _x)       (((flags) & (_x)) == (_x))
diff --git a/drivers/net/ethernet/mediatek/mtk_sgmii.c b/drivers/net/ethernet/mediatek/mtk_sgmii.c
index 136f90ce5a65..ff509d42d818 100644
--- a/drivers/net/ethernet/mediatek/mtk_sgmii.c
+++ b/drivers/net/ethernet/mediatek/mtk_sgmii.c
@@ -82,7 +82,7 @@ int mtk_sgmii_setup_mode_force(struct mtk_sgmii *ss, int id)
 		return -EINVAL;
 
 	regmap_read(ss->regmap[id], ss->ana_rgc3, &val);
-	val &= ~GENMASK(2, 3);
+	val &= ~GENMASK(3, 2);
 	mode = ss->flags[id] & MTK_SGMII_PHYSPEED_MASK;
 	val |= (mode == MTK_SGMII_PHYSPEED_1000) ? 0 : BIT(2);
 	regmap_write(ss->regmap[id], ss->ana_rgc3, val);
-- 
2.15.0


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
