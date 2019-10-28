Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D46FEE6B14
	for <lists+linux-mediatek@lfdr.de>; Mon, 28 Oct 2019 03:50:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3E7xAnIKueiAexLO8pbsLRQMHxpArhsUBDGqkqhha7I=; b=hSpYLr1t6AIoUT
	71X9R3G4o/Fgst/ApfgxP2cIA4QUsCqZkVMVMFM0wgTMCw5PuLIEtQOHl/cxYO8jNlqf3DMFVsL7W
	Wcj6IwBk3pWULFEiROxLf1t853piMjtVwzGwgMxdnmxwAmQ/PZqlYpVRj8RZ1iovCqiCiBBW6kd3T
	0anPGbj4Ac60n5+H+n09F3VRLu4TotMWX5rjGWVMp1M4R7mpgODVoM83pDzBFru73XvxKongylbR6
	hGEX0yt0NuHTpS16Ho2qmNz37yZDaowBvodU62hYG6GAthLxuyFFY+wcvLOp2Oj6EdAs+eQ+NdRBp
	cIVP/euUPX6ch3DO4byg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iOv6d-0001ot-Ck; Mon, 28 Oct 2019 02:50:07 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iOv57-0000gC-VM; Mon, 28 Oct 2019 02:48:35 +0000
X-UUID: 95dacda25cc74895ab191e1e0627accf-20191027
X-UUID: 95dacda25cc74895ab191e1e0627accf-20191027
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw02.mediatek.com
 (envelope-from <weiyi.lu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 973593577; Sun, 27 Oct 2019 18:48:40 -0800
Received: from mtkmbs07n1.mediatek.inc (172.21.101.16) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Sun, 27 Oct 2019 19:48:26 -0700
Received: from mtkcas09.mediatek.inc (172.21.101.178) by
 mtkmbs07n1.mediatek.inc (172.21.101.16) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 28 Oct 2019 10:48:25 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by mtkcas09.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Mon, 28 Oct 2019 10:48:26 +0800
From: Weiyi Lu <weiyi.lu@mediatek.com>
To: Nicolas Boichat <drinkcat@chromium.org>, Matthias Brugger
 <matthias.bgg@gmail.com>, Rob Herring <robh@kernel.org>
Subject: [PATCH v8 04/14] soc: mediatek: Refactor regulator control
Date: Mon, 28 Oct 2019 10:48:08 +0800
Message-ID: <1572230898-7860-5-git-send-email-weiyi.lu@mediatek.com>
X-Mailer: git-send-email 1.8.1.1.dirty
In-Reply-To: <1572230898-7860-1-git-send-email-weiyi.lu@mediatek.com>
References: <1572230898-7860-1-git-send-email-weiyi.lu@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191027_194834_012326_70D6BA44 
X-CRM114-Status: GOOD (  10.81  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: James Liao <jamesjj.liao@mediatek.com>, Weiyi Lu <weiyi.lu@mediatek.com>,
 srv_heupstream@mediatek.com, linux-kernel@vger.kernel.org,
 Fan Chen <fan.chen@mediatek.com>, linux-mediatek@lists.infradead.org,
 Yong Wu <yong.wu@mediatek.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Put regulator enable and disable control in separate functions.

Signed-off-by: Weiyi Lu <weiyi.lu@mediatek.com>
---
 drivers/soc/mediatek/mtk-scpsys.c | 32 +++++++++++++++++++++++---------
 1 file changed, 23 insertions(+), 9 deletions(-)

diff --git a/drivers/soc/mediatek/mtk-scpsys.c b/drivers/soc/mediatek/mtk-scpsys.c
index e97fc0e..aed540d 100644
--- a/drivers/soc/mediatek/mtk-scpsys.c
+++ b/drivers/soc/mediatek/mtk-scpsys.c
@@ -191,6 +191,22 @@ static int scpsys_domain_is_on(struct scp_domain *scpd)
 	return -EINVAL;
 }
 
+static int scpsys_regulator_enable(struct scp_domain *scpd)
+{
+	if (!scpd->supply)
+		return 0;
+
+	return regulator_enable(scpd->supply);
+}
+
+static int scpsys_regulator_disable(struct scp_domain *scpd)
+{
+	if (!scpd->supply)
+		return 0;
+
+	return regulator_disable(scpd->supply);
+}
+
 static int scpsys_power_on(struct generic_pm_domain *genpd)
 {
 	struct scp_domain *scpd = container_of(genpd, struct scp_domain, genpd);
@@ -201,11 +217,9 @@ static int scpsys_power_on(struct generic_pm_domain *genpd)
 	int ret, tmp;
 	int i;
 
-	if (scpd->supply) {
-		ret = regulator_enable(scpd->supply);
-		if (ret)
-			return ret;
-	}
+	ret = scpsys_regulator_enable(scpd);
+	if (ret < 0)
+		return ret;
 
 	for (i = 0; i < MAX_CLKS && scpd->clk[i]; i++) {
 		ret = clk_prepare_enable(scpd->clk[i]);
@@ -273,8 +287,7 @@ static int scpsys_power_on(struct generic_pm_domain *genpd)
 			clk_disable_unprepare(scpd->clk[i]);
 	}
 err_clk:
-	if (scpd->supply)
-		regulator_disable(scpd->supply);
+	scpsys_regulator_disable(scpd);
 
 	dev_err(scp->dev, "Failed to power on domain %s\n", genpd->name);
 
@@ -333,8 +346,9 @@ static int scpsys_power_off(struct generic_pm_domain *genpd)
 	for (i = 0; i < MAX_CLKS && scpd->clk[i]; i++)
 		clk_disable_unprepare(scpd->clk[i]);
 
-	if (scpd->supply)
-		regulator_disable(scpd->supply);
+	ret = scpsys_regulator_disable(scpd);
+	if (ret < 0)
+		goto out;
 
 	return 0;
 
-- 
1.8.1.1.dirty


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
