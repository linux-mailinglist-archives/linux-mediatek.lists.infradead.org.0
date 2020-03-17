Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DCF66188AD1
	for <lists+linux-mediatek@lfdr.de>; Tue, 17 Mar 2020 17:42:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wveMlnwtdhkHVo9gAq2lLqvWytlS/C/xcozYoHOaC8s=; b=uvtSEXSbvRtEwA
	+AvI7hcoRheSF6eS6YX1wpqfBJoRbTpzl5ihwys59zPLLUU+ZUU/nrvUlT/YslgqY/zVYoFun69S+
	JyeWKHT6mPdph1oYLgmPxz8AFV6pkbCvdrmkZMefPorWCxR57z+iQbP2yO014hAp49tWRB554jBUC
	pOwO1AMV/irWjEGEVG5TgwmFOD700vztnz7C03QSEMkqArN1bInF2GCF/WFjoSCkKHi7RsX9w/zEE
	jgKDUvgen5WHrLiFJ5ays5HhQ4NARtU6sCr3EB9mnFLT1vdo5ndsC3GE2JVHy3hJM35MdMmMuuTd5
	1lxqRTuzrlAN6J4kzysA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEFIb-0007GE-8t; Tue, 17 Mar 2020 16:42:37 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEFIQ-00073T-Ax
 for linux-mediatek@lists.infradead.org; Tue, 17 Mar 2020 16:42:27 +0000
Received: from lore-desk-wlan.redhat.com (unknown [151.48.128.122])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id A376520735;
 Tue, 17 Mar 2020 16:42:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1584463346;
 bh=F6pU+evzRGxGg+nHIpDJ8bNvdVFnMVeGCf8+3esDiY0=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=FQTcDObZEKCU/B/qQs5XrejOyLepKAbVf32t0tPrLQ7V2Wnfakor0rZDjHVOankLS
 kBPyHMeMX0DJ28FkJOcP0Zzzenz1a4kqUUlFZ8iH9B02P0vI+N352kfADOsZRbXS4F
 ZBjqYvJBJcjNQei7tOk6N7KPVgQcFBqI3q8c/ojo=
From: Lorenzo Bianconi <lorenzo@kernel.org>
To: nbd@nbd.name
Subject: [PATCH v4 18/25] mt76: mt7615: introduce
 mt7615_eeprom_parse_hw_band_cap routine
Date: Tue, 17 Mar 2020 17:41:25 +0100
Message-Id: <6906c64480364bf220fed1b348c3a2c64fcfd358.1584463004.git.lorenzo@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <cover.1584463004.git.lorenzo@kernel.org>
References: <cover.1584463004.git.lorenzo@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200317_094226_425694_01C36542 
X-CRM114-Status: GOOD (  10.04  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

Introduce mt7615_eeprom_parse_hw_band_cap routine in order to configure
supported band for mt7663e and mt7622 devices since they do not rely on
eeprom data to enable 2GHz/5GHz bands

Signed-off-by: Lorenzo Bianconi <lorenzo@kernel.org>
---
 .../wireless/mediatek/mt76/mt7615/eeprom.c    | 30 +++++++++++++++----
 1 file changed, 24 insertions(+), 6 deletions(-)

diff --git a/drivers/net/wireless/mediatek/mt76/mt7615/eeprom.c b/drivers/net/wireless/mediatek/mt76/mt7615/eeprom.c
index 5220c18e711f..b1091694569e 100644
--- a/drivers/net/wireless/mediatek/mt76/mt7615/eeprom.c
+++ b/drivers/net/wireless/mediatek/mt76/mt7615/eeprom.c
@@ -91,11 +91,23 @@ static int mt7615_check_eeprom(struct mt76_dev *dev)
 	}
 }
 
-static void mt7615_eeprom_parse_hw_cap(struct mt7615_dev *dev)
+static void
+mt7615_eeprom_parse_hw_band_cap(struct mt7615_dev *dev)
 {
-	u8 *eeprom = dev->mt76.eeprom.data;
-	u8 tx_mask, max_nss;
-	u32 val;
+	u8 val, *eeprom = dev->mt76.eeprom.data;
+
+	if (is_mt7663(&dev->mt76)) {
+		/* dual band */
+		dev->mt76.cap.has_2ghz = true;
+		dev->mt76.cap.has_5ghz = true;
+		return;
+	}
+
+	if (is_mt7622(&dev->mt76)) {
+		/* 2GHz only */
+		dev->mt76.cap.has_2ghz = true;
+		return;
+	}
 
 	val = FIELD_GET(MT_EE_NIC_WIFI_CONF_BAND_SEL,
 			eeprom[MT_EE_WIFI_CONF]);
@@ -111,9 +123,15 @@ static void mt7615_eeprom_parse_hw_cap(struct mt7615_dev *dev)
 		dev->mt76.cap.has_5ghz = true;
 		break;
 	}
+}
+
+static void mt7615_eeprom_parse_hw_cap(struct mt7615_dev *dev)
+{
+	u8 *eeprom = dev->mt76.eeprom.data;
+	u8 tx_mask, max_nss;
+	u32 val;
 
-	if (is_mt7622(&dev->mt76))
-		dev->mt76.cap.has_5ghz = false;
+	mt7615_eeprom_parse_hw_band_cap(dev);
 
 	/* read tx-rx mask from eeprom */
 	val = mt76_rr(dev, MT_TOP_STRAP_STA);
-- 
2.25.1


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
