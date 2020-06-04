Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E184F1EDE67
	for <lists+linux-mediatek@lfdr.de>; Thu,  4 Jun 2020 09:33:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Yfv0PsPPA+OMBr2y3UFPAc6rPnXqt46/xhjymavwfKQ=; b=PJJ0P3NCEJ1GqW
	HYKAsYqE+TiMxG0Vi4Tfktn7FCN/Vo76/rOFN/TMkVGvANGe3B2pNg0PbbKN1XedXhBNpDgb/3Gi2
	QZICasOloV83OScutEzT2Z8zVAZGANKILqO/MjzrYtNLUBXaXYJd6oXJThW1idRJBerTy52mICXR4
	1HZ4IBqG6AX4wKIhNrKIfg/Y4mpC93DpSQBkguIoRoNZ89AUk2YmXxl1njQ4+oznK7cI+ETGdsCtP
	BTsw/9vmXyKfMV0fKLT6iNtJEYT6REaCh1rCv3OvkeA+aDcTiL5x9k3dogG6+DZ7cVf2xWZcNAP5X
	xJHp6711vaCK/gPbt4YQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgkMw-0008H4-Id; Thu, 04 Jun 2020 07:32:54 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgkM9-0007VJ-S9; Thu, 04 Jun 2020 07:32:07 +0000
X-UUID: 01ec51523bc14379b9f1c82e8ddecf7b-20200603
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From;
 bh=HJ9S6rma+vnVa5gCVUNR3+hSMzVhPDu4Fw67Ls/8Gl8=; 
 b=F4Yt65NA10RvGEBk35VdHhui3ysebpO+i1QZPtk6Jeqs4R0ueP5uwb2S17qOwQUNuETaI2v8eeH4kmiSBJhpwI7ENV1KMQpQWbw3Mj+doO2n4qpzQdz/5cVoZSqlhrkMlcKqWnovjheQ6ZpKW56ri1nO92mewtCd//SkCXW37WI=;
X-UUID: 01ec51523bc14379b9f1c82e8ddecf7b-20200603
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <xia.jiang@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1516536775; Wed, 03 Jun 2020 23:31:53 -0800
Received: from mtkmbs05n2.mediatek.inc (172.21.101.140) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Thu, 4 Jun 2020 00:29:27 -0700
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 mtkmbs05n2.mediatek.inc (172.21.101.140) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Thu, 4 Jun 2020 15:29:26 +0800
Received: from localhost.localdomain (10.17.3.153) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via Frontend
 Transport; Thu, 4 Jun 2020 15:29:24 +0800
From: Xia Jiang <xia.jiang@mediatek.com>
To: Hans Verkuil <hverkuil-cisco@xs4all.nl>, Mauro Carvalho Chehab
 <mchehab+samsung@kernel.org>, Rob Herring <robh+dt@kernel.org>, "Matthias
 Brugger" <matthias.bgg@gmail.com>, Rick Chang <rick.chang@mediatek.com>
Subject: [PATCH v9 10/18] media: platform: Stylistic changes for improving
 code quality
