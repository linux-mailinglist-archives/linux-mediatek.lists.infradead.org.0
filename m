Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EC352186712
	for <lists+linux-mediatek@lfdr.de>; Mon, 16 Mar 2020 09:54:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=chkv/8C0eKBdMDFXSvIeK/IEKgzzgoXwDpgSsjnkJXo=; b=qfa6bVdHyqZgWZ
	hWmwJO0K6xTA/dYLHDjVWbxw8py3JXVilrQGBOurGUidQrUkZGrS/Yde2CqfBU3Cm/qhAYh3Yqv2W
	JSVvkA1w3r3YiYGQjPkK3kzVLn6aqdN0GJjNI+k0b9Jez3r4d0AbLbDCd+qHdTP/YSVvfwt9DpL39
	plFmwNSe0znC3Ywqvrk0gX1ufr+vkNECHP0F1yaPOCgKVEF1NyBUenR+abPW/gCBGLEgyDbpEIFHn
	3SxMDQx6BXrckkoQHb2w/cKlppmH5lSHMe0yOR6TpEoGqWAErgMHx/Nf12l39gBl4+qmAFeeUVfD4
	hBIrLpF0AZwuQD9a4PLw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jDlW4-0002F3-Vf; Mon, 16 Mar 2020 08:54:33 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jDlUo-0000Z3-VF; Mon, 16 Mar 2020 08:53:16 +0000
X-UUID: 6c93551cf1eb4ef6b68ddcc93a641b84-20200316
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From;
 bh=8CsnDEoht1HR62sbtRaos/Ikmqwn0aOPwl68cKdnFtk=; 
 b=hgYogNzu33RadNeRfecuamvaLpSpCVry2G+IO50Ly0nDbvNH34mkd3wJmv4b29kw/vOVkiCP8i3BfinShrn9KGPQYVovxpZtgNX6nt/nShZYmrDY5dlcPl+dqbAd9IILkV9V+6rZxuEv98eUaTRXE8jJ6gLl4fw0KMVGmCvhz+I=;
X-UUID: 6c93551cf1eb4ef6b68ddcc93a641b84-20200316
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <stanley.chu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 902253229; Mon, 16 Mar 2020 00:53:07 -0800
Received: from MTKMBS02N1.mediatek.inc (172.21.101.77) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 16 Mar 2020 01:53:23 -0700
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs02n1.mediatek.inc (172.21.101.77) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 16 Mar 2020 16:50:49 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Mon, 16 Mar 2020 16:53:52 +0800
From: Stanley Chu <stanley.chu@mediatek.com>
To: <linux-scsi@vger.kernel.org>, <martin.peter~sen@oracle.com>,
 <avri.altman@wdc.com>, <alim.akhtar@samsung.com>, <jejb@linux.ibm.com>
