Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 037D564732
	for <lists+linux-mediatek@lfdr.de>; Wed, 10 Jul 2019 15:41:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SSEsszMraXeXWtmb++aELSgmovvZeRD8E5iKP/cMlzk=; b=q51UORBnGuQe3B
	wtTDih9KgOqznqok4eWsvzmAo4PYfXaPAGcPEfDKKcjY0d+84VjO1fVcA63yXBpcf8JTk34DT6wFb
	mW77sPW2UTtgoYvrzuYZ+LolSoNjgg9riBJs2z9Afhvm6rvCcpkk+dpAX4EK3XgdrTqRUNQUcqj+B
	XD59V6Wc6u/4k8hEPA/0Z+SwY67ySDelMk/QV6ZrDTmwNuEeR7zAOzglAn///kw/yWrVT3vzNb3KA
	eydduiEbLFFELbVaDnnG4swQB6G5FJd4ceb/hJAx4h6P1FClaMOMpe65mDZQoF47YjsQywf0AbGNg
	qpvLcxIWfwItTHWegsqw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hlCqN-0000q7-Ah; Wed, 10 Jul 2019 13:41:11 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlCnt-0006bA-I8; Wed, 10 Jul 2019 13:38:39 +0000
X-UUID: 9c934de25a1046fd867b4320e28d10e7-20190710
X-UUID: 9c934de25a1046fd867b4320e28d10e7-20190710
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <stanley.chu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 176849385; Wed, 10 Jul 2019 05:38:33 -0800
Received: from MTKMBS01N1.mediatek.inc (172.21.101.68) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 10 Jul 2019 06:38:31 -0700
Received: from mtkcas09.mediatek.inc (172.21.101.178) by
 mtkmbs01n1.mediatek.inc (172.21.101.68) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 10 Jul 2019 21:38:23 +0800
Received: from mtkswgap22.mediatek.inc (172.21.77.33) by mtkcas09.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Wed, 10 Jul 2019 21:38:23 +0800
From: Stanley Chu <stanley.chu@mediatek.com>
To: <linux-scsi@vger.kernel.org>, <martin.petersen@oracle.com>,
 <avri.altman@wdc.com>, <alim.akhtar@samsung.com>, <pedrom.sousa@synopsys.com>
Subject: [PATCH v3 1/4] scsi: ufs: Change names related to error history
Date: Wed, 10 Jul 2019 21:38:18 +0800
Message-ID: <1562765901-18328-2-git-send-email-stanley.chu@mediatek.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <1562765901-18328-1-git-send-email-stanley.chu@mediatek.com>
References: <1562765901-18328-1-git-send-email-stanley.chu@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190710_063837_626561_7B1605F0 
X-CRM114-Status: GOOD (  11.72  )
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
Cc: sthumma@codeaurora.org, marc.w.gonzalez@free.fr, andy.teng@mediatek.com,
 chun-hung.wu@mediatek.com, kuohong.wang@mediatek.com, peter.wang@mediatek.com,
 evgreen@chromium.org, subhashj@codeaurora.org,
 linux-mediatek@lists.infradead.org, ygardi@codeaurora.org,
 matthias.bgg@gmail.com, Stanley Chu <stanley.chu@mediatek.com>,
 linux-arm-kernel@lists.infradead.org, beanhuo@micron.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Remove "uic" term in below error history functions and structures
for more general usages,

struct ufs_uic_err_reg_hist;
void ufshcd_update_uic_reg_hist(struct ufs_uic_err_reg_hist *reg_hist,
	u32 reg);
void ufshcd_print_uic_err_hist(struct ufs_hba *hba,
	struct ufs_uic)err_reg_hist *err_hist, char *err_name);

Signed-off-by: Stanley Chu <stanley.chu@mediatek.com>
Reviewed-by: Avri Altman <avri.altman@wdc.com>
---
 drivers/scsi/ufs/ufshcd.c | 39 ++++++++++++++++++++-------------------
 drivers/scsi/ufs/ufshcd.h | 20 ++++++++++----------
 2 files changed, 30 insertions(+), 29 deletions(-)

diff --git a/drivers/scsi/ufs/ufshcd.c b/drivers/scsi/ufs/ufshcd.c
index a208589426b1..eb062aba0d21 100644
--- a/drivers/scsi/ufs/ufshcd.c
+++ b/drivers/scsi/ufs/ufshcd.c
@@ -390,14 +390,15 @@ static void ufshcd_print_clk_freqs(struct ufs_hba *hba)
 	}
 }
 
