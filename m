Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 81A9D19C1B7
	for <lists+linux-mediatek@lfdr.de>; Thu,  2 Apr 2020 15:09:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JZ+Ck5Uu+P2qPRMYiVCGZVo5+JCDrcyziPghnitYkf8=; b=cJJbgh9oMRM3sn
	su+R4NmUuNcKissPdMNGxYtoU5jTs4JbfVkDBGYqHmWEiLPK5u9EVgPTEpQqwYkmQ5Xa1aY7N0jXK
	Uh05te43D1P+PO/R34zP6Bnk95AZji1N8sTQnwM+ud8WLYfTGeD0C5iD4g1PEeCxmDNVoORQblkL/
	JZRysEMCIIujY0ho5f44Ys0TNUeVo2SMvM1APcUgW4zfdZJerZgNP046NH3TiTN85dJ+yejoP7eH4
	g5lup4KwBBR9GoZgRH2oa5bv5Bs267ayXRMtUTSgsNT3oUpnZqKrkrVSwgocFLogExkKkpNtzstrf
	oo00WYRmYUQ7Jz1dIXdQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJzZG-0004lL-9y; Thu, 02 Apr 2020 13:07:34 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJzZD-0004kM-LG
 for linux-mediatek@lists.infradead.org; Thu, 02 Apr 2020 13:07:32 +0000
Received: from localhost.localdomain.com (unknown [151.48.151.50])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 0191920678;
 Thu,  2 Apr 2020 13:07:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1585832851;
 bh=y1u6ArJqsP+G1ZrMNbmTXLz6p9X+BwNgaQp7JxSuvQo=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=c6cmvjikjnErvPjuFS85RWYCx7p8gZZCTdsnVlcC7OqSQDxGlbkwshDYG2KRUk317
 rXk5/P2SBUHTsAmN9+AEwFHh5yoKzG2np3jEEqajLT9MYjtG0T59JsfhnNp2b+8OSP
 JwzTaQnhbxFFuZ8Amo9kqMAVRD10g/heo/KmlIbY=
From: Lorenzo Bianconi <lorenzo@kernel.org>
To: nbd@nbd.name
Subject: [PATCH 01/12] mt76: mt7663: fix mt7615_mac_cca_stats_reset routine
Date: Thu,  2 Apr 2020 15:06:31 +0200
Message-Id: <212be6740634f8dbc859a90a754c97bc24e72d27.1585832458.git.lorenzo@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <cover.1585832458.git.lorenzo@kernel.org>
References: <cover.1585832458.git.lorenzo@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200402_060731_715752_CA539BF6 
X-CRM114-Status: UNSURE (   9.15  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

Fix PHYMUX_5 register definition for mt7663 in
mt7615_mac_cca_stats_reset routine

Fixes: f40ac0f3d3c0 ("mt76: mt7615: introduce mt7663e support")
Signed-off-by: Lorenzo Bianconi <lorenzo@kernel.org>
---
 drivers/net/wireless/mediatek/mt76/mt7615/mac.c  | 8 +++++++-
 drivers/net/wireless/mediatek/mt76/mt7615/regs.h | 1 +
 2 files changed, 8 insertions(+), 1 deletion(-)

diff --git a/drivers/net/wireless/mediatek/mt76/mt7615/mac.c b/drivers/net/wireless/mediatek/mt76/mt7615/mac.c
index a27a6d164009..656231786d55 100644
--- a/drivers/net/wireless/mediatek/mt76/mt7615/mac.c
+++ b/drivers/net/wireless/mediatek/mt76/mt7615/mac.c
@@ -1574,8 +1574,14 @@ void mt7615_mac_cca_stats_reset(struct mt7615_phy *phy)
 {
 	struct mt7615_dev *dev = phy->dev;
 	bool ext_phy = phy != &dev->phy;
-	u32 reg = MT_WF_PHY_R0_PHYMUX_5(ext_phy);
+	u32 reg;
 
+	if (is_mt7663(&dev->mt76))
+		reg = MT7663_WF_PHY_R0_PHYMUX_5;
+	else
+		reg = MT_WF_PHY_R0_PHYMUX_5(ext_phy);
+
+	/* reset PD and MDRDY counters */
 	mt76_clear(dev, reg, GENMASK(22, 20));
 	mt76_set(dev, reg, BIT(22) | BIT(20));
 }
diff --git a/drivers/net/wireless/mediatek/mt76/mt7615/regs.h b/drivers/net/wireless/mediatek/mt76/mt7615/regs.h
index 1e0d95b917e1..f7c2a633841c 100644
--- a/drivers/net/wireless/mediatek/mt76/mt7615/regs.h
+++ b/drivers/net/wireless/mediatek/mt76/mt7615/regs.h
@@ -151,6 +151,7 @@ enum mt7615_reg_base {
 #define MT_WF_PHY_WF2_RFCTRL0_LPBCN_EN	BIT(9)
 
 #define MT_WF_PHY_R0_PHYMUX_5(_phy)	MT_WF_PHY(0x0614 + ((_phy) << 9))
+#define MT7663_WF_PHY_R0_PHYMUX_5	MT_WF_PHY(0x0414)
 
 #define MT_WF_PHY_R0_PHYCTRL_STS0(_phy)	MT_WF_PHY(0x020c + ((_phy) << 9))
 #define MT_WF_PHYCTRL_STAT_PD_OFDM	GENMASK(31, 16)
-- 
2.25.1


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
