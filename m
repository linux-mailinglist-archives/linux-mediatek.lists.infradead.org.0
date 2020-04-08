Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 68BD61A21B4
	for <lists+linux-mediatek@lfdr.de>; Wed,  8 Apr 2020 14:21:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=T6+AlFRJIzLdlpP9t+glAesoMPcqYaDkTC4MBIHdJ78=; b=CidUSH8hc8pXq9
	GjzK7SRxcAMkK9loFWcT4IA7/dWul+xzhjajb4OhQTo2OysSUyYCdjlIAJiDVi6pfIJSXofRQvRab
	nZS06kBjJxW7mKdKURwj74ZgRXXV4GMfu2Uj9i3dQvfwIWwankpxoXuAXQ5zHVu00BVCdj6lpk4S+
	rjKgmFnBDjn7ACF4lze5VFbtbGajU2IrJ5SqYdkmAUmWm3E4uxF9VoLuf8dVEkHACXWb/yv32SKHC
	7WaEHQjg1AOIfCd0Zpg39ViUTxWan3Apg9J1Zeaq+ljpPgI5lgGsTVu/+e+FLGb3iHwocu2PuAvfT
	gAR7XkjvEL8rKcqoo3eg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jM9hW-0008B6-5A; Wed, 08 Apr 2020 12:21:02 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jM9hL-00081B-UW
 for linux-mediatek@lists.infradead.org; Wed, 08 Apr 2020 12:20:53 +0000
Received: from lore-desk-wlan.redhat.com (unknown [151.48.151.50])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 48BDD206F7;
 Wed,  8 Apr 2020 12:20:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1586348450;
 bh=4ESBG9SkgQkFponzawGQ7aor+asTMiiGcIRnIU6gIiI=;
 h=From:To:Cc:Subject:Date:From;
 b=vVz0CgiDeZO+mnulwuYl9rOZo9aiNKHzhwIDt+lD1E70cXwqdAhva5HEdM9kxZJVQ
 6e1tjqgkW9Rog5MS/JbwhqP76BNaAYL9EZONuHL9/6NfxVzCJ72yu6VUjqj5g3oMmq
 AnMO+PVJDYrxDWISpzXxLiBI095aeYXmJYbSOH2E=
