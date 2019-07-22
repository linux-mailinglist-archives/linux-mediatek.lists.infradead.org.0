Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BE916F8E5
	for <lists+linux-mediatek@lfdr.de>; Mon, 22 Jul 2019 07:31:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=3qi5Us7TR6VWGPK1avemynXx42RhzBDVkZqnyY/uT0w=; b=lahlZ1y2XmkF2p
	BsFaWbZUGw4c7QD5KmwNOyZ73sjkqaPtrHc11NFGLwkXc1dWGpSChl/di5SdQo6JG097fLH+auhar
	Tc58FEW/xOK9jxZJPxVdHlFymqbTIm9PiUbBQbyVHu9/Uky4gxIPxofQC7Zv3IVuUPd0qgL+xGh4o
	eNZ4r9I+4VejY8invawpGiKfQqzXNAcmWxNu90rjfnNQqV9W9mUGTPxkARCce3dhJyUKBFdomnbft
	D5MZYdureP5QGdvBNvSx1hkOMuAG/+rABnlXGkVlT1PMlFJpnvLq55G8hv00TDTWDa89W7joo737v
	xj/iS/ZqLOpAj7FhYSrA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpQvG-0004gl-FW; Mon, 22 Jul 2019 05:31:42 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpQv9-0004cI-O5
 for linux-mediatek@lists.infradead.org; Mon, 22 Jul 2019 05:31:37 +0000
X-UUID: b2922fca31be445fa6235cc4eda3d329-20190721
X-UUID: b2922fca31be445fa6235cc4eda3d329-20190721
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw02.mediatek.com
 (envelope-from <ryder.lee@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1133795606; Sun, 21 Jul 2019 21:31:26 -0800
Received: from mtkmbs08n2.mediatek.inc (172.21.101.56) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Sun, 21 Jul 2019 22:31:25 -0700
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs08n2.mediatek.inc (172.21.101.56) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 22 Jul 2019 13:31:16 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Mon, 22 Jul 2019 13:31:16 +0800
From: Ryder Lee <ryder.lee@mediatek.com>
To: Felix Fietkau <nbd@nbd.name>, Lorenzo Bianconi
 <lorenzo.bianconi@redhat.com>
Subject: [PATCH 0/5] fix many checkpatch.pl warnings
Date: Mon, 22 Jul 2019 13:31:10 +0800
Message-ID: <cover.1563772403.git.ryder.lee@mediatek.com>
X-Mailer: git-send-email 2.18.0
MIME-Version: 1.0
X-TM-SNTS-SMTP: D88AAD105EC9225DD30B2F9F5271DCFFB9D4DF55DF588392D29FB6F86391F2712000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190721_223136_143520_13ADE2CD 
X-CRM114-Status: UNSURE (   7.95  )
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

This gathers many subsets to fix checkpatch.pl warnings.
I still keep some warnings there due to readability.
(The most of them are - networking block comments or 80 characters limit)

Ryder Lee (5):
  mt76: Add paragraphs to describe the config symbols fully
  mt76: mt7603: fix some checkpatch warnings
  mt76: mt7615: fix some checkpatch warnings
  mt76: mt76x02: fix some checkpatch warnings
  mt76: fix some checkpatch warnings

 drivers/net/wireless/mediatek/mt76/agg-rx.c   | 21 +++++----
 drivers/net/wireless/mediatek/mt76/dma.c      |  2 +-
 drivers/net/wireless/mediatek/mt76/mac80211.c | 30 ++++++------
 drivers/net/wireless/mediatek/mt76/mt76.h     | 46 +++++++++----------
 .../net/wireless/mediatek/mt76/mt7603/Kconfig |  6 ++-
 .../wireless/mediatek/mt76/mt7603/beacon.c    |  2 +-
 .../net/wireless/mediatek/mt76/mt7603/core.c  |  2 +-
 .../wireless/mediatek/mt76/mt7603/debugfs.c   |  2 +-
 .../net/wireless/mediatek/mt76/mt7603/dma.c   |  7 +--
 .../wireless/mediatek/mt76/mt7603/eeprom.c    |  2 +-
 .../net/wireless/mediatek/mt76/mt7603/init.c  |  3 +-
 .../net/wireless/mediatek/mt76/mt7603/mac.c   |  6 +--
 .../net/wireless/mediatek/mt76/mt7603/main.c  |  7 +--
 .../net/wireless/mediatek/mt76/mt7603/mcu.c   |  2 +-
 .../net/wireless/mediatek/mt76/mt7603/pci.c   |  2 +-
 .../net/wireless/mediatek/mt76/mt7603/soc.c   |  2 +-
 .../net/wireless/mediatek/mt76/mt7615/Kconfig |  7 ++-
 .../wireless/mediatek/mt76/mt7615/debugfs.c   |  2 +-
 .../net/wireless/mediatek/mt76/mt7615/mac.c   |  5 +-
 .../net/wireless/mediatek/mt76/mt7615/mcu.c   |  2 -
 .../net/wireless/mediatek/mt76/mt76x0/Kconfig | 12 ++++-
 .../wireless/mediatek/mt76/mt76x0/mt76x0.h    |  2 +-
 .../net/wireless/mediatek/mt76/mt76x0/phy.c   | 23 ++++++----
 .../net/wireless/mediatek/mt76/mt76x0/phy.h   | 10 ++--
 .../net/wireless/mediatek/mt76/mt76x0/usb.c   |  6 +--
 drivers/net/wireless/mediatek/mt76/mt76x02.h  | 25 +++++-----
 .../wireless/mediatek/mt76/mt76x02_beacon.c   |  4 +-
 .../net/wireless/mediatek/mt76/mt76x02_mac.c  | 16 +++----
 .../net/wireless/mediatek/mt76/mt76x02_mcu.c  | 13 +++---
 .../net/wireless/mediatek/mt76/mt76x02_mmio.c | 11 +++--
 .../net/wireless/mediatek/mt76/mt76x02_phy.c  |  3 +-
 .../net/wireless/mediatek/mt76/mt76x02_regs.h | 28 +++++------
 .../wireless/mediatek/mt76/mt76x02_trace.h    |  3 +-
 .../wireless/mediatek/mt76/mt76x02_usb_core.c |  2 +-
 .../net/wireless/mediatek/mt76/mt76x02_util.c | 20 ++++----
 .../net/wireless/mediatek/mt76/mt76x2/Kconfig | 14 ++++--
 .../wireless/mediatek/mt76/mt76x2/eeprom.c    | 10 ++--
 .../net/wireless/mediatek/mt76/mt76x2/mcu.h   |  3 +-
 .../wireless/mediatek/mt76/mt76x2/pci_init.c  |  1 -
 .../wireless/mediatek/mt76/mt76x2/pci_mcu.c   |  4 +-
 .../net/wireless/mediatek/mt76/mt76x2/phy.c   |  3 +-
 drivers/net/wireless/mediatek/mt76/trace.h    |  9 ++--
 drivers/net/wireless/mediatek/mt76/tx.c       | 18 ++++----
 drivers/net/wireless/mediatek/mt76/usb.c      | 31 +++++++------
 .../net/wireless/mediatek/mt76/usb_trace.h    | 11 +++--
 drivers/net/wireless/mediatek/mt76/util.h     |  4 +-
 46 files changed, 242 insertions(+), 202 deletions(-)

-- 
2.18.0


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
