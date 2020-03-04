Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5012417882A
	for <lists+linux-mediatek@lfdr.de>; Wed,  4 Mar 2020 03:21:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=AMdzAqzOO04lJPJ748BE7jQ0MHbjk+dhlPSuaV4teSs=; b=FGJ22SQrrzkigu
	p2DlSDgA9RvNkRfViW/nYLw9mcvvWdmZdom44y/SXWsgz+w7iY4Urwnx84dO0OM7BDishxnV+aDn5
	oNqMW3Nnvclk6flcLfKbm5ZzF2rz8jlojQYvv6BbXMOPiXYA9T8N457JiefKkBbEiZmdi0VLjMWA3
	ZlF5auUw1XjZK7/LgO7hWZ2lrDVKxMhyxeNFFMpwuzgL4FRsSFIkuwoSvvW4hb0dMREOoFu4mKXkv
	PeyLTk4+v1UMIP/BWzhadKYq7pnRAbaJnw/paFAeAevHB6zC6W7+BEMo8EicLEfhZn/LoK826rvag
	qlk99CHCcqcGtP8hfJZQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9JfC-00063e-RK; Wed, 04 Mar 2020 02:21:34 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9Jf9-00062D-D9; Wed, 04 Mar 2020 02:21:33 +0000
X-UUID: 6444003239c44345b3d40cf00ab90b49-20200303
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Date:Subject:CC:To:From;
 bh=Dm2V6GDWvlxQSEubyRoFN1pLie+rFhFwHaZFOLLiCqw=; 
 b=iyv4DQGAgUhykmexFoEHsa+5g7ZRs/voyb4EhescE6Mha12o3MgyFqBvQbWDpv2bX9/hDyD2MqAfQRwzUO7iTdekXVy76Do0Hh6kp7gsh4D4AUuP7C5mKI0WkxitFUWpUufYBLcIMV1KZo/dgRTv/l+Ewpf1ZHmKTzLmUQjFdn8=;
X-UUID: 6444003239c44345b3d40cf00ab90b49-20200303
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw01.mediatek.com
 (envelope-from <stanley.chu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 2098469868; Tue, 03 Mar 2020 18:21:25 -0800
Received: from MTKMBS02N2.mediatek.inc (172.21.101.101) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 3 Mar 2020 18:22:41 -0800
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 mtkmbs02n2.mediatek.inc (172.21.101.101) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 4 Mar 2020 10:18:34 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Wed, 4 Mar 2020 10:18:44 +0800
From: Stanley Chu <stanley.chu@mediatek.com>
To: <linux-scsi@vger.kernel.org>, <ebiggers@kernel.org>,
 <martin.petersen@oracle.com>, <avri.altman@wdc.com>,
 <alim.akhtar@samsung.com>, <jejb@linux.ibm.com>
Subject: [RFC PATCH v2] scsi: ufs-mediatek: add inline encryption support
Date: Wed, 4 Mar 2020 10:21:02 +0800
Message-ID: <20200304022101.14165-1-stanley.chu@mediatek.com>
X-Mailer: git-send-email 2.18.0
MIME-Version: 1.0
X-TM-SNTS-SMTP: 6FCB616A2934E695AB18D81FA70BEAADA050A97D3BDBD961B702E6F8CF1085B92000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200303_182131_455349_B745D7C7 
X-CRM114-Status: GOOD (  12.21  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: andy.teng@mediatek.com, chun-hung.wu@mediatek.com,
 kuohong.wang@mediatek.com, linux-kernel@vger.kernel.org,
 light.hsieh@mediatek.com, satyat@google.com, linux-fscrypt@vger.kernel.org,
 cang@codeaurora.org, linux-mediatek@lists.infradead.org,
 peter.wang@mediatek.com, matthias.bgg@gmail.com,
 Stanley Chu <stanley.chu@mediatek.com>, linux-arm-kernel@lists.infradead.org,
 beanhuo@micron.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Add inline encryption support to ufs-mediatek.

The standards-compliant parts, such as querying the crypto capabilities
and enabling crypto for individual UFS requests, are already handled by
ufshcd-crypto.c, which itself is wired into the blk-crypto framework.

However MediaTek UFS host requires a vendor-specific hce_enable operation
to allow crypto-related registers being accessed normally in kernel.
After this step, MediaTek UFS host can work as standard-compliant host
for inline-encryption related functions.

This patch is rebased to below repo and tag:
	Repo: https://git.kernel.org/pub/scm/fs/fscrypt/fscrypt.git
	Tag: inline-encryption-v7

Signed-off-by: Stanley Chu <stanley.chu@mediatek.com>
---
 drivers/scsi/ufs/ufs-mediatek.c | 27 ++++++++++++++++++++++++++-
 drivers/scsi/ufs/ufs-mediatek.h |  1 +
 2 files changed, 27 insertions(+), 1 deletion(-)

diff --git a/drivers/scsi/ufs/ufs-mediatek.c b/drivers/scsi/ufs/ufs-mediatek.c
index 53eae5fe2ade..12d01fd3d5e1 100644
--- a/drivers/scsi/ufs/ufs-mediatek.c
+++ b/drivers/scsi/ufs/ufs-mediatek.c
@@ -15,6 +15,7 @@
 #include <linux/soc/mediatek/mtk_sip_svc.h>
 
 #include "ufshcd.h"
+#include "ufshcd-crypto.h"
 #include "ufshcd-pltfrm.h"
 #include "ufs_quirks.h"
 #include "unipro.h"
@@ -24,6 +25,9 @@
 	arm_smccc_smc(MTK_SIP_UFS_CONTROL, \
 		      cmd, val, 0, 0, 0, 0, 0, &(res))
 
+#define ufs_mtk_crypto_ctrl(res, enable) \
+	ufs_mtk_smc(UFS_MTK_SIP_CRYPTO_CTRL, enable, res)
+
 #define ufs_mtk_ref_clk_notify(on, res) \
 	ufs_mtk_smc(UFS_MTK_SIP_REF_CLK_NOTIFICATION, on, res)
 
@@ -66,7 +70,27 @@ static void ufs_mtk_cfg_unipro_cg(struct ufs_hba *hba, bool enable)
 	}
 }
 
