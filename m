Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D09BB1C7086
	for <lists+linux-mediatek@lfdr.de>; Wed,  6 May 2020 14:43:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=epmYbs1SDdajc5VJBS+BiF8MHAavh9kV3uXAzOE9930=; b=GBAHZILBn2QK85
	+xiMm9ec86Mp1hSLbz9tLXlxx9LGlzuwxG8+qUc6C+vQsfaiH/oDBbQ9tKN5YlaiBezKmjFGCsoj2
	5HpwMZ+bKf9Mja5ueLDlzciH0/yj/YbDHejNQTVNr2AYnRw5g46p5w+SnRt44MU+cbO65JAUeMZrS
	Ghmnfq4E12VqJKFK4ZJaJa4SBxI2AnlvB6ASOElLE4tAHuTNOAf/ZfjyauTEbnDZgjiqcdO5DgmTS
	3w99rug81bA1zqYJPbVhytXG2WboPyhqPuGYasuLZLP/F9LdBzQoeX4E1eTm6fNaITtCu2qtwPpNy
	Vh/QHGw7Sh4UMvQ3yGyA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWJOF-0007Fd-9X; Wed, 06 May 2020 12:43:07 +0000
Received: from mail-m17613.qiye.163.com ([59.111.176.13])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWJOC-0007F2-73
 for linux-mediatek@lists.infradead.org; Wed, 06 May 2020 12:43:05 +0000
Received: from ubuntu.localdomain (unknown [157.0.31.122])
 by mail-m17613.qiye.163.com (Hmail) with ESMTPA id 6308D48281A;
 Wed,  6 May 2020 20:43:01 +0800 (CST)
From: Bernard Zhao <bernard@vivo.com>
To: Chun-Kuang Hu <chunkuang.hu@kernel.org>,
 Philipp Zabel <p.zabel@pengutronix.de>, David Airlie <airlied@linux.ie>,
 Daniel Vetter <daniel@ffwll.ch>, Matthias Brugger <matthias.bgg@gmail.com>,
 dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org,
 linux-mediatek@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH] drm/mediatek: eliminate the magic number in array size
Date: Wed,  6 May 2020 05:42:55 -0700
Message-Id: <20200506124255.9477-1-bernard@vivo.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
X-HM-Spam-Status: e1kfGhgUHx5ZQUtXWQgYFAkeWUFZT1VPQ01CQkJCQ0NOTk5CSllXWShZQU
 hPN1dZLVlBSVdZCQ4XHghZQVk1NCk2OjckKS43PlkG
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6Mhw6KRw6FDg2Tjg5DBVNOhhR
 Ag8wCjlVSlVKTkNDTE1DQkNKTU5OVTMWGhIXVRkeCRUaCR87DRINFFUYFBZFWVdZEgtZQVlKTkxV
 S1VISlVKSUlZV1kIAVlBSUxISjcG
X-HM-Tid: 0a71ea02c25d93bakuws6308d48281a
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200506_054304_418771_C3A5483D 
X-CRM114-Status: UNSURE (   7.76  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [59.111.176.13 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: opensource.kernel@vivo.com, Bernard Zhao <bernard@vivo.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Eiminate the magic number in array size, there macro defines in
hdmi.h.

Signed-off-by: Bernard Zhao <bernard@vivo.com>
---
 drivers/gpu/drm/mediatek/mtk_hdmi.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/mediatek/mtk_hdmi.c b/drivers/gpu/drm/mediatek/mtk_hdmi.c
index ff43a3d80410..4c962c7f06e5 100644
--- a/drivers/gpu/drm/mediatek/mtk_hdmi.c
+++ b/drivers/gpu/drm/mediatek/mtk_hdmi.c
@@ -982,7 +982,7 @@ static int mtk_hdmi_setup_avi_infoframe(struct mtk_hdmi *hdmi,
 					struct drm_display_mode *mode)
 {
 	struct hdmi_avi_infoframe frame;
-	u8 buffer[17];
+	u8 buffer[HDMI_INFOFRAME_HEADER_SIZE + HDMI_AVI_INFOFRAME_SIZE];
 	ssize_t err;
 
 	err = drm_hdmi_avi_infoframe_from_display_mode(&frame,
@@ -1008,7 +1008,7 @@ static int mtk_hdmi_setup_spd_infoframe(struct mtk_hdmi *hdmi,
 					const char *product)
 {
 	struct hdmi_spd_infoframe frame;
-	u8 buffer[29];
+	u8 buffer[HDMI_INFOFRAME_HEADER_SIZE + HDMI_SPD_INFOFRAME_SIZE];
 	ssize_t err;
 
 	err = hdmi_spd_infoframe_init(&frame, vendor, product);
@@ -1031,7 +1031,7 @@ static int mtk_hdmi_setup_spd_infoframe(struct mtk_hdmi *hdmi,
 static int mtk_hdmi_setup_audio_infoframe(struct mtk_hdmi *hdmi)
 {
 	struct hdmi_audio_infoframe frame;
-	u8 buffer[14];
+	u8 buffer[HDMI_INFOFRAME_HEADER_SIZE + HDMI_AUDIO_INFOFRAME_SIZE];
 	ssize_t err;
 
 	err = hdmi_audio_infoframe_init(&frame);
-- 
2.26.2


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