-static void ufshcd_print_uic_err_hist(struct ufs_hba *hba,
-		struct ufs_uic_err_reg_hist *err_hist, char *err_name)
+static void ufshcd_print_err_hist(struct ufs_hba *hba,
+				  struct ufs_err_reg_hist *err_hist,
+				  char *err_name)
 {
 	int i;
 	bool found = false;
 
-	for (i = 0; i < UIC_ERR_REG_HIST_LENGTH; i++) {
-		int p = (i + err_hist->pos) % UIC_ERR_REG_HIST_LENGTH;
+	for (i = 0; i < UFS_ERR_REG_HIST_LENGTH; i++) {
+		int p = (i + err_hist->pos) % UFS_ERR_REG_HIST_LENGTH;
 
 		if (err_hist->reg[p] == 0)
 			continue;
@@ -407,7 +408,7 @@ static void ufshcd_print_uic_err_hist(struct ufs_hba *hba,
 	}
 
 	if (!found)
-		dev_err(hba->dev, "No record of %s uic errors\n", err_name);
+		dev_err(hba->dev, "No record of %s errors\n", err_name);
 }
 
 static void ufshcd_print_host_regs(struct ufs_hba *hba)
@@ -423,11 +424,11 @@ static void ufshcd_print_host_regs(struct ufs_hba *hba)
 		ktime_to_us(hba->ufs_stats.last_hibern8_exit_tstamp),
 		hba->ufs_stats.hibern8_exit_cnt);
 
-	ufshcd_print_uic_err_hist(hba, &hba->ufs_stats.pa_err, "pa_err");
-	ufshcd_print_uic_err_hist(hba, &hba->ufs_stats.dl_err, "dl_err");
-	ufshcd_print_uic_err_hist(hba, &hba->ufs_stats.nl_err, "nl_err");
-	ufshcd_print_uic_err_hist(hba, &hba->ufs_stats.tl_err, "tl_err");
-	ufshcd_print_uic_err_hist(hba, &hba->ufs_stats.dme_err, "dme_err");
+	ufshcd_print_err_hist(hba, &hba->ufs_stats.pa_err, "pa_err");
+	ufshcd_print_err_hist(hba, &hba->ufs_stats.dl_err, "dl_err");
+	ufshcd_print_err_hist(hba, &hba->ufs_stats.nl_err, "nl_err");
+	ufshcd_print_err_hist(hba, &hba->ufs_stats.tl_err, "tl_err");
+	ufshcd_print_err_hist(hba, &hba->ufs_stats.dme_err, "dme_err");
 
 	ufshcd_print_clk_freqs(hba);
 
@@ -5346,12 +5347,12 @@ static void ufshcd_err_handler(struct work_struct *work)
 	pm_runtime_put_sync(hba->dev);
 }
 
-static void ufshcd_update_uic_reg_hist(struct ufs_uic_err_reg_hist *reg_hist,
-		u32 reg)
+static void ufshcd_update_reg_hist(struct ufs_err_reg_hist *reg_hist,
+				   u32 reg)
 {
 	reg_hist->reg[reg_hist->pos] = reg;
 	reg_hist->tstamp[reg_hist->pos] = ktime_get();
-	reg_hist->pos = (reg_hist->pos + 1) % UIC_ERR_REG_HIST_LENGTH;
+	reg_hist->pos = (reg_hist->pos + 1) % UFS_ERR_REG_HIST_LENGTH;
 }
 
 /**
@@ -5372,13 +5373,13 @@ static void ufshcd_update_uic_error(struct ufs_hba *hba)
 		 * must be checked but this error is handled separately.
 		 */
 		dev_dbg(hba->dev, "%s: UIC Lane error reported\n", __func__);
-		ufshcd_update_uic_reg_hist(&hba->ufs_stats.pa_err, reg);
+		ufshcd_update_reg_hist(&hba->ufs_stats.pa_err, reg);
 	}
 
 	/* PA_INIT_ERROR is fatal and needs UIC reset */
 	reg = ufshcd_readl(hba, REG_UIC_ERROR_CODE_DATA_LINK_LAYER);
 	if (reg)
