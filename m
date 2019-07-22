Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 808FC6F8E7
	for <lists+linux-mediatek@lfdr.de>; Mon, 22 Jul 2019 07:31:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lLun+3vGcnhT2UKG8kJVaAuRWQczctEHFjU/ZmBLVHo=; b=ZL+vh+/mX4zPCI
	yRVjR97d3otyJwLdWjt2o70/MaX7upVM1Gc+WH6hhE8JC5TU0aoNNfMm7SzyP6vKK7Up2yI8ZrpeO
	BRfu05C3/7e/yoJXjK9cUtSnf91gD4U1QHgi3izRmEj+lEdGKe2by88YPPmLrqtE+w8TTJ7Ew0zx4
	UWqTW9rkuV+aL7m0JSddF5Ha+wM04bUxzH33GycACt2yrPPj2rEkLyfVRtZrqVrl3FChMPunkjjwR
	P5UBEvdoBsBOHe4nfRzF6QxSzQUTe4qRMN5KsYOIbrm9r+kSGDG2vcO9zsli+7sp4SRO/nPiqX+g4
	Ln9mb1Ycn3TNxfFQ4pPg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpQvH-0004iQ-Vw; Mon, 22 Jul 2019 05:31:44 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpQv9-0004bt-O6
 for linux-mediatek@lists.infradead.org; Mon, 22 Jul 2019 05:31:37 +0000
X-UUID: ad2356b13f3142bab981091f3ad219f5-20190721
X-UUID: ad2356b13f3142bab981091f3ad219f5-20190721
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw02.mediatek.com
 (envelope-from <ryder.lee@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1222118756; Sun, 21 Jul 2019 21:31:26 -0800
Received: from mtkmbs08n1.mediatek.inc (172.21.101.55) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Sun, 21 Jul 2019 22:31:24 -0700
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs08n1.mediatek.inc (172.21.101.55) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 22 Jul 2019 13:31:17 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Mon, 22 Jul 2019 13:31:17 +0800
From: Ryder Lee <ryder.lee@mediatek.com>
To: Felix Fietkau <nbd@nbd.name>, Lorenzo Bianconi
 <lorenzo.bianconi@redhat.com>
Subject: [PATCH 1/5] mt76: Add paragraphs to describe the config symbols fully
Date: Mon, 22 Jul 2019 13:31:11 +0800
Message-ID: <ae5dedf629c67985226dc63fb5ac08488957cc59.1563772403.git.ryder.lee@mediatek.com>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <cover.1563772403.git.ryder.lee@mediatek.com>
References: <cover.1563772403.git.ryder.lee@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190721_223136_157403_F8344C76 
X-CRM114-Status: UNSURE (   8.48  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
 linux-wireless@vger.kernel.org, Ryder Lee <ryder.lee@mediatek.com>,
 Yiwei Chung <yiwei.chung@mediatek.com>, linux-mediatek@lists.infradead.org,
 Roy Luo <royluo@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Update the help text to fix checkpatch.pl warning:

WARNING: please write a paragraph that describes the config symbol fully

Signed-off-by: Ryder Lee <ryder.lee@mediatek.com>
---
 drivers/net/wireless/mediatek/mt76/mt7603/Kconfig |  6 ++++--
 drivers/net/wireless/mediatek/mt76/mt7615/Kconfig |  7 ++++++-
 drivers/net/wireless/mediatek/mt76/mt76x0/Kconfig | 12 ++++++++++--
 drivers/net/wireless/mediatek/mt76/mt76x2/Kconfig | 14 +++++++++++---
 4 files changed, 31 insertions(+), 8 deletions(-)

diff --git a/drivers/net/wireless/mediatek/mt76/mt7603/Kconfig b/drivers/net/wireless/mediatek/mt76/mt7603/Kconfig
index e108bf881ca8..69cc74bce060 100644
--- a/drivers/net/wireless/mediatek/mt76/mt7603/Kconfig
+++ b/drivers/net/wireless/mediatek/mt76/mt7603/Kconfig
@@ -5,6 +5,8 @@ config MT7603E
 	depends on MAC80211
 	depends on PCI
 	help
-	  This adds support for MT7603E wireless PCIe devices and the WLAN core on
-	  MT7628/MT7688 SoC devices
+	  This adds support for MT7603E wireless PCIe devices and the WLAN core
+	  on MT7628/MT7688 SoC devices. This family supports 2x2 IEEE 802.11n
+	  300Mbps PHY rate
 
+	  To compile this driver as a module, choose M here.
diff --git a/drivers/net/wireless/mediatek/mt76/mt7615/Kconfig b/drivers/net/wireless/mediatek/mt76/mt7615/Kconfig
index 2ed47b309b6e..dfc110b4bcb6 100644
--- a/drivers/net/wireless/mediatek/mt76/mt7615/Kconfig
+++ b/drivers/net/wireless/mediatek/mt76/mt7615/Kconfig
@@ -5,4 +5,9 @@ config MT7615E
 	depends on MAC80211
 	depends on PCI
 	help
-	  This adds support for MT7615-based wireless PCIe devices.
+	  This adds support for MT7615-based wireless PCIe devices, which
+	  support concurrent dual-band operation at 5GHz and 2.4GHz band,
+	  4x4:4SS IEEE 802.11ac 1733Mbps PHY rate, wave2 MU-MIMO up to 4
+	  users/group and 160MHz channels.
+
+	  To compile this driver as a module, choose M here.
diff --git a/drivers/net/wireless/mediatek/mt76/mt76x0/Kconfig b/drivers/net/wireless/mediatek/mt76/mt76x0/Kconfig
index 209d8abc49d5..fb8fe98512ea 100644
--- a/drivers/net/wireless/mediatek/mt76/mt76x0/Kconfig
+++ b/drivers/net/wireless/mediatek/mt76/mt76x0/Kconfig
@@ -10,7 +10,11 @@ config MT76x0U
 	depends on MAC80211
 	depends on USB
 	help
-	  This adds support for MT7610U-based wireless USB dongles.
+	  This adds support for MT7610U-based wireless USB 2.0 dongles,
+	  which complie with IEEE 802.11ac standards and support 1x1
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
+	  which complie with IEEE 802.11ac standards and support 1x1
+	  433Mbps PHY rate.
+
+	  To compile this driver as a module, choose M here.
diff --git a/drivers/net/wireless/mediatek/mt76/mt76x2/Kconfig b/drivers/net/wireless/mediatek/mt76/mt76x2/Kconfig
index 1f69908f8373..c4fe52d8c88b 100644
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
+	  devices, which complie with IEEE 802.11ac standards and support
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
+	  which complie with IEEE 802.11ac standards and support 2SS
+	  to 866Mbit/s PHY rate.
+
+	  To compile this driver as a module, choose M here.
-- 
2.18.0


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