-static int ufs_mtk_bind_mphy(struct ufs_hba *hba)
+static void ufs_mtk_crypto_enable(struct ufs_hba *hba)
+{
+	struct arm_smccc_res res;
+
+	ufs_mtk_crypto_ctrl(res, 1);
+	if (res.a0) {
+		dev_info(hba->dev, "%s: crypto enable failed, err: %lu\n",
+			 __func__, res.a0);
+	}
+}
+
+static int ufs_mtk_hce_enable_notify(struct ufs_hba *hba,
+				     enum ufs_notify_change_status status)
+{
+	if (status == PRE_CHANGE && ufshcd_hba_is_crypto_supported(hba))
+		ufs_mtk_crypto_enable(hba);
+
+	return 0;
+}
+
+int ufs_mtk_bind_mphy(struct ufs_hba *hba)
 {
 	struct ufs_mtk_host *host = ufshcd_get_variant(hba);
 	struct device *dev = hba->dev;
@@ -494,6 +518,7 @@ static struct ufs_hba_variant_ops ufs_hba_mtk_vops = {
 	.name                = "mediatek.ufshci",
 	.init                = ufs_mtk_init,
 	.setup_clocks        = ufs_mtk_setup_clocks,
+	.hce_enable_notify   = ufs_mtk_hce_enable_notify,
 	.link_startup_notify = ufs_mtk_link_startup_notify,
 	.pwr_change_notify   = ufs_mtk_pwr_change_notify,
 	.apply_dev_quirks    = ufs_mtk_apply_dev_quirks,
diff --git a/drivers/scsi/ufs/ufs-mediatek.h b/drivers/scsi/ufs/ufs-mediatek.h
index fccdd979d6fb..5ebaa59898bf 100644
--- a/drivers/scsi/ufs/ufs-mediatek.h
+++ b/drivers/scsi/ufs/ufs-mediatek.h
@@ -58,6 +58,7 @@
  */
 #define MTK_SIP_UFS_CONTROL               MTK_SIP_SMC_CMD(0x276)
 #define UFS_MTK_SIP_DEVICE_RESET          BIT(1)
+#define UFS_MTK_SIP_CRYPTO_CTRL           BIT(2)
 #define UFS_MTK_SIP_REF_CLK_NOTIFICATION  BIT(3)
 
 /*
-- 
2.18.0
_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