Subject: [PATCH v6 2/7] scsi: ufs: use an enum for host capabilities
Date: Mon, 16 Mar 2020 16:52:58 +0800
Message-ID: <20200316085303.20350-3-stanley.chu@mediatek.com>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <20200316085303.20350-1-stanley.chu@mediatek.com>
References: <20200316085303.20350-1-stanley.chu@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200316_015315_061202_7BEDAD8F 
X-CRM114-Status: GOOD (  10.61  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 MIME_BASE64_TEXT       RAW: Message text disguised using base64
 encoding
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Stanley Chu <stanley.chu@mediatek.com>, bvanassche@acm.org,
 andy.teng@mediatek.com, chun-hung.wu@mediatek.com, kuohong.wang@mediatek.com,
 linux-kernel@vger.kernel.org, cang@codeaurora.org,
 linux-mediatek@lists.infradead.org, peter.wang@mediatek.com,
 matthias.bgg@gmail.com, beanhuo@micron.com,
 linux-arm-kernel@lists.infradead.org, asutoshd@codeaurora.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Use an enum to specify the host capabilities instead of #defines inside the
structure definition.

Signed-off-by: Stanley Chu <stanley.chu@mediatek.com>
Reviewed-by: Asutosh Das <asutoshd@codeaurora.org>
Reviewed-by: Avri Altman <avri.altman@wdc.com>
Reviewed-by: Can Guo <cang@codeaurora.org>
---
 drivers/scsi/ufs/ufshcd.h | 65 ++++++++++++++++++++++-----------------
 1 file changed, 37 insertions(+), 28 deletions(-)

diff --git a/drivers/scsi/ufs/ufshcd.h b/drivers/scsi/ufs/ufshcd.h
index 5c10777154fc..52425371082a 100644
--- a/drivers/scsi/ufs/ufshcd.h
+++ b/drivers/scsi/ufs/ufshcd.h
@@ -510,6 +510,43 @@ enum ufshcd_quirks {
 	UFSHCD_QUIRK_BROKEN_UFS_HCI_VERSION		= 1 << 5,
 };
 
+enum ufshcd_caps {
+	/* Allow dynamic clk gating */
+	UFSHCD_CAP_CLK_GATING				= 1 << 0,
+
+	/* Allow hiberb8 with clk gating */
+	UFSHCD_CAP_HIBERN8_WITH_CLK_GATING		= 1 << 1,
+
+	/* Allow dynamic clk scaling */
+	UFSHCD_CAP_CLK_SCALING				= 1 << 2,
+
+	/* Allow auto bkops to enabled during runtime suspend */
+	UFSHCD_CAP_AUTO_BKOPS_SUSPEND			= 1 << 3,
+
+	/*
+	 * This capability allows host controller driver to use the UFS HCI's
+	 * interrupt aggregation capability.
+	 * CAUTION: Enabling this might reduce overall UFS throughput.
+	 */
+	UFSHCD_CAP_INTR_AGGR				= 1 << 4,
+
+	/*
+	 * This capability allows the device auto-bkops to be always enabled
+	 * except during suspend (both runtime and suspend).
+	 * Enabling this capability means that device will always be allowed
+	 * to do background operation when it's active but it might degrade
+	 * the performance of ongoing read/write operations.
+	 */
+	UFSHCD_CAP_KEEP_AUTO_BKOPS_ENABLED_EXCEPT_SUSPEND = 1 << 5,
+
+	/*
+	 * This capability allows host controller driver to automatically
+	 * enable runtime power management by itself instead of waiting
+	 * for userspace to control the power management.
+	 */
+	UFSHCD_CAP_RPM_AUTOSUSPEND			= 1 << 6,
+};
+
 /**
  * struct ufs_hba - per adapter private structure
  * @mmio_base: UFSHCI base register address
@@ -664,34 +701,6 @@ struct ufs_hba {
 	struct ufs_clk_gating clk_gating;
 	/* Control to enable/disable host capabilities */
 	u32 caps;
-	/* Allow dynamic clk gating */
-#define UFSHCD_CAP_CLK_GATING	(1 << 0)
-	/* Allow hiberb8 with clk gating */
-#define UFSHCD_CAP_HIBERN8_WITH_CLK_GATING (1 << 1)
-	/* Allow dynamic clk scaling */
-#define UFSHCD_CAP_CLK_SCALING	(1 << 2)
-	/* Allow auto bkops to enabled during runtime suspend */
-#define UFSHCD_CAP_AUTO_BKOPS_SUSPEND (1 << 3)
-	/*
-	 * This capability allows host controller driver to use the UFS HCI's
-	 * interrupt aggregation capability.
-	 * CAUTION: Enabling this might reduce overall UFS throughput.
-	 */
-#define UFSHCD_CAP_INTR_AGGR (1 << 4)
-	/*
-	 * This capability allows the device auto-bkops to be always enabled
-	 * except during suspend (both runtime and suspend).
-	 * Enabling this capability means that device will always be allowed
-	 * to do background operation when it's active but it might degrade
-	 * the performance of ongoing read/write operations.
-	 */
-#define UFSHCD_CAP_KEEP_AUTO_BKOPS_ENABLED_EXCEPT_SUSPEND (1 << 5)
-	/*
-	 * This capability allows host controller driver to automatically
-	 * enable runtime power management by itself instead of waiting
-	 * for userspace to control the power management.
-	 */
-#define UFSHCD_CAP_RPM_AUTOSUSPEND (1 << 6)
 
 	struct devfreq *devfreq;
 	struct ufs_clk_scaling clk_scaling;
-- 
2.18.0
_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
