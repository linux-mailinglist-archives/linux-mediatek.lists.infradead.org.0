Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8495019C8B5
	for <lists+linux-mediatek@lfdr.de>; Thu,  2 Apr 2020 20:19:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Hfc+cO5kY1PeFS+ooaEI1nBQPzxLpDS/RUQnbvtufHk=; b=nXx7xiibArJX+9
	FfP5EvoumAEjjbaqd8DRqy7WURf417uAG1eMl89Ukf3l5gxaeyWU7SyJri/JkXmN74eN74uQYlO6D
	mSzpIrBHKcwybUmRDYQKETuzQQJ6b8xnu23UmpLexGtlFUDWbzHOy5zCv7AY2X7+THTpLbGbKw0UK
	bTGzKKGlLsz4a8ZoEtGwg//hLFU8LeMF/jghU7AY01xXWwXSJToXdPm9QPf2COGpvtkU+D78tKYR8
	BMyVzCeqmVAVYrwVILR03MfJdueRSICYeTwe4DHKTwrZm59Do8dNvrviyCcfmBScp8Ejo+g9fbaEs
	sRKO3y5sCAKDb5BTOKFQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jK4RD-0000xb-2z; Thu, 02 Apr 2020 18:19:35 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jK4R7-0000qY-MQ
 for linux-mediatek@lists.infradead.org; Thu, 02 Apr 2020 18:19:31 +0000
Received: from localhost.localdomain.com (unknown [151.48.151.50])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id C5F0A208E0;
 Thu,  2 Apr 2020 18:19:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1585851569;
 bh=pmfYUUcWhoVuBYlaL4fzrcHsW621cGa3FctPrnhrs20=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=jkVd/cfonmTduLZ1Nu9UVAAmDXkWrsq+wEmBeUDYzs/KLN0LDhoMzXhvVaXevt3qo
 NNCx3UWvl1tRNKI7L3EjzikTgFk6G9bCdkoNkF+scnNuQKCcRw+5ls6llVOJMevpbR
 XvuV9sQpxqOEMkPERiVGbL/BtBUOviCk0D5Ms43g=
From: Lorenzo Bianconi <lorenzo@kernel.org>
To: nbd@nbd.name
Subject: [PATCH 9/9] mt76: mt7615: add address parameter to mt7615_eeprom_init
Date: Thu,  2 Apr 2020 20:18:56 +0200
Message-Id: <e7a70c983ab4a8a9c7852786448dfd19e192f716.1585851049.git.lorenzo@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <cover.1585851049.git.lorenzo@kernel.org>
References: <cover.1585851049.git.lorenzo@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200402_111929_784046_618EFC41 
X-CRM114-Status: GOOD (  11.70  )
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

Introduce address parameter to mt7615_eeprom_init routine in order to be
reused adding usb support to mt7615 driver

Signed-off-by: Lorenzo Bianconi <lorenzo@kernel.org>
---
 drivers/net/wireless/mediatek/mt76/mt7615/eeprom.c | 12 ++++++------
 drivers/net/wireless/mediatek/mt76/mt7615/init.c   |  3 ++-
 drivers/net/wireless/mediatek/mt76/mt7615/mt7615.h |  2 +-
 3 files changed, 9 insertions(+), 8 deletions(-)

diff --git a/drivers/net/wireless/mediatek/mt76/mt7615/eeprom.c b/drivers/net/wireless/mediatek/mt76/mt7615/eeprom.c
index dfa9a08b896d..23ed20553de2 100644
--- a/drivers/net/wireless/mediatek/mt76/mt7615/eeprom.c
+++ b/drivers/net/wireless/mediatek/mt76/mt7615/eeprom.c
@@ -40,11 +40,11 @@ static int mt7615_efuse_read(struct mt7615_dev *dev, u32 base,
 	return 0;
 }
 
-static int mt7615_efuse_init(struct mt7615_dev *dev)
+static int mt7615_efuse_init(struct mt7615_dev *dev, u32 base)
 {
-	u32 val, base = mt7615_reg_map(dev, MT_EFUSE_BASE);
 	int i, len = MT7615_EEPROM_SIZE;
 	void *buf;
+	u32 val;
 
 	val = mt76_rr(dev, base + MT_EFUSE_BASE_CTRL);
 	if (val & MT_EFUSE_BASE_CTRL_EMPTY)
@@ -67,7 +67,7 @@ static int mt7615_efuse_init(struct mt7615_dev *dev)
 	return 0;
 }
 
-static int mt7615_eeprom_load(struct mt7615_dev *dev)
+static int mt7615_eeprom_load(struct mt7615_dev *dev, u32 addr)
 {
 	int ret;
 
@@ -75,7 +75,7 @@ static int mt7615_eeprom_load(struct mt7615_dev *dev)
 	if (ret < 0)
 		return ret;
 
-	return mt7615_efuse_init(dev);
+	return mt7615_efuse_init(dev, addr);
 }
 
 static int mt7615_check_eeprom(struct mt76_dev *dev)
@@ -265,11 +265,11 @@ static void mt7615_cal_free_data(struct mt7615_dev *dev)
 	}
 }
 
-int mt7615_eeprom_init(struct mt7615_dev *dev)
+int mt7615_eeprom_init(struct mt7615_dev *dev, u32 addr)
 {
 	int ret;
 
-	ret = mt7615_eeprom_load(dev);
+	ret = mt7615_eeprom_load(dev, addr);
 	if (ret < 0)
 		return ret;
 
diff --git a/drivers/net/wireless/mediatek/mt76/mt7615/init.c b/drivers/net/wireless/mediatek/mt76/mt7615/init.c
index be0f3a77e22f..6acaaf2732df 100644
--- a/drivers/net/wireless/mediatek/mt76/mt7615/init.c
+++ b/drivers/net/wireless/mediatek/mt76/mt7615/init.c
@@ -146,6 +146,7 @@ static void mt7615_init_work(struct work_struct *work)
 
 static int mt7615_init_hardware(struct mt7615_dev *dev)
 {
+	u32 addr = mt7615_reg_map(dev, MT_EFUSE_BASE);
 	int ret, idx;
 
 	mt76_wr(dev, MT_INT_SOURCE_CSR, ~0);
@@ -154,7 +155,7 @@ static int mt7615_init_hardware(struct mt7615_dev *dev)
 	spin_lock_init(&dev->token_lock);
 	idr_init(&dev->token);
 
-	ret = mt7615_eeprom_init(dev);
+	ret = mt7615_eeprom_init(dev, addr);
 	if (ret < 0)
 		return ret;
 
diff --git a/drivers/net/wireless/mediatek/mt76/mt7615/mt7615.h b/drivers/net/wireless/mediatek/mt76/mt7615/mt7615.h
index bd5967f5b4b7..a6e5814b5941 100644
--- a/drivers/net/wireless/mediatek/mt76/mt7615/mt7615.h
+++ b/drivers/net/wireless/mediatek/mt76/mt7615/mt7615.h
@@ -358,7 +358,7 @@ int mt7615_register_device(struct mt7615_dev *dev);
 void mt7615_unregister_device(struct mt7615_dev *dev);
 int mt7615_register_ext_phy(struct mt7615_dev *dev);
 void mt7615_unregister_ext_phy(struct mt7615_dev *dev);
-int mt7615_eeprom_init(struct mt7615_dev *dev);
+int mt7615_eeprom_init(struct mt7615_dev *dev, u32 addr);
 int mt7615_eeprom_get_power_index(struct mt7615_dev *dev,
 				  struct ieee80211_channel *chan,
 				  u8 chain_idx);
-- 
2.25.1


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
