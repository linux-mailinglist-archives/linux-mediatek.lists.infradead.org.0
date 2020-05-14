Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ACAD11D345B
	for <lists+linux-mediatek@lfdr.de>; Thu, 14 May 2020 17:04:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rgnGShmTRAmI5pGiGYy8h7uoYw4m2QgTA2poVBakBhA=; b=liszOuKDzUd0d7
	JE7SfJi13y6AGB45J2PtJhWHCBl979neXaUxT0WhnAgJHIxeAPtFsSL96mDM9T5Xw1vPXAtRjb4mI
	cj8NziUxvMKtAIYwZ9JtlpEbeKaLx/42+PxHGrxa9LhReUuG0RVuD6yNptI3rovHQl3L1nv9kZxl7
	QjPyQ5TZSPOGcKdGR5dfG2yyfg4VuXSKegM24X9GSpXDXK2kHkF8GBFj8JLGxS5D0XLYp2siJEUZN
	uJLhPBHoiG7LIODeeT9HjVLyQ3kr/LcBtRdIawQXa2ZPLb2/0c8yEuzLERBOG7UcgWkiwLEE1iBrg
	2giCho3OCVCATzndBBqg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZFP0-0000Or-SJ; Thu, 14 May 2020 15:04:02 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZFMe-0007E2-I6; Thu, 14 May 2020 15:01:43 +0000
X-UUID: 2bc1806141a1472699e0a2e69991ba8f-20200514
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From;
 bh=WOoU1J20WnftJm5Uc9Ijpskv9v6giRhPTTZph1ObLMg=; 
 b=bvLLMx1M5JEhNujKVdL+zoo26of9A07yXO5OdN6w0lZVjTF1/pAkuGfxY7fsMO1QXmq7iW+C+2QFEmEBvrmSb4AhQ1E1wsUGzYkpEQWhTBKcb0KceaA1BkfWti9CsTVkf5Tgx20iaw6FWcPUYziMcXTNZD2ydnT60s6rvul867E=;
