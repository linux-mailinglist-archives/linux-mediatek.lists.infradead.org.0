Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3258D2E082
	for <lists+linux-mediatek@lfdr.de>; Wed, 29 May 2019 17:05:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=fawPERsETl8E03h7XV2EJr/TrDpKvLPZdn9ISiHFi/E=; b=NYQ4589Xd7P52F
	VDAF1HPM2zcL0pq18lchFZ9nQOl3wG/tgfLha5HY2Uwe35WVR9bXeEggdoRTDnbJ1abdaCjFak50u
	M5oL8dmKAN9bJBe+EW/vsylPrUJc++shirwI1S0sT3nS17rJzkdkXPKnWnM64+2NAxp9s1jLyssTV
	LOT2JT0sAZ4Pf8zhPz7ALs6JlZjsc3nmpI6ULFlNRspBSWKCSaHTH5qFxBDozxBjviROiND2qznoi
	k+TbMHUoYoB1KziwfvGnXDfNIOrglAltpEDe1L1zk3G5g+v3FoSgAWP4UeQu7eP1syStMKR73FMP1
	dIyJb2izDyJ7nt8o3A6Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hW08h-0008Uv-7Q; Wed, 29 May 2019 15:05:15 +0000
Received: from szxga04-in.huawei.com ([45.249.212.190] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hW08X-0007Pv-Kf; Wed, 29 May 2019 15:05:07 +0000
Received: from DGGEMS410-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id 5B4D2DBC006830ABF8D4;
 Wed, 29 May 2019 23:05:00 +0800 (CST)
Received: from localhost (10.177.31.96) by DGGEMS410-HUB.china.huawei.com
 (10.3.19.210) with Microsoft SMTP Server id 14.3.439.0; Wed, 29 May 2019
 23:04:53 +0800
From: YueHaibing <yuehaibing@huawei.com>
To: <lgirdwood@gmail.com>, <broonie@kernel.org>, <perex@perex.cz>,
 <tiwai@suse.com>, <matthias.bgg@gmail.com>, <kaichieh.chuang@mediatek.com>
Subject: [PATCH -next] ASoC: mediatek: Make some symbols static
Date: Wed, 29 May 2019 23:04:37 +0800
Message-ID: <20190529150437.19004-1-yuehaibing@huawei.com>
X-Mailer: git-send-email 2.10.2.windows.1
MIME-Version: 1.0
X-Originating-IP: [10.177.31.96]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190529_080506_194636_7E1AF2E7 
X-CRM114-Status: UNSURE (   8.28  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [45.249.212.190 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: YueHaibing <yuehaibing@huawei.com>, alsa-devel@alsa-project.org,
 linux-mediatek@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Fix sparse warnings:

sound/soc/mediatek/common/mtk-btcvsd.c:410:5: warning: symbol 'mtk_btcvsd_write_to_bt' was not declared. Should it be static?
sound/soc/mediatek/common/mtk-btcvsd.c:698:9: warning: symbol 'mtk_btcvsd_snd_read' was not declared. Should it be static?
sound/soc/mediatek/common/mtk-btcvsd.c:779:9: warning: symbol 'mtk_btcvsd_snd_write' was not declared. Should it be static?

Reported-by: Hulk Robot <hulkci@huawei.com>
Signed-off-by: YueHaibing <yuehaibing@huawei.com>
---
 sound/soc/mediatek/common/mtk-btcvsd.c | 22 +++++++++++-----------
 1 file changed, 11 insertions(+), 11 deletions(-)

diff --git a/sound/soc/mediatek/common/mtk-btcvsd.c b/sound/soc/mediatek/common/mtk-btcvsd.c
index bd55c546e790..c7a81c4be068 100644
--- a/sound/soc/mediatek/common/mtk-btcvsd.c
+++ b/sound/soc/mediatek/common/mtk-btcvsd.c
@@ -407,11 +407,11 @@ static int mtk_btcvsd_read_from_bt(struct mtk_btcvsd_snd *bt,
 	return 0;
 }
 
-int mtk_btcvsd_write_to_bt(struct mtk_btcvsd_snd *bt,
-			   enum bt_sco_packet_len packet_type,
-			   unsigned int packet_length,
-			   unsigned int packet_num,
-			   unsigned int blk_size)
+static int mtk_btcvsd_write_to_bt(struct mtk_btcvsd_snd *bt,
+				  enum bt_sco_packet_len packet_type,
+				  unsigned int packet_length,
+				  unsigned int packet_num,
+				  unsigned int blk_size)
 {
 	unsigned int i;
 	unsigned long flags;
@@ -695,9 +695,9 @@ static int wait_for_bt_irq(struct mtk_btcvsd_snd *bt,
 	return 0;
 }
 
-ssize_t mtk_btcvsd_snd_read(struct mtk_btcvsd_snd *bt,
-			    char __user *buf,
-			    size_t count)
+static ssize_t mtk_btcvsd_snd_read(struct mtk_btcvsd_snd *bt,
+				   char __user *buf,
+				   size_t count)
 {
 	ssize_t read_size = 0, read_count = 0, cur_read_idx, cont;
 	unsigned int cur_buf_ofs = 0;
@@ -776,9 +776,9 @@ ssize_t mtk_btcvsd_snd_read(struct mtk_btcvsd_snd *bt,
 	return read_count;
 }
 
-ssize_t mtk_btcvsd_snd_write(struct mtk_btcvsd_snd *bt,
-			     char __user *buf,
-			     size_t count)
+static ssize_t mtk_btcvsd_snd_write(struct mtk_btcvsd_snd *bt,
+				    char __user *buf,
+				    size_t count)
 {
 	int written_size = count, avail = 0, cur_write_idx, write_size, cont;
 	unsigned int cur_buf_ofs = 0;
-- 
2.17.1



_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
