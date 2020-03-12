Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A50718313F
	for <lists+linux-mediatek@lfdr.de>; Thu, 12 Mar 2020 14:24:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HSPC74Tn1x5WemqxMQTLZx/gPLoWgMxfrT+f+PwdmY4=; b=g2DztjaeiwXD4N
	wxWPlGICuB3Bssk6YN7w/xn8zU1163xij/T+vpG2GmZCoQ0iWUbrhpu08ZFvSJdk7NSF3jtvVUfl6
	v9i1x2nz2XRswWJPLj4ux4sYZe7srrxHDxui/Jkug5dVS9b+DV9p8mITgFHoZ8kYYvEHp913/NUDy
	8wKBocggrjwhBYsz9CJ/+ZB+ifQGSZiiixfLkg1t13qByOeUSfJpiIj2UR3wHujIqD1htRZNAUJdN
	Oa5RhfFxq2RlqXKFguJKga2vjYbmBuUJt2dpjP7wpaCyF8InZfcTx03lRcLOnXHkfc6mEKMAgqMre
	pQ/n194FCgMbgkjXx2Pg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCNpF-0005zx-HY; Thu, 12 Mar 2020 13:24:37 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCNod-0005Dm-Ts; Thu, 12 Mar 2020 13:24:01 +0000
X-UUID: 13eb2000da03469280176e75dae0a96c-20200312
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From;
 bh=AFM96yV028irlR8soZH4MHzhmotsvDaTG8EF1C+nQj8=; 
 b=gRuZ1BMHgAvWe2mdNY0Sbwm7fGBFFiAW42YLtHkN7IlewrqyUEel+4Mnaos/TmrgtrHEvu8Wl/zHMtkRGkpg8UV25IQP4Aa7v9OsVUZ0E5THesQ3944tii13xcp4onPo4R+0RvoxV1hJCGD3V/2n6k0vMt5q/CAJ5tM71NXdW6o=;
X-UUID: 13eb2000da03469280176e75dae0a96c-20200312
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw01.mediatek.com
 (envelope-from <stanley.chu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 2122729471; Thu, 12 Mar 2020 05:23:54 -0800
Received: from mtkmbs05n2.mediatek.inc (172.21.101.140) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 12 Mar 2020 06:24:03 -0700
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 mtkmbs05n2.mediatek.inc (172.21.101.140) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 12 Mar 2020 21:22:47 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Thu, 12 Mar 2020 21:21:02 +0800
From: Stanley Chu <stanley.chu@mediatek.com>
To: <linux-scsi@vger.kernel.org>, <martin.petersen@oracle.com>,
 <avri.altman@wdc.com>, <alim.akhtar@samsung.com>, <jejb@linux.ibm.com>
Subject: [PATCH v3 5/8] scsi: ufs-mediatek: replace all delay places by common
 delay function
Date: Thu, 12 Mar 2020 21:23:47 +0800
Message-ID: <20200312132350.18061-6-stanley.chu@mediatek.com>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <20200312132350.18061-1-stanley.chu@mediatek.com>
References: <20200312132350.18061-1-stanley.chu@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200312_062400_139802_50766BC3 
X-CRM114-Status: GOOD (  10.01  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 MIME_BASE64_TEXT       RAW: Message text disguised using base64
 encoding
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

A common delay function is introduced in UFS core driver, thus
ufs-mediatek can use it to replace all delay codes.

Signed-off-by: Stanley Chu <stanley.chu@mediatek.com>
---
 drivers/scsi/ufs/ufs-mediatek.c | 21 +++++----------------
 1 file changed, 5 insertions(+), 16 deletions(-)

diff --git a/drivers/scsi/ufs/ufs-mediatek.c b/drivers/scsi/ufs/ufs-mediatek.c
index 3b0e575d7460..0ff6781654fd 100644
--- a/drivers/scsi/ufs/ufs-mediatek.c
+++ b/drivers/scsi/ufs/ufs-mediatek.c
@@ -100,17 +100,6 @@ static int ufs_mtk_bind_mphy(struct ufs_hba *hba)
 	return err;
 }
 
-static void ufs_mtk_udelay(unsigned long us)
-{
-	if (!us)
-		return;
-
-	if (us < 10)
-		udelay(us);
-	else
-		usleep_range(us, us + 10);
-}
-
 static int ufs_mtk_setup_ref_clk(struct ufs_hba *hba, bool on)
 {
 	struct ufs_mtk_host *host = ufshcd_get_variant(hba);
@@ -123,7 +112,7 @@ static int ufs_mtk_setup_ref_clk(struct ufs_hba *hba, bool on)
 
 	if (on) {
 		ufs_mtk_ref_clk_notify(on, res);
-		ufs_mtk_udelay(host->ref_clk_ungating_wait_us);
+		ufshcd_wait_us(host->ref_clk_ungating_wait_us, 10, true);
 		ufshcd_writel(hba, REFCLK_REQUEST, REG_UFS_REFCLK_CTRL);
 	} else {
 		ufshcd_writel(hba, REFCLK_RELEASE, REG_UFS_REFCLK_CTRL);
@@ -138,7 +127,7 @@ static int ufs_mtk_setup_ref_clk(struct ufs_hba *hba, bool on)
 		if (((value & REFCLK_ACK) >> 1) == (value & REFCLK_REQUEST))
 			goto out;
 
-		usleep_range(100, 200);
+		ufshcd_wait_us(100, 100, true);
 	} while (time_before(jiffies, timeout));
 
 	dev_err(hba->dev, "missing ack of refclk req, reg: 0x%x\n", value);
@@ -150,7 +139,7 @@ static int ufs_mtk_setup_ref_clk(struct ufs_hba *hba, bool on)
 out:
 	host->ref_clk_enabled = on;
 	if (!on) {
-		ufs_mtk_udelay(host->ref_clk_gating_wait_us);
+		ufshcd_wait_us(host->ref_clk_gating_wait_us, 10, true);
 		ufs_mtk_ref_clk_notify(on, res);
 	}
 
@@ -430,12 +419,12 @@ static void ufs_mtk_device_reset(struct ufs_hba *hba)
 	 *
 	 * To be on safe side, keep the reset low for at least 10us.
 	 */
-	usleep_range(10, 15);
+	ufshcd_wait_us(10, 5, true);
 
 	ufs_mtk_device_reset_ctrl(1, res);
 
 	/* Some devices may need time to respond to rst_n */
-	usleep_range(10000, 15000);
+	ufshcd_wait_us(10000, 5000, true);
 
 	dev_info(hba->dev, "device reset done\n");
 }
-- 
2.18.0
_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
