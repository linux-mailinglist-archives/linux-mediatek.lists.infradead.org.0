Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 516D172B21
	for <lists+linux-mediatek@lfdr.de>; Wed, 24 Jul 2019 11:09:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+yAkmXDo2Nw73/iq24wfoOeSEuZLf6TXTP5w9I4ZizQ=; b=iZDSS+BgAbOhaI
	qMWxyHOwo+dtpXpbahmAakUaERsTdZ5M4AS6I8H6s1btqfgE1AP5KT4s4mrjJxh3gtMO/uJjeys+J
	j9TF4Jw76XpXKpnnnvFMC1iCSdRFiZ4FJbwQGyNlPmhQMGnt7foo9Ps+iHxXiy18jr1ZkmqCIcD7y
	ZkkgxopZ1gAiSQMv57rIc/wk0pKG+7Lzniq5rMRCa8DOox65bjEpkWkTdupb/m9yaKMIGefzr4kmu
	oQ+YoactlNxvvOeLeLuBgOSmamJVlYQtL/neaK1Ohb1Olt0bhAgCEP8tRtb6+fYz4Fs/WJ+RSPWdH
	eqhcvrvrKwHnnT1W8gDw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqDGs-0006V0-D7; Wed, 24 Jul 2019 09:09:14 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqDFY-0005iI-Vf
 for linux-mediatek@lists.infradead.org; Wed, 24 Jul 2019 09:07:54 +0000