X-UUID: 2bc1806141a1472699e0a2e69991ba8f-20200514
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw02.mediatek.com
 (envelope-from <stanley.chu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 78706445; Thu, 14 May 2020 07:01:35 -0800
Received: from mtkmbs08n2.mediatek.inc (172.21.101.56) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Thu, 14 May 2020 08:01:30 -0700
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs08n2.mediatek.inc (172.21.101.56) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Thu, 14 May 2020 23:01:21 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via
 Frontend Transport; Thu, 14 May 2020 23:01:21 +0800
From: Stanley Chu <stanley.chu@mediatek.com>
To: <linux-scsi@vger.kernel.org>, <martin.petersen@oracle.com>,
 <avri.altman@wdc.com>, <alim.akhtar@samsung.com>, <jejb@linux.ibm.com>,
 <asutoshd@codeaurora.org>
Subject: [PATCH v2 3/4] scsi: ufs: Fix index of attributes query for
 WriteBooster feature
Date: Thu, 14 May 2020 23:01:21 +0800
Message-ID: <20200514150122.32110-4-stanley.chu@mediatek.com>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <20200514150122.32110-1-stanley.chu@mediatek.com>
References: <20200514150122.32110-1-stanley.chu@mediatek.com>
MIME-Version: 1.0
X-TM-SNTS-SMTP: 3E30CCB28E20055115CF4585EE231E9519D13C42E32999B14E1AF7F55E75C3932000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200514_080136_603148_54A9D753 
X-CRM114-Status: GOOD (  11.36  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: bvanassche@acm.org, andy.teng@mediatek.com, chun-hung.wu@mediatek.com,
 kuohong.wang@mediatek.com, linux-kernel@vger.kernel.org, cang@codeaurora.org,
 linux-mediatek@lists.infradead.org, peter.wang@mediatek.com,
 matthias.bgg@gmail.com, Stanley Chu <stanley.chu@mediatek.com>,
 linux-arm-kernel@lists.infradead.org, beanhuo@micron.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

For WriteBooster feature related attributes, the index used by
query shall be LUN ID if LU Dedicated buffer mode is enabled.

Signed-off-by: Stanley Chu <stanley.chu@mediatek.com>
---
 drivers/scsi/ufs/ufs-sysfs.c | 13 +++++++++++--
 drivers/scsi/ufs/ufshcd.c    | 16 ++++++++++------
 drivers/scsi/ufs/ufshcd.h    |  2 +-
 3 files changed, 22 insertions(+), 9 deletions(-)

diff --git a/drivers/scsi/ufs/ufs-sysfs.c b/drivers/scsi/ufs/ufs-sysfs.c
index a0b3763e1dc2..2d71d232a69d 100644
--- a/drivers/scsi/ufs/ufs-sysfs.c
+++ b/drivers/scsi/ufs/ufs-sysfs.c
@@ -637,7 +637,7 @@ static ssize_t _name##_show(struct device *dev,				\
 	int ret;							\
 	struct ufs_hba *hba = dev_get_drvdata(dev);			\
 	if (ufshcd_is_wb_flags(QUERY_FLAG_IDN##_uname))			\
-		index = ufshcd_wb_get_flag_index(hba);			\
+		index = ufshcd_wb_get_query_index(hba);			\
 	pm_runtime_get_sync(hba->dev);					\
 	ret = ufshcd_query_flag(hba, UPIU_QUERY_OPCODE_READ_FLAG,	\
 		QUERY_FLAG_IDN##_uname, index, &flag);			\
@@ -680,6 +680,12 @@ static const struct attribute_group ufs_sysfs_flags_group = {
 	.attrs = ufs_sysfs_device_flags,
 };
 
+static inline bool ufshcd_is_wb_attrs(enum attr_idn idn)
+{
+	return ((idn >= QUERY_ATTR_IDN_WB_FLUSH_STATUS) &&
+		(idn <= QUERY_ATTR_IDN_CURR_WB_BUFF_SIZE));
+}
+
 #define UFS_ATTRIBUTE(_name, _uname)					\
 static ssize_t _name##_show(struct device *dev,				\
 	struct device_attribute *attr, char *buf)			\
@@ -687,9 +693,12 @@ static ssize_t _name##_show(struct device *dev,				\
 	struct ufs_hba *hba = dev_get_drvdata(dev);			\
 	u32 value;							\
 	int ret;							\
+	u8 index = 0;							\
+	if (ufshcd_is_wb_attrs(QUERY_ATTR_IDN##_uname))			\
+		index = ufshcd_wb_get_query_index(hba);			\
 	pm_runtime_get_sync(hba->dev);					\
 	ret = ufshcd_query_attr(hba, UPIU_QUERY_OPCODE_READ_ATTR,	\
-		QUERY_ATTR_IDN##_uname, 0, 0, &value);			\
+		QUERY_ATTR_IDN##_uname, index, 0, &value);		\
 	pm_runtime_put_sync(hba->dev);					\
 	if (ret)							\
 		return -EINVAL;						\
diff --git a/drivers/scsi/ufs/ufshcd.c b/drivers/scsi/ufs/ufshcd.c
index b298bdd3e697..169a3379e468 100644
--- a/drivers/scsi/ufs/ufshcd.c
+++ b/drivers/scsi/ufs/ufshcd.c
@@ -5212,7 +5212,7 @@ static int ufshcd_wb_ctrl(struct ufs_hba *hba, bool enable)
 	else
 		opcode = UPIU_QUERY_OPCODE_CLEAR_FLAG;
 
-	index = ufshcd_wb_get_flag_index(hba);
+	index = ufshcd_wb_get_query_index(hba);
 	ret = ufshcd_query_flag_retry(hba, opcode,
 				      QUERY_FLAG_IDN_WB_EN, index, NULL);
 	if (ret) {
@@ -5238,7 +5238,7 @@ static int ufshcd_wb_toggle_flush_during_h8(struct ufs_hba *hba, bool set)
 	else
 		val = UPIU_QUERY_OPCODE_CLEAR_FLAG;
 
-	index = ufshcd_wb_get_flag_index(hba);
+	index = ufshcd_wb_get_query_index(hba);
 	return ufshcd_query_flag_retry(hba, val,
 				QUERY_FLAG_IDN_WB_BUFF_FLUSH_DURING_HIBERN8,
 				index, NULL);
@@ -5261,7 +5261,7 @@ static int ufshcd_wb_buf_flush_enable(struct ufs_hba *hba)
 	if (!ufshcd_is_wb_allowed(hba) || hba->wb_buf_flush_enabled)
 		return 0;
 
-	index = ufshcd_wb_get_flag_index(hba);
+	index = ufshcd_wb_get_query_index(hba);
 	ret = ufshcd_query_flag_retry(hba, UPIU_QUERY_OPCODE_SET_FLAG,
 				      QUERY_FLAG_IDN_WB_BUFF_FLUSH_EN,
 				      index, NULL);
@@ -5283,7 +5283,7 @@ static int ufshcd_wb_buf_flush_disable(struct ufs_hba *hba)
 	if (!ufshcd_is_wb_allowed(hba) || !hba->wb_buf_flush_enabled)
 		return 0;
 
-	index = ufshcd_wb_get_flag_index(hba);
+	index = ufshcd_wb_get_query_index(hba);
 	ret = ufshcd_query_flag_retry(hba, UPIU_QUERY_OPCODE_CLEAR_FLAG,
 				      QUERY_FLAG_IDN_WB_BUFF_FLUSH_EN,
 				      index, NULL);
@@ -5303,10 +5303,12 @@ static bool ufshcd_wb_presrv_usrspc_keep_vcc_on(struct ufs_hba *hba,
 {
 	u32 cur_buf;
 	int ret;
+	u8 index;
 
+	index = ufshcd_wb_get_query_index(hba);
 	ret = ufshcd_query_attr_retry(hba, UPIU_QUERY_OPCODE_READ_ATTR,
 					      QUERY_ATTR_IDN_CURR_WB_BUFF_SIZE,
-					      0, 0, &cur_buf);
+					      index, 0, &cur_buf);
 	if (ret) {
 		dev_err(hba->dev, "%s dCurWriteBoosterBufferSize read failed %d\n",
 			__func__, ret);
@@ -5329,6 +5331,7 @@ static bool ufshcd_wb_keep_vcc_on(struct ufs_hba *hba)
 {
 	int ret;
 	u32 avail_buf;
+	u8 index;
 
 	if (!ufshcd_is_wb_allowed(hba))
 		return false;
@@ -5343,9 +5346,10 @@ static bool ufshcd_wb_keep_vcc_on(struct ufs_hba *hba)
 	 * buffer (dCurrentWriteBoosterBufferSize). There's no point in
 	 * keeping vcc on when current buffer is empty.
 	 */
+	index = ufshcd_wb_get_query_index(hba);
 	ret = ufshcd_query_attr_retry(hba, UPIU_QUERY_OPCODE_READ_ATTR,
 				      QUERY_ATTR_IDN_AVAIL_WB_BUFF_SIZE,
-				      0, 0, &avail_buf);
+				      index, 0, &avail_buf);
 	if (ret) {
 		dev_warn(hba->dev, "%s dAvailableWriteBoosterBufferSize read failed %d\n",
 			 __func__, ret);
diff --git a/drivers/scsi/ufs/ufshcd.h b/drivers/scsi/ufs/ufshcd.h
index 23a434c03c2a..ab0d180dad6c 100644
--- a/drivers/scsi/ufs/ufshcd.h
+++ b/drivers/scsi/ufs/ufshcd.h
@@ -861,7 +861,7 @@ static inline bool ufshcd_keep_autobkops_enabled_except_suspend(
 	return hba->caps & UFSHCD_CAP_KEEP_AUTO_BKOPS_ENABLED_EXCEPT_SUSPEND;
 }
 
-static inline u8 ufshcd_wb_get_flag_index(struct ufs_hba *hba)
+static inline u8 ufshcd_wb_get_query_index(struct ufs_hba *hba)
 {
 	if (hba->dev_info.b_wb_buffer_type == WB_BUF_MODE_LU_DEDICATED)
 		return hba->dev_info.wb_dedicated_lu;
-- 
2.18.0
_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
