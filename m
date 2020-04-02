Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A9BE19C8AF
	for <lists+linux-mediatek@lfdr.de>; Thu,  2 Apr 2020 20:19:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Jyo7Bqb+81faCF9ppyR9iPyOmg+cbKA3ttrMiEqtp6M=; b=bjL1tgqizbAE47
	KSyz4fXM3JPfYKM8/HC5sDJWDPawC6Mm8uH5Tf8c8XQW899QeMv7T9GWjxmRcy0A3lk4W0eH3ZlmP
	KawCCK1CbviBUnYYqRQ+y+ZZF1OGPuNas8VDTsq9yeTx2QyLg36Wi29BEqwLV/XGEGhlfDP46CF0H
	PDaC/T9A145TkUSrTocfcbX+orXQAEIL2CwDElzXOwAhgo1VhpHx/iBONDXlobRR2BwCSyg2xBMq8
	X3gp6+hfaW6F6cehrqXWYePAq33D4oVQzxBt5e0V8Cr7aiCF4/V29oR3EMtISxFOfYpm4TPVvNb4y
	XUq4c5ZDs7qo5daFy+kQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jK4R1-0000iU-L6; Thu, 02 Apr 2020 18:19:23 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jK4Qx-0000fK-ON
 for linux-mediatek@lists.infradead.org; Thu, 02 Apr 2020 18:19:21 +0000
Received: from localhost.localdomain.com (unknown [151.48.151.50])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 0D58120675;
 Thu,  2 Apr 2020 18:19:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1585851559;
 bh=TDASILMJOLJvIv1cuIv5HOmWS3eSBCaZsUjDIpsETvA=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=anR4ZWPPMin/2h065nj2VBwTF44L/DkQR8FvJwqqncI6ar8d6JEaJ/kvubXcmfR54
 pLzR6f/XQpCqpiVvIzxYereAOvzfACAE8dyn4etCg0C+8BTNFFqd99ZGGcNNtTtr2j
 dOXqBHalYEeT2TT84KefhOSuWn5F6iFYg4+yyg+A=
From: Lorenzo Bianconi <lorenzo@kernel.org>
To: nbd@nbd.name
Subject: [PATCH 4/9] mt76: mt7615: introduce __mt7663_load_firmware routine
Date: Thu,  2 Apr 2020 20:18:51 +0200
Message-Id: <e3e930b199235f8aa628c437862647c5197569b9.1585851049.git.lorenzo@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <cover.1585851049.git.lorenzo@kernel.org>
References: <cover.1585851049.git.lorenzo@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200402_111919_807751_76BB1146 
X-CRM114-Status: GOOD (  10.19  )
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

Introduce __mt7663_load_firmware routine to load firmware for usb
devices.

Signed-off-by: Lorenzo Bianconi <lorenzo@kernel.org>
---
 .../net/wireless/mediatek/mt76/mt7615/mcu.c   | 22 ++++++++++++++-----
 .../wireless/mediatek/mt76/mt7615/mt7615.h    |  1 +
 2 files changed, 18 insertions(+), 5 deletions(-)

diff --git a/drivers/net/wireless/mediatek/mt76/mt7615/mcu.c b/drivers/net/wireless/mediatek/mt76/mt7615/mcu.c
index 12759158e69a..dcd97606e827 100644
--- a/drivers/net/wireless/mediatek/mt76/mt7615/mcu.c
+++ b/drivers/net/wireless/mediatek/mt76/mt7615/mcu.c
@@ -2078,12 +2078,10 @@ static int mt7663_load_n9(struct mt7615_dev *dev, const char *name)
 	return ret;
 }
 
-static int mt7663_load_firmware(struct mt7615_dev *dev)
+int __mt7663_load_firmware(struct mt7615_dev *dev)
 {
 	int ret;
 
-	mt76_set(dev, MT_WPDMA_GLO_CFG, MT_WPDMA_GLO_CFG_BYPASS_TX_SCH);
-
 	ret = mt76_get_field(dev, MT_CONN_ON_MISC, MT_TOP_MISC2_FW_N9_RDY);
 	if (ret) {
 		dev_dbg(dev->mt76.dev, "Firmware is already download\n");
@@ -2109,12 +2107,26 @@ static int mt7663_load_firmware(struct mt7615_dev *dev)
 		return -EIO;
 	}
 
-	mt76_clear(dev, MT_WPDMA_GLO_CFG, MT_WPDMA_GLO_CFG_BYPASS_TX_SCH);
-
 	dev_dbg(dev->mt76.dev, "Firmware init done\n");
 
 	return 0;
 }
+EXPORT_SYMBOL_GPL(__mt7663_load_firmware);
+
+static int mt7663_load_firmware(struct mt7615_dev *dev)
+{
+	int ret;
+
+	mt76_set(dev, MT_WPDMA_GLO_CFG, MT_WPDMA_GLO_CFG_BYPASS_TX_SCH);
+
+	ret = __mt7663_load_firmware(dev);
+	if (ret)
+		return ret;
+
+	mt76_clear(dev, MT_WPDMA_GLO_CFG, MT_WPDMA_GLO_CFG_BYPASS_TX_SCH);
+
+	return 0;
+}
 
 int mt7615_mcu_init(struct mt7615_dev *dev)
 {
diff --git a/drivers/net/wireless/mediatek/mt76/mt7615/mt7615.h b/drivers/net/wireless/mediatek/mt76/mt7615/mt7615.h
index 35bfab58490e..c0bc4913eec4 100644
--- a/drivers/net/wireless/mediatek/mt76/mt7615/mt7615.h
+++ b/drivers/net/wireless/mediatek/mt76/mt7615/mt7615.h
@@ -460,5 +460,6 @@ int mt7615_mcu_set_sku_en(struct mt7615_phy *phy, bool enable);
 int mt7615_dfs_init_radar_detector(struct mt7615_phy *phy);
 
 int mt7615_init_debugfs(struct mt7615_dev *dev);
+int __mt7663_load_firmware(struct mt7615_dev *dev);
 
 #endif
-- 
2.25.1


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
