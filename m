Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E5AD757DD0
	for <lists+linux-mediatek@lfdr.de>; Thu, 27 Jun 2019 10:04:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=APKEwbyYudCnjvQ2IEFR4xm/fEeNw+KG9/gXzP12kjc=; b=fvKjy6+E2DzFdE
	McEWKJfADazIeoDDrzXFoRQ6+lpOjJuJqUbvbB/yKvcm12fnrdvCJ/elH/jYgi965KeiZiwtItOYh
	1p4E83hj9jFNfb3M8U26h3v71aUDkzrfafrjUiZNBf5jMiHVP4q5B5x/u0u4vmYLcYEAWV+ET1czP
	Et5UV8z8MRTxhHx5ydm8fkDYmwkLnDg/0P19SMapQsdxfTQOkSY+GPEe3ZE/Ko6YrCvZ4ImAZpqNN
	XqTY4n3N0LjibX0cBIbN7RVp93YjPtcxLtQAsKwIFSk7DkdTjEpT5W2Vu3/6tmG8IGHJuq1iA8gUP
	hy9oIQHCquJXD/sZFHqQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgPNs-0007hs-IW; Thu, 27 Jun 2019 08:03:56 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgPMv-00071Q-70; Thu, 27 Jun 2019 08:02:58 +0000
X-UUID: 4202c62c8c4a432bad1d4c3ef676f9a6-20190627
X-UUID: 4202c62c8c4a432bad1d4c3ef676f9a6-20190627
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <jitao.shi@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 363806916; Thu, 27 Jun 2019 00:01:39 -0800
Received: from MTKMBS33DR.mediatek.inc (172.27.6.106) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 27 Jun 2019 01:01:38 -0700
Received: from MTKCAS36.mediatek.inc (172.27.4.186) by MTKMBS33DR.mediatek.inc
 (172.27.6.106) with Microsoft SMTP Server (TLS) id 15.0.1395.4;
 Thu, 27 Jun 2019 16:01:30 +0800
Received: from mszsdclx1018.gcn.mediatek.inc (172.27.4.253) by
 MTKCAS36.mediatek.inc (172.27.4.170) with Microsoft SMTP Server id
 15.0.1395.4 via Frontend Transport; Thu, 27 Jun 2019 16:01:28 +0800
From: Jitao Shi <jitao.shi@mediatek.com>
To: Rob Herring <robh+dt@kernel.org>, Pawel Moll <pawel.moll@arm.com>, "Mark
 Rutland" <mark.rutland@arm.com>, Ian Campbell
 <ijc+devicetree@hellion.org.uk>, <linux-pwm@vger.kernel.org>, David Airlie
 <airlied@linux.ie>, Matthias Brugger <matthias.bgg@gmail.com>
Subject: [v5 7/7] drm: mediatek: adjust dsi and mipi_tx probe sequence
Date: Thu, 27 Jun 2019 16:01:15 +0800
Message-ID: <20190627080116.40264-8-jitao.shi@mediatek.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190627080116.40264-1-jitao.shi@mediatek.com>
References: <20190627080116.40264-1-jitao.shi@mediatek.com>
MIME-Version: 1.0
X-TM-AS-Product-Ver: SMEX-12.5.0.1684-8.5.1010-24720.003
X-TM-AS-Result: No-5.013200-8.000000-10
X-TMASE-MatchedRID: jDDvEWr+SwHYi2pRKW3Q1vqifdI85BZh3WFaxVW7M2hwkdIrVt8X1WMg
 VHfStGn65UUUZCVUbO+bHAuQ1dUnuWJZXQNDzktSGjzBgnFZvQ4zAx8HYox0h0YlGywuH9uc+rE
 c9YP7ZaPi8zVgXoAltmHJPdY2OmlS0C1sQRfQzEHEQdG7H66TyH4gKq42LRYk9Tu3ibJR6eVOyv
 c/Wa4OW6RXKfY/AJJQK/xHXrr321p+3BndfXUhXQ==
X-TM-AS-User-Approved-Sender: No
X-TM-AS-User-Blocked-Sender: No
X-TMASE-Result: 10--5.013200-8.000000
X-TMASE-Version: SMEX-12.5.0.1684-8.5.1010-24720.003
X-TM-SNTS-SMTP: FEDE5F3E307DE948241EF76F11C72F417CD4B7A4639B3C4CB141BA5B401DE9052000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190627_010257_287016_7DFD7F2C 
X-CRM114-Status: UNSURE (   9.26  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: stonea168@163.com, dri-devel@lists.freedesktop.org,
 Andy Yan <andy.yan@rock-chips.com>, Ajay Kumar <ajaykumar.rs@samsung.com>,
 Vincent Palatin <vpalatin@chromium.org>, cawa.cheng@mediatek.com,
 bibby.hsieh@mediatek.com, ck.hu@mediatek.com,
 Russell King <rmk+kernel@arm.linux.org.uk>,
 Thierry Reding <treding@nvidia.com>, devicetree@vger.kernel.org,
 Jitao Shi <jitao.shi@mediatek.com>, Philipp Zabel <p.zabel@pengutronix.de>,
 Inki Dae <inki.dae@samsung.com>, linux-mediatek@lists.infradead.org,
 yingjoe.chen@mediatek.com, eddie.huang@mediatek.com,
 linux-arm-kernel@lists.infradead.org, Rahul Sharma <rahul.sharma@samsung.com>,
 srv_heupstream@mediatek.com, linux-kernel@vger.kernel.org,
 Sascha Hauer <kernel@pengutronix.de>, Sean Paul <seanpaul@chromium.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

mtk_mipi_tx is the phy of mtk_dsi.
mtk_dsi get the phy(mtk_mipi_tx) in probe().

So,  mtk_mipi_tx init should be ahead of mtk_dsi. Or mtk_dsi will
defer to wait mtk_mipi_tx probe done.

Signed-off-by: Jitao Shi <jitao.shi@mediatek.com>
Reviewed-by: CK Hu <ck.hu@mediatek.com>
---
 drivers/gpu/drm/mediatek/mtk_drm_drv.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/mediatek/mtk_drm_drv.c b/drivers/gpu/drm/mediatek/mtk_drm_drv.c
index 57ce4708ef1b..fc809a61fab9 100644
--- a/drivers/gpu/drm/mediatek/mtk_drm_drv.c
+++ b/drivers/gpu/drm/mediatek/mtk_drm_drv.c
@@ -640,8 +640,8 @@ static struct platform_driver * const mtk_drm_drivers[] = {
 	&mtk_disp_rdma_driver,
 	&mtk_dpi_driver,
 	&mtk_drm_platform_driver,
-	&mtk_dsi_driver,
 	&mtk_mipi_tx_driver,
+	&mtk_dsi_driver,
 };
 
 static int __init mtk_drm_init(void)
-- 
2.21.0


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