Date: Thu, 4 Jun 2020 15:27:00 +0800
Message-ID: <20200604072708.9468-11-xia.jiang@mediatek.com>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <20200604072708.9468-1-xia.jiang@mediatek.com>
References: <20200604072708.9468-1-xia.jiang@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200604_003205_915901_5882AC31 
X-CRM114-Status: UNSURE (   7.66  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 MIME_BASE64_TEXT       RAW: Message text disguised using base64
 encoding
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: maoguang.meng@mediatek.com, devicetree@vger.kernel.org,
 mojahsu@chromium.org, srv_heupstream@mediatek.com,
 linux-kernel@vger.kernel.org, Tomasz Figa <tfiga@chromium.org>,
 senozhatsky@chromium.org, sj.huang@mediatek.com, drinkcat@chromium.org,
 linux-mediatek@lists.infradead.org, Xia Jiang <xia.jiang@mediatek.com>,
 linux-media@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Marek Szyprowski <m.szyprowski@samsung.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Change register offset hex numerals from uppercase to lowercase.
Change data type of max/min width/height from integer to unsigned
integer.

Signed-off-by: Xia Jiang <xia.jiang@mediatek.com>
---
v9: move changing data type of max/min width/height to this patch
---
 .../media/platform/mtk-jpeg/mtk_jpeg_core.h    |  8 ++++----
 drivers/media/platform/mtk-jpeg/mtk_jpeg_reg.h | 18 +++++++++---------
 2 files changed, 13 insertions(+), 13 deletions(-)

diff --git a/drivers/media/platform/mtk-jpeg/mtk_jpeg_core.h b/drivers/media/platform/mtk-jpeg/mtk_jpeg_core.h
index 999bd1427809..28e9b30ad5c3 100644
--- a/drivers/media/platform/mtk-jpeg/mtk_jpeg_core.h
+++ b/drivers/media/platform/mtk-jpeg/mtk_jpeg_core.h
@@ -21,10 +21,10 @@
 #define MTK_JPEG_FMT_TYPE_OUTPUT	1
 #define MTK_JPEG_FMT_TYPE_CAPTURE	2
 
-#define MTK_JPEG_MIN_WIDTH	32
-#define MTK_JPEG_MIN_HEIGHT	32
-#define MTK_JPEG_MAX_WIDTH	8192
-#define MTK_JPEG_MAX_HEIGHT	8192
+#define MTK_JPEG_MIN_WIDTH	32U
+#define MTK_JPEG_MIN_HEIGHT	32U
+#define MTK_JPEG_MAX_WIDTH	8192U
+#define MTK_JPEG_MAX_HEIGHT	8192U
 
 #define MTK_JPEG_DEFAULT_SIZEIMAGE	(1 * 1024 * 1024)
 
diff --git a/drivers/media/platform/mtk-jpeg/mtk_jpeg_reg.h b/drivers/media/platform/mtk-jpeg/mtk_jpeg_reg.h
index 94db04e9cdb6..2945da842dfa 100644
--- a/drivers/media/platform/mtk-jpeg/mtk_jpeg_reg.h
+++ b/drivers/media/platform/mtk-jpeg/mtk_jpeg_reg.h
@@ -20,29 +20,29 @@
 #define BIT_INQST_MASK_ALLIRQ		0x37
 
 #define JPGDEC_REG_RESET		0x0090
-#define JPGDEC_REG_BRZ_FACTOR		0x00F8
-#define JPGDEC_REG_DU_NUM		0x00FC
+#define JPGDEC_REG_BRZ_FACTOR		0x00f8
+#define JPGDEC_REG_DU_NUM		0x00fc
 #define JPGDEC_REG_DEST_ADDR0_Y		0x0140
 #define JPGDEC_REG_DEST_ADDR0_U		0x0144
 #define JPGDEC_REG_DEST_ADDR0_V		0x0148
-#define JPGDEC_REG_DEST_ADDR1_Y		0x014C
+#define JPGDEC_REG_DEST_ADDR1_Y		0x014c
 #define JPGDEC_REG_DEST_ADDR1_U		0x0150
 #define JPGDEC_REG_DEST_ADDR1_V		0x0154
 #define JPGDEC_REG_STRIDE_Y		0x0158
-#define JPGDEC_REG_STRIDE_UV		0x015C
+#define JPGDEC_REG_STRIDE_UV		0x015c
 #define JPGDEC_REG_IMG_STRIDE_Y		0x0160
 #define JPGDEC_REG_IMG_STRIDE_UV	0x0164
-#define JPGDEC_REG_WDMA_CTRL		0x016C
+#define JPGDEC_REG_WDMA_CTRL		0x016c
 #define JPGDEC_REG_PAUSE_MCU_NUM	0x0170
-#define JPGDEC_REG_OPERATION_MODE	0x017C
+#define JPGDEC_REG_OPERATION_MODE	0x017c
 #define JPGDEC_REG_FILE_ADDR		0x0200
-#define JPGDEC_REG_COMP_ID		0x020C
+#define JPGDEC_REG_COMP_ID		0x020c
 #define JPGDEC_REG_TOTAL_MCU_NUM	0x0210
 #define JPGDEC_REG_COMP0_DATA_UNIT_NUM	0x0224
-#define JPGDEC_REG_DU_CTRL		0x023C
+#define JPGDEC_REG_DU_CTRL		0x023c
 #define JPGDEC_REG_TRIG			0x0240
 #define JPGDEC_REG_FILE_BRP		0x0248
-#define JPGDEC_REG_FILE_TOTAL_SIZE	0x024C
+#define JPGDEC_REG_FILE_TOTAL_SIZE	0x024c
 #define JPGDEC_REG_QT_ID		0x0270
 #define JPGDEC_REG_INTERRUPT_STATUS	0x0274
 #define JPGDEC_REG_STATUS		0x0278
-- 
2.18.0
_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