-		ufshcd_update_uic_reg_hist(&hba->ufs_stats.dl_err, reg);
+		ufshcd_update_reg_hist(&hba->ufs_stats.dl_err, reg);
 
 	if (reg & UIC_DATA_LINK_LAYER_ERROR_PA_INIT)
 		hba->uic_error |= UFSHCD_UIC_DL_PA_INIT_ERROR;
@@ -5394,19 +5395,19 @@ static void ufshcd_update_uic_error(struct ufs_hba *hba)
 	/* UIC NL/TL/DME errors needs software retry */
 	reg = ufshcd_readl(hba, REG_UIC_ERROR_CODE_NETWORK_LAYER);
 	if (reg) {
-		ufshcd_update_uic_reg_hist(&hba->ufs_stats.nl_err, reg);
+		ufshcd_update_reg_hist(&hba->ufs_stats.nl_err, reg);
 		hba->uic_error |= UFSHCD_UIC_NL_ERROR;
 	}
 
 	reg = ufshcd_readl(hba, REG_UIC_ERROR_CODE_TRANSPORT_LAYER);
 	if (reg) {
-		ufshcd_update_uic_reg_hist(&hba->ufs_stats.tl_err, reg);
+		ufshcd_update_reg_hist(&hba->ufs_stats.tl_err, reg);
 		hba->uic_error |= UFSHCD_UIC_TL_ERROR;
 	}
 
 	reg = ufshcd_readl(hba, REG_UIC_ERROR_CODE_DME);
 	if (reg) {
-		ufshcd_update_uic_reg_hist(&hba->ufs_stats.dme_err, reg);
+		ufshcd_update_reg_hist(&hba->ufs_stats.dme_err, reg);
 		hba->uic_error |= UFSHCD_UIC_DME_ERROR;
 	}
 
@@ -6682,7 +6683,7 @@ static void ufshcd_tune_unipro_params(struct ufs_hba *hba)
 
 static void ufshcd_clear_dbg_ufs_stats(struct ufs_hba *hba)
 {
-	int err_reg_hist_size = sizeof(struct ufs_uic_err_reg_hist);
+	int err_reg_hist_size = sizeof(struct ufs_err_reg_hist);
 
 	hba->ufs_stats.hibern8_exit_cnt = 0;
 	hba->ufs_stats.last_hibern8_exit_tstamp = ktime_set(0, 0);
diff --git a/drivers/scsi/ufs/ufshcd.h b/drivers/scsi/ufs/ufshcd.h
index 994d73d03207..dcc61f857c38 100644
--- a/drivers/scsi/ufs/ufshcd.h
+++ b/drivers/scsi/ufs/ufshcd.h
@@ -412,17 +412,17 @@ struct ufs_init_prefetch {
 	u32 icc_level;
 };
 
-#define UIC_ERR_REG_HIST_LENGTH 8
+#define UFS_ERR_REG_HIST_LENGTH 8
 /**
- * struct ufs_uic_err_reg_hist - keeps history of uic errors
+ * struct ufs_err_reg_hist - keeps history of uic errors
  * @pos: index to indicate cyclic buffer position
  * @reg: cyclic buffer for registers value
  * @tstamp: cyclic buffer for time stamp
  */
-struct ufs_uic_err_reg_hist {
+struct ufs_err_reg_hist {
 	int pos;
-	u32 reg[UIC_ERR_REG_HIST_LENGTH];
-	ktime_t tstamp[UIC_ERR_REG_HIST_LENGTH];
+	u32 reg[UFS_ERR_REG_HIST_LENGTH];
+	ktime_t tstamp[UFS_ERR_REG_HIST_LENGTH];
 };
 
 /**
@@ -440,11 +440,11 @@ struct ufs_uic_err_reg_hist {
 struct ufs_stats {
 	u32 hibern8_exit_cnt;
 	ktime_t last_hibern8_exit_tstamp;
-	struct ufs_uic_err_reg_hist pa_err;
-	struct ufs_uic_err_reg_hist dl_err;
-	struct ufs_uic_err_reg_hist nl_err;
-	struct ufs_uic_err_reg_hist tl_err;
-	struct ufs_uic_err_reg_hist dme_err;
+	struct ufs_err_reg_hist pa_err;
+	struct ufs_err_reg_hist dl_err;
+	struct ufs_err_reg_hist nl_err;
+	struct ufs_err_reg_hist tl_err;
+	struct ufs_err_reg_hist dme_err;
 };
 
 /**
-- 
2.18.0


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
