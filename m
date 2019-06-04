Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E8E83440C
	for <lists+linux-mediatek@lfdr.de>; Tue,  4 Jun 2019 12:14:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7w8EqcJREIfczajQ10MGJuuTeDaeO2nuf9CT0vIN8ok=; b=PszYMZt6A3ALIA
	dvkuLWQoV2h8HQSW7nJn9ZUirc2aDafLCzPnUXUEIxuj34gOJpHIh3nF5wQcdI2fduirdjXj9iIcr
	qJ6s7HnnYqd8SV57oHP+YVuj156KuMmQ2N+eNWZhutN/mWqNjOdPBLYcLto4eAPZ83EpVRqjYLLri
	i7adP8o4fAmMrLA3kOLOEhxLbsGXUsJqfyL7IiTymulWH6aSBpbkaoc+a3BWCawIOZJlgI6sNDjsx
	tU4aPvATE0nLBPV1hQfFKZtcUVeMlvb2cV4wxfCJ56Pdw3F3pM78P3DIq7K7fAah/gHntfbEaF5hI
	sgl8ZC/BGnlkNxnEruig==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hY6SQ-0000hF-C5; Tue, 04 Jun 2019 10:14:18 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hY6RW-0007kZ-7j; Tue, 04 Jun 2019 10:13:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=Content-Type:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=X82u0k5Tt+0WfEI1nYZg4HT5FFOfhfBLzKE7JXG2HsI=; b=HbuhRQlewU9AtFHxXmHBVQ+3V
 XsA6CA3LcKgUhPr1ioqhmCXVYAa394jBE4v3myLGp1dLudyybZnSlqAngq0oTrYM55lRJYJAWEZUN
 MIXe6Xv/3B1y6ercRB6xjsiHDFllfSI67WMgK6CIyh9VWWyQMGobDn0Ueh4t1OoFJFF1Pi+wD0DVX
 w/P/9LNE4uX51K87gx/4++gPLkiAXQHnMlZc40G3Mu5qLgF1rccn7Z4ob0Ph/0/dHkJxz/cYR6DN7
 S7eS2Cnme8245IYF6aSuZKGkT9TQHiQeT8hasnX+UKB9fyEeX0TU1869HWWOLKUNyriFtPeu2+qGi
 nJl0pk8gQ==;
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by merlin.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hY6RT-0003Us-9N; Tue, 04 Jun 2019 10:13:20 +0000
X-UUID: 4ba7d121cde040a7812f5ba1c30ced96-20190604
X-UUID: 4ba7d121cde040a7812f5ba1c30ced96-20190604
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw02.mediatek.com
 (envelope-from <stu.hsieh@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 2016854775; Tue, 04 Jun 2019 02:12:05 -0800
Received: from MTKMBS01N1.mediatek.inc (172.21.101.68) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 4 Jun 2019 03:12:04 -0700
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs01n1.mediatek.inc (172.21.101.68) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 4 Jun 2019 18:12:01 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Tue, 4 Jun 2019 18:12:01 +0800
From: Stu Hsieh <stu.hsieh@mediatek.com>
To: Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring
 <robh+dt@kernel.org>, CK Hu <ck.hu@mediatek.com>
Subject: [PATCH v4 13/14] [media] mtk-mipicsi: add debugfs for mipicsi driver
Date: Tue, 4 Jun 2019 18:11:54 +0800
Message-ID: <1559643115-15124-14-git-send-email-stu.hsieh@mediatek.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1559643115-15124-1-git-send-email-stu.hsieh@mediatek.com>
References: <1559643115-15124-1-git-send-email-stu.hsieh@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190604_061319_459959_98FA293F 
X-CRM114-Status: GOOD (  18.57  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on merlin.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 srv_heupstream@mediatek.com, linux-kernel@vger.kernel.org,
 linux-mediatek@lists.infradead.org, Stu Hsieh <stu.hsieh@mediatek.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

This patch add debugfs for mipicsi driver.

Signed-off-by: Stu Hsieh <stu.hsieh@mediatek.com>
---
 .../media/platform/mtk-mipicsi/mtk_mipicsi.c  | 68 ++++++++++++++++++-
 1 file changed, 67 insertions(+), 1 deletion(-)

diff --git a/drivers/media/platform/mtk-mipicsi/mtk_mipicsi.c b/drivers/media/platform/mtk-mipicsi/mtk_mipicsi.c
index b291c95bbf0e..9b5983b39f2b 100644
--- a/drivers/media/platform/mtk-mipicsi/mtk_mipicsi.c
+++ b/drivers/media/platform/mtk-mipicsi/mtk_mipicsi.c
@@ -50,6 +50,7 @@
 #include <soc/mediatek/smi.h>
 #include <linux/regmap.h>
 #include <linux/mfd/syscon.h>
+#include <linux/debugfs.h>
 
 #define MTK_MIPICSI_DRV_NAME "mtk-mipicsi"
 #define MTK_PLATFORM_STR "platform:mt2712"
@@ -78,6 +79,7 @@
 #define SENINF_NCSI2_INT_EN				0xB0
 #define SENINF_NCSI2_INT_STATUS				0xB4
 #define SENINF_NCSI2_DBG_SEL				0xB8
+#define SENINF_NCSI2_DBG_PORT				0xBC
 #define SENINF_NCSI2_HSRX_DBG				0xD8
 #define SENINF_NCSI2_DI					0xDC
 #define SENINF_NCSI2_DI_CTRL				0xE4
@@ -87,6 +89,7 @@
 #define SENINF_TOP_MUX					0x08
 
 #define SENINF_MUX_CTRL					0x00
+#define SENINF_MUX_DEBUG_2				0x14
 
 #define CAMSV_MODULE_EN					0x10
 #define CAMSV_FMT_SEL					0x14
@@ -108,6 +111,8 @@
 #define IMGO_STRIDE					0x238
 #define DMA_FRAME_HEADER_EN				0xE00
 
+#define CONFIG_DEBUG_FS 1
+
 #define notifier_to_mipicsi(n) container_of(n, struct mtk_mipicsi_dev, \
 					    notifier)
 static int mtk_mipicsi_dbg_level;
@@ -184,7 +189,9 @@ struct mtk_mipicsi_dev {
 	spinlock_t		irqlock;
 	spinlock_t		queue_lock;
 	struct mutex		lock;
-
+#ifdef CONFIG_DEBUG_FS
+	struct dentry *mtk_mipicsi_debugfs;
+#endif
 };
 
 static const struct mtk_format mtk_mipicsi_formats[] = {
@@ -207,12 +214,56 @@ static const struct mtk_format mtk_mipicsi_formats[] = {
 },
 };
 
+#ifdef CONFIG_DEBUG_FS
+static ssize_t mtk_mipicsi_debug_read(struct file *file, char __user *user_buf,
+			      size_t count, loff_t *ppos)
+{
+	struct device *dev = file->private_data;
+	struct mtk_mipicsi_dev *mipicsi = dev_get_drvdata(dev);
+	struct mtk_mipicsi_channel *ch = mipicsi->channel;
+	u32 int_val;
+	u32 dbg_port;
+	u32 cnt_val;
+	u32 hcnt;
+	u32 vcnt;
+	char buf[256];
+	char cnt_info[150];
+	int i;
+
+	int_val = readl(mipicsi->seninf + SENINF_NCSI2_INT_STATUS);
+	dbg_port = readl(mipicsi->seninf + SENINF_NCSI2_DBG_PORT);
+	memset(buf, 0, sizeof(buf));
+	snprintf(buf, sizeof(buf), "%s\nSENINF_NCSI2_INT_STATUS: 0x%X\n"
+		"SENINF_NCSI2_DBG_PORT: 0x%X\n",
+		dev_name(dev), int_val, dbg_port);
+
+	for (i = 0; i < mipicsi->camsv_num; ++i) {
+		cnt_val = readl(ch[i].seninf_mux + SENINF_MUX_DEBUG_2);
+		hcnt = (cnt_val >> 16) & 0xFFFF;
+		vcnt = cnt_val & 0xFFFF;
+		memset(cnt_info, 0, sizeof(cnt_info));
+		snprintf(cnt_info, sizeof(cnt_info),
+			"HCNT[%d]: 0x%X\n"
+			"VCNT[%d]: 0x%X\n",
+			i, hcnt, i, vcnt);
+		strcat(buf, cnt_info);
+	}
+
+	return simple_read_from_buffer(user_buf, count, ppos, buf, strlen(buf));
+}
+static const struct file_operations mtk_mipicsi_debug_fops = {
+	.open = simple_open,
+	.read = mtk_mipicsi_debug_read,
+};
+#endif /* CONFIG_DEBUG_FS */
+
 static int get_subdev_link(struct mtk_mipicsi_dev *mipicsi,
 	unsigned int *link, u8 *link_reg_val)
 {
 	struct device *dev = &mipicsi->pdev->dev;
 	struct mtk_mipicsi_subdev *sd = &mipicsi->mipicsi_sd;
 
+
 	if (sd->max_vc == 1) {
 		*link = 1;
 		*link_reg_val = 0x1;
@@ -1574,6 +1625,16 @@ static int mtk_mipicsi_probe(struct platform_device *pdev)
 		goto clean;
 	}
 
+#ifdef CONFIG_DEBUG_FS
+	mipicsi->mtk_mipicsi_debugfs =
+		debugfs_create_file(mipicsi->drv_name, 0444, NULL,
+			(void *)(&pdev->dev), &mtk_mipicsi_debug_fops);
+	if (mipicsi->mtk_mipicsi_debugfs == NULL) {
+		dev_err(&pdev->dev, "debugfs_create_file fail\n");
+		goto clean;
+	}
+#endif
+
 	dev_set_drvdata(&pdev->dev, mipicsi);
 
 	dev_info(&pdev->dev, "probe done\n");
@@ -1591,6 +1652,11 @@ static int mtk_mipicsi_probe(struct platform_device *pdev)
 
 static int mtk_mipicsi_remove(struct platform_device *pdev)
 {
+#ifdef CONFIG_DEBUG_FS
+	struct mtk_mipicsi_dev *mipicsi = dev_get_drvdata(&pdev->dev);
+
+	debugfs_remove(mipicsi->mtk_mipicsi_debugfs);
+#endif
 	pm_runtime_disable(&pdev->dev);
 
 	return 0;
-- 
2.18.0


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