From: Lorenzo Bianconi <lorenzo@kernel.org>
To: nbd@nbd.name
Subject: [PATCH] mt76: mt7663: fix aggr range entry in debugfs
Date: Wed,  8 Apr 2020 14:20:39 +0200
Message-Id: <3b86a23c5ad6348cab3500935c619fba74db08ec.1586348345.git.lorenzo@kernel.org>
X-Mailer: git-send-email 2.25.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200408_052052_049949_D90349EC 
X-CRM114-Status: GOOD (  10.63  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: linux-mediatek@lists.infradead.org, lorenzo.bianconi@redhat.com,
 sean.wang@mediatek.com, linux-wireless@vger.kernel.org, ryder.lee@mediatek.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Fix register definitions for aggr range counter registers for mt7663
chipset

Fixes: f40ac0f3d3c0 ("mt76: mt7615: introduce mt7663e support")
Signed-off-by: Lorenzo Bianconi <lorenzo@kernel.org>
---
 drivers/net/wireless/mediatek/mt76/mt7615/debugfs.c | 6 ++++--
 drivers/net/wireless/mediatek/mt76/mt7615/init.c    | 1 +
 drivers/net/wireless/mediatek/mt76/mt7615/regs.h    | 5 +++++
 3 files changed, 10 insertions(+), 2 deletions(-)

diff --git a/drivers/net/wireless/mediatek/mt76/mt7615/debugfs.c b/drivers/net/wireless/mediatek/mt76/mt7615/debugfs.c
index 777c7f9bd760..2163a22967c7 100644
--- a/drivers/net/wireless/mediatek/mt76/mt7615/debugfs.c
+++ b/drivers/net/wireless/mediatek/mt76/mt7615/debugfs.c
@@ -129,16 +129,18 @@ mt7615_ampdu_stat_read_phy(struct mt7615_phy *phy,
 			   struct seq_file *file)
 {
 	struct mt7615_dev *dev = file->private;
+	u32 reg = is_mt7663(&dev->mt76) ? MT_MIB_ARNG(0) : MT_AGG_ASRCR0;
 	bool ext_phy = phy != &dev->phy;
 	int bound[7], i, range;
 
 	if (!phy)
 		return;
 
-	range = mt76_rr(dev, MT_AGG_ASRCR0);
+	range = mt76_rr(dev, reg);
 	for (i = 0; i < 4; i++)
 		bound[i] = MT_AGG_ASRCR_RANGE(range, i) + 1;
-	range = mt76_rr(dev, MT_AGG_ASRCR1);
+
+	range = mt76_rr(dev, reg + 4);
 	for (i = 0; i < 3; i++)
 		bound[i + 4] = MT_AGG_ASRCR_RANGE(range, i) + 1;
 
diff --git a/drivers/net/wireless/mediatek/mt76/mt7615/init.c b/drivers/net/wireless/mediatek/mt76/mt7615/init.c
index 6acaaf2732df..07d4b259fe8a 100644
--- a/drivers/net/wireless/mediatek/mt76/mt7615/init.c
+++ b/drivers/net/wireless/mediatek/mt76/mt7615/init.c
@@ -116,6 +116,7 @@ static void mt7615_mac_init(struct mt7615_dev *dev)
 	mt76_wr(dev, MT_DMA_DCR0,
 		FIELD_PREP(MT_DMA_DCR0_MAX_RX_LEN, 3072) |
 		MT_DMA_DCR0_RX_VEC_DROP);
+	mt76_set(dev, MT_WF_MIB_SCR0, MT_MIB_SCR0_AGG_CNT_RANGE_EN);
 	if (is_mt7663(&dev->mt76)) {
 		mt76_wr(dev, MT_WF_AGG(0x160), 0x5c341c02);
 		mt76_wr(dev, MT_WF_AGG(0x164), 0x70708040);
diff --git a/drivers/net/wireless/mediatek/mt76/mt7615/regs.h b/drivers/net/wireless/mediatek/mt76/mt7615/regs.h
index 481e4d941e72..a3333f382350 100644
--- a/drivers/net/wireless/mediatek/mt76/mt7615/regs.h
+++ b/drivers/net/wireless/mediatek/mt76/mt7615/regs.h
@@ -384,6 +384,9 @@ enum mt7615_reg_base {
 #define MT_WF_MIB_BASE			(dev->reg_map[MT_MIB_BASE])
 #define MT_WF_MIB(_band, ofs)		(MT_WF_MIB_BASE + (ofs) + (_band) * 0x200)
 
+#define MT_WF_MIB_SCR0			MT_WF_MIB(0, 0)
+#define MT_MIB_SCR0_AGG_CNT_RANGE_EN	BIT(21)
+
 #define MT_MIB_M0_MISC_CR(_band)	MT_WF_MIB(_band, 0x00c)
 
 #define MT_MIB_SDR3(_band)		MT_WF_MIB(_band, 0x014)
@@ -414,6 +417,8 @@ enum mt7615_reg_base {
 #define MT_MIB_BA_MISS_COUNT_MASK	GENMASK(15, 0)
 #define MT_MIB_ACK_FAIL_COUNT_MASK	GENMASK(31, 16)
 
+#define MT_MIB_ARNG(n)			MT_WF_MIB(0, 0x4b8 + ((n) << 2))
+
 #define MT_TX_AGG_CNT(_band, n)		MT_WF_MIB(_band, 0xa8 + ((n) << 2))
 
 #define MT_DMA_SHDL(ofs)		(dev->reg_map[MT_DMA_SHDL_BASE] + (ofs))
-- 
2.25.2


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
