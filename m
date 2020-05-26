Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DF4BB1C3DD2
	for <lists+linux-mediatek@lfdr.de>; Mon,  4 May 2020 16:59:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SLcD86Av3Q+9Fw0cQRWAoEQEicDT3A83f2Uo5Z82sVk=; b=ZEKUQDxkVMWkJv
	l2m0fvC/MD2iW5To7ZG0ttsxNOZKhNNVZs6bkQ9tqeIu0h7EtWMKJaoV9bNFeowmGGTAiOFjNfuUD
	UsQp0r2twy1qXGOhGyXk03IfJuD7U0oR9zvqaNlcMFdiuNbbL7GDt0qxZySBU63UJDWs2jjk8s2t3
	MB/mgV69IcrgFgDkTDgTPRJWZZXrpbhWRHVNWAThTtOexNsIoZxqvh7e4hMEu2DerV4XBNLXDCnTv
	3D858qkoXCZPqroRfyoPKo0nexaTXRGhPlsYgk0xQlpdF3/KnC57ls9fSZlb3sETZYcJBXQm+8OsN
	Br4m/ojZj6QVA2ei45wQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVcYf-0005cQ-8d; Mon, 04 May 2020 14:59:01 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVcWS-0003Kw-Np; Mon, 04 May 2020 14:56:47 +0000
X-UUID: e29fd7e7e06b4a4dafab022d5bd190e3-20200504
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From;
 bh=i0FzsfpTNA3ISziIiPIG4aqyoIUmD6rlIQ3hBf2gOAA=; 
 b=HbrD1ihmC/AQzYhm7vai7aGvqi7Z1uK9YCKuwwAGzxS8RBWw2ouePKZh4CIl1jYQCU6t7XvD6QKhltcSGIKjnP4bUs3TN9RAB68dDqEcqHki2qZ7NVbRGf0LnF75wASTuSQQxVih8w0PWm80ILyd1gFWVwtrrKQSi/oiobDtIaw=;
X-UUID: e29fd7e7e06b4a4dafab022d5bd190e3-20200504
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <stanley.chu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1243514771; Mon, 04 May 2020 06:56:32 -0800
Received: from MTKMBS02N2.mediatek.inc (172.21.101.101) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Mon, 4 May 2020 07:56:36 -0700
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 mtkmbs02n2.mediatek.inc (172.21.101.101) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Mon, 4 May 2020 22:56:26 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via
 Frontend Transport; Mon, 4 May 2020 22:56:26 +0800
From: Stanley Chu <stanley.chu@mediatek.com>
To: <linux-scsi@vger.kernel.org>, <martin.petersen@oracle.com>,
 <avri.altman@wdc.com>, <alim.akhtar@samsung.com>, <jejb@linux.ibm.com>,
 <asutoshd@codeaurora.org>
Subject: [PATCH v6 3/8] scsi: ufs: export ufs_fixup_device_setup() function
Date: Mon, 4 May 2020 22:56:17 +0800
Message-ID: <20200504145622.13895-4-stanley.chu@mediatek.com>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <20200504145622.13895-1-stanley.chu@mediatek.com>
References: <20200504145622.13895-1-stanley.chu@mediatek.com>
MIME-Version: 1.0
X-TM-SNTS-SMTP: 2B33CF8D6FE1F84FDDCC74114279B75D92A1088D4717E2F1AC1615FB2A26F5722000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200504_075645_051911_85393A6B 
X-CRM114-Status: UNSURE (   7.89  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 MIME_BASE64_TEXT       RAW: Message text disguised using base64
 encoding
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: bvanassche@acm.org, andy.teng@mediatek.com, chun-hung.wu@mediatek.com,
 kuohong.wang@mediatek.com, linux-kernel@vger.kernel.org, cang@codeaurora.org,
 linux-mediatek@lists.infradead.org, peter.wang@mediatek.com,
 matthias.bgg@gmail.com, Stanley Chu <stanley.chu@mediatek.com>,
 linux-arm-kernel@lists.infradead.org, beanhuo@micron.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Export ufs_fixup_device_setup() to allow vendors to re-use it for
fixing device quriks on specified UFS hosts.

Signed-off-by: Stanley Chu <stanley.chu@mediatek.com>
Reviewed-by: Avri Altman <avri.altman@wdc.com>
---
 drivers/scsi/ufs/ufshcd.c | 7 ++++---
 drivers/scsi/ufs/ufshcd.h | 4 +++-
 2 files changed, 7 insertions(+), 4 deletions(-)

diff --git a/drivers/scsi/ufs/ufshcd.c b/drivers/scsi/ufs/ufshcd.c
index fc1549f829cc..ba8185625109 100644
--- a/drivers/scsi/ufs/ufshcd.c
+++ b/drivers/scsi/ufs/ufshcd.c
@@ -6835,12 +6835,12 @@ static void ufshcd_wb_probe(struct ufs_hba *hba, u8 *desc_buf)
 	hba->caps &= ~UFSHCD_CAP_WB_EN;
 }
 
-static void ufs_fixup_device_setup(struct ufs_hba *hba)
+void ufshcd_fixup_device_setup(struct ufs_hba *hba, struct ufs_dev_fix *fixups)
 {
 	struct ufs_dev_fix *f;
 	struct ufs_dev_info *dev_info = &hba->dev_info;
 
-	for (f = ufs_fixups; f->quirk; f++) {
+	for (f = fixups; f->quirk; f++) {
 		if ((f->wmanufacturerid == dev_info->wmanufacturerid ||
 		     f->wmanufacturerid == UFS_ANY_VENDOR) &&
 		     ((dev_info->model &&
@@ -6849,6 +6849,7 @@ static void ufs_fixup_device_setup(struct ufs_hba *hba)
 			hba->dev_quirks |= f->quirk;
 	}
 }
+EXPORT_SYMBOL_GPL(ufshcd_fixup_device_setup);
 
 static int ufs_get_device_desc(struct ufs_hba *hba)
 {
@@ -6895,7 +6896,7 @@ static int ufs_get_device_desc(struct ufs_hba *hba)
 		goto out;
 	}
 
-	ufs_fixup_device_setup(hba);
+	ufshcd_fixup_device_setup(hba, ufs_fixups);
 	ufshcd_vops_fixup_dev_quirks(hba);
 
 	/*
diff --git a/drivers/scsi/ufs/ufshcd.h b/drivers/scsi/ufs/ufshcd.h
index 5fa03e0f3bd1..f34601121880 100644
--- a/drivers/scsi/ufs/ufshcd.h
+++ b/drivers/scsi/ufs/ufshcd.h
@@ -69,6 +69,7 @@
 #include <scsi/scsi_eh.h>
 
 #include "ufs.h"
+#include "ufs_quirks.h"
 #include "ufshci.h"
 
 #define UFSHCD "ufshcd"
@@ -951,7 +952,8 @@ int ufshcd_query_flag(struct ufs_hba *hba, enum query_opcode opcode,
 
 void ufshcd_auto_hibern8_enable(struct ufs_hba *hba);
 void ufshcd_auto_hibern8_update(struct ufs_hba *hba, u32 ahit);
-
+void ufshcd_fixup_device_setup(struct ufs_hba *hba,
+			       struct ufs_dev_fix *fixups);
 #define SD_ASCII_STD true
 #define SD_RAW false
 int ufshcd_read_string_desc(struct ufs_hba *hba, u8 desc_index,
-- 
2.18.0
_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