X-UUID: c18c1a68c2cd4aec8e46cb7caed23393-20190724
X-UUID: c18c1a68c2cd4aec8e46cb7caed23393-20190724
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw01.mediatek.com
 (envelope-from <ryder.lee@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 2073941828; Wed, 24 Jul 2019 00:58:26 -0800
Received: from mtkmbs08n1.mediatek.inc (172.21.101.55) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 24 Jul 2019 01:58:24 -0700
Received: from mtkcas09.mediatek.inc (172.21.101.178) by
 mtkmbs08n1.mediatek.inc (172.21.101.55) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 24 Jul 2019 16:58:23 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by mtkcas09.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Wed, 24 Jul 2019 16:58:23 +0800
From: Ryder Lee <ryder.lee@mediatek.com>
To: Felix Fietkau <nbd@nbd.name>, Lorenzo Bianconi
 <lorenzo.bianconi@redhat.com>
Subject: [PATCH v1 1/6] mt76: Add paragraphs to describe the config symbols
 fully
Date: Wed, 24 Jul 2019 16:58:15 +0800
Message-ID: <d259e08a5f4c0f0f50f67d6cfc2a6258181e53d4.1563944758.git.ryder.lee@mediatek.com>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <cover.1563944758.git.ryder.lee@mediatek.com>
References: <cover.1563944758.git.ryder.lee@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190724_020753_217674_B8182491 
X-CRM114-Status: UNSURE (   8.91  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Sean Wang <sean.wang@mediatek.com>, YF Luo <yf.luo@mediatek.com>,
 linux-wireless@vger.kernel.org, linux-kernel@vger.kernel.org,
 Ryder Lee <ryder.lee@mediatek.com>, Yiwei Chung <yiwei.chung@mediatek.com>,
 linux-mediatek@lists.infradead.org, Roy Luo <royluo@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Update the help text to fix a checkpatch warning:

WARNING: please write a paragraph that describes the config symbol fully

Signed-off-by: Ryder Lee <ryder.lee@mediatek.com>
---
 drivers/net/wireless/mediatek/mt76/mt7603/Kconfig |  6 ++++--
 drivers/net/wireless/mediatek/mt76/mt7615/Kconfig |  7 ++++++-
 drivers/net/wireless/mediatek/mt76/mt76x0/Kconfig | 12 ++++++++++--
 drivers/net/wireless/mediatek/mt76/mt76x2/Kconfig | 14 +++++++++++---
 4 files changed, 31 insertions(+), 8 deletions(-)

diff --git a/drivers/net/wireless/mediatek/mt76/mt7603/Kconfig b/drivers/net/wireless/mediatek/mt76/mt7603/Kconfig
index e108bf881ca8..6a0080f1d91c 100644
--- a/drivers/net/wireless/mediatek/mt76/mt7603/Kconfig
+++ b/drivers/net/wireless/mediatek/mt76/mt7603/Kconfig
@@ -5,6 +5,8 @@ config MT7603E
 	depends on MAC80211
 	depends on PCI
 	help
-	  This adds support for MT7603E wireless PCIe devices and the WLAN core on
-	  MT7628/MT7688 SoC devices
+	  This adds support for MT7603E wireless PCIe devices and the WLAN core
+	  on MT7628/MT7688 SoC devices. This family supports IEEE 802.11n 2x2
+	  to 300Mbps PHY rate
 
+	  To compile this driver as a module, choose M here.
diff --git a/drivers/net/wireless/mediatek/mt76/mt7615/Kconfig b/drivers/net/wireless/mediatek/mt76/mt7615/Kconfig
index 2ed47b309b6e..4cabba9aa2ea 100644
--- a/drivers/net/wireless/mediatek/mt76/mt7615/Kconfig
+++ b/drivers/net/wireless/mediatek/mt76/mt7615/Kconfig
@@ -5,4 +5,9 @@ config MT7615E
 	depends on MAC80211
 	depends on PCI
 	help
-	  This adds support for MT7615-based wireless PCIe devices.
+	  This adds support for MT7615-based wireless PCIe devices,
+	  which support concurrent dual-band operation at both 5GHz
+	  and 2.4GHz, IEEE 802.11ac 4x4:4SS 1733Mbps PHY rate, wave2
+	  MU-MIMO up to 4 users/group and 160MHz channels.
+
+	  To compile this driver as a module, choose M here.
diff --git a/drivers/net/wireless/mediatek/mt76/mt76x0/Kconfig b/drivers/net/wireless/mediatek/mt76/mt76x0/Kconfig
index 209d8abc49d5..7c88ed8b8f1e 100644
--- a/drivers/net/wireless/mediatek/mt76/mt76x0/Kconfig
+++ b/drivers/net/wireless/mediatek/mt76/mt76x0/Kconfig
@@ -10,7 +10,11 @@ config MT76x0U
 	depends on MAC80211
 	depends on USB
 	help
-	  This adds support for MT7610U-based wireless USB dongles.
+	  This adds support for MT7610U-based wireless USB 2.0 dongles,
+	  which comply with IEEE 802.11ac standards and support 1x1
+	  433Mbps PHY rate.
+
+	  To compile this driver as a module, choose M here.
 
 config MT76x0E
 	tristate "MediaTek MT76x0E (PCIe) support"
@@ -18,4 +22,8 @@ config MT76x0E
 	depends on MAC80211
 	depends on PCI
 	help
-	  This adds support for MT7610/MT7630-based wireless PCIe devices.
+	  This adds support for MT7610/MT7630-based wireless PCIe devices,
+	  which comply with IEEE 802.11ac standards and support 1x1
+	  433Mbps PHY rate.
+
+	  To compile this driver as a module, choose M here.
diff --git a/drivers/net/wireless/mediatek/mt76/mt76x2/Kconfig b/drivers/net/wireless/mediatek/mt76/mt76x2/Kconfig
index 1f69908f8373..5fd4973e32df 100644
--- a/drivers/net/wireless/mediatek/mt76/mt76x2/Kconfig
+++ b/drivers/net/wireless/mediatek/mt76/mt76x2/Kconfig
@@ -8,8 +8,12 @@ config MT76x2E
 	select MT76x2_COMMON
 	depends on MAC80211
 	depends on PCI
-	---help---
-	  This adds support for MT7612/MT7602/MT7662-based wireless PCIe devices.
+	help
+	  This adds support for MT7612/MT7602/MT7662-based wireless PCIe
+	  devices, which comply with IEEE 802.11ac standards and support
+	  2SS to 866Mbit/s PHY rate.
+
+	  To compile this driver as a module, choose M here.
 
 config MT76x2U
 	tristate "MediaTek MT76x2U (USB) support"
@@ -18,4 +22,8 @@ config MT76x2U
 	depends on MAC80211
 	depends on USB
 	help
-	  This adds support for MT7612U-based wireless USB dongles.
+	  This adds support for MT7612U-based wireless USB 3.0 dongles,
+	  which comply with IEEE 802.11ac standards and support 2SS to
+	  866Mbit/s PHY rate.
+
+	  To compile this driver as a module, choose M here.
-- 
2.18.0


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
