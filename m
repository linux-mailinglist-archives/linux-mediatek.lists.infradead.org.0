Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1670472B22
	for <lists+linux-mediatek@lfdr.de>; Wed, 24 Jul 2019 11:09:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=hxhRRM1+kaFiIBwieIuuXNC0B3BvrxVO4fmzR5TNdO4=; b=C6CAoFIzgHVHkt
	rddqBATqcLKIlbYp/Pz76Wnc1BjcyUtpKGeGioES/I5hMe9g4HeOjiBBMMYrLZ6Y+2ArOvCTXMib1
	cmx2eczF/XIqJ13UAOWqFWJsng5+zwETk7CEZj38KY3V/eou6RZ87S5A/9Uj1X7xHEEorxxidKCJ2
	3SRYn2MlxIEv/Jc616euQ0omP3KDndzgp9PTyplUXh2+QDopMejFA+ThmDrqEnGY5RNvupbfPOcLQ
	+higInXsG38VSeTm3jsozQ68kecPhoYzej6Rmv/yy6ANSYsJJghTsoXJXSk19kNpnraXFjTagH1/b
	diN/V/UZesF0VHrFP/sw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqDGv-0006XC-Ii; Wed, 24 Jul 2019 09:09:17 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqDFb-0005iY-5U
 for linux-mediatek@lists.infradead.org; Wed, 24 Jul 2019 09:07:57 +0000
X-UUID: d57a74dea6ee418db1b84d9ec0936945-20190724
X-UUID: d57a74dea6ee418db1b84d9ec0936945-20190724
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <ryder.lee@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1465960353; Wed, 24 Jul 2019 00:58:27 -0800
Received: from mtkmbs08n2.mediatek.inc (172.21.101.56) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 24 Jul 2019 01:58:26 -0700
Received: from mtkcas09.mediatek.inc (172.21.101.178) by
 mtkmbs08n2.mediatek.inc (172.21.101.56) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 24 Jul 2019 16:58:22 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by mtkcas09.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Wed, 24 Jul 2019 16:58:22 +0800
From: Ryder Lee <ryder.lee@mediatek.com>
To: Felix Fietkau <nbd@nbd.name>, Lorenzo Bianconi
 <lorenzo.bianconi@redhat.com>
Subject: [PATCH v1 0/6] fix many checkpatch.pl warnings
Date: Wed, 24 Jul 2019 16:58:14 +0800
Message-ID: <cover.1563944758.git.ryder.lee@mediatek.com>
X-Mailer: git-send-email 2.18.0
MIME-Version: 1.0
X-TM-SNTS-SMTP: 7C89812366BFC7779EF08260026C24A6BF7E5EB1E49B9BC56618B305B907799A2000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190724_020755_533187_FB7D0528 
X-CRM114-Status: UNSURE (   7.68  )
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

This gathers many subsets to fix checkpatch.pl warnings and switches
to use SPDX tags.

I still keep some warnings there due to readability. The most of them
are networking block comments or Macro argument reuse...

Changes since v1:
- fix misspellings.
- fix a header convention error.

Ryder Lee (6):
  mt76: Add paragraphs to describe the config symbols fully
  mt76: mt7603: fix some checkpatch warnings
  mt76: mt7615: fix some checkpatch warnings
  mt76: mt76x02: fix some checkpatch warnings
  mt76: fix some checkpatch warnings
  mt76: switch to SPDX tag instead of verbose boilerplate text

 drivers/net/wireless/mediatek/mt76/agg-rx.c   | 34 ++++-------
 drivers/net/wireless/mediatek/mt76/debugfs.c  | 13 +---
 drivers/net/wireless/mediatek/mt76/dma.c      | 15 +----
 drivers/net/wireless/mediatek/mt76/dma.h      | 13 +---
 drivers/net/wireless/mediatek/mt76/eeprom.c   | 13 +---
 drivers/net/wireless/mediatek/mt76/mac80211.c | 43 ++++++--------
 drivers/net/wireless/mediatek/mt76/mcu.c      | 13 +---
 drivers/net/wireless/mediatek/mt76/mmio.c     | 13 +---
 drivers/net/wireless/mediatek/mt76/mt76.h     | 59 ++++++++-----------
 .../net/wireless/mediatek/mt76/mt7603/Kconfig |  6 +-
 .../wireless/mediatek/mt76/mt7603/beacon.c    |  2 +-
 .../net/wireless/mediatek/mt76/mt7603/core.c  |  2 +-
 .../wireless/mediatek/mt76/mt7603/debugfs.c   |  2 +-
 .../net/wireless/mediatek/mt76/mt7603/dma.c   |  7 ++-
 .../wireless/mediatek/mt76/mt7603/eeprom.c    |  2 +-
 .../net/wireless/mediatek/mt76/mt7603/init.c  |  3 +-
 .../net/wireless/mediatek/mt76/mt7603/mac.c   |  6 +-
 .../net/wireless/mediatek/mt76/mt7603/main.c  |  7 ++-
 .../net/wireless/mediatek/mt76/mt7603/mcu.c   |  2 +-
 .../net/wireless/mediatek/mt76/mt7603/pci.c   |  2 +-
 .../net/wireless/mediatek/mt76/mt7603/soc.c   |  2 +-
 .../net/wireless/mediatek/mt76/mt7615/Kconfig |  7 ++-
 .../wireless/mediatek/mt76/mt7615/debugfs.c   |  2 +-
 .../net/wireless/mediatek/mt76/mt7615/mac.c   |  5 +-
 .../net/wireless/mediatek/mt76/mt7615/mcu.c   |  2 -
 .../net/wireless/mediatek/mt76/mt76x0/Kconfig | 12 +++-
 .../wireless/mediatek/mt76/mt76x0/mt76x0.h    |  2 +-
 .../net/wireless/mediatek/mt76/mt76x0/pci.c   | 13 +---
 .../wireless/mediatek/mt76/mt76x0/pci_mcu.c   | 13 +---
 .../net/wireless/mediatek/mt76/mt76x0/phy.c   | 40 +++++++------
 .../net/wireless/mediatek/mt76/mt76x0/phy.h   | 10 ++--
 .../net/wireless/mediatek/mt76/mt76x0/usb.c   | 16 ++---
 .../wireless/mediatek/mt76/mt76x0/usb_mcu.c   | 13 +---
 drivers/net/wireless/mediatek/mt76/mt76x02.h  | 38 +++++-------
 .../wireless/mediatek/mt76/mt76x02_beacon.c   | 17 +-----
 .../wireless/mediatek/mt76/mt76x02_debugfs.c  | 13 +---
 .../net/wireless/mediatek/mt76/mt76x02_dfs.c  | 13 +---
 .../net/wireless/mediatek/mt76/mt76x02_dfs.h  | 13 +---
 .../net/wireless/mediatek/mt76/mt76x02_dma.h  | 13 +---
 .../wireless/mediatek/mt76/mt76x02_eeprom.c   | 13 +---
 .../wireless/mediatek/mt76/mt76x02_eeprom.h   | 13 +---
 .../net/wireless/mediatek/mt76/mt76x02_mac.c  | 29 +++------
 .../net/wireless/mediatek/mt76/mt76x02_mac.h  | 13 +---
 .../net/wireless/mediatek/mt76/mt76x02_mcu.c  | 26 +++-----
 .../net/wireless/mediatek/mt76/mt76x02_mcu.h  | 13 +---
 .../net/wireless/mediatek/mt76/mt76x02_mmio.c | 24 +++-----
 .../net/wireless/mediatek/mt76/mt76x02_phy.c  | 16 +----
 .../net/wireless/mediatek/mt76/mt76x02_phy.h  | 13 +---
 .../net/wireless/mediatek/mt76/mt76x02_regs.h | 41 +++++--------
 .../wireless/mediatek/mt76/mt76x02_trace.c    | 13 +---
 .../wireless/mediatek/mt76/mt76x02_trace.h    | 16 +----
 .../net/wireless/mediatek/mt76/mt76x02_txrx.c | 13 +---
 .../net/wireless/mediatek/mt76/mt76x02_usb.h  | 13 +---
 .../wireless/mediatek/mt76/mt76x02_usb_core.c | 15 +----
 .../wireless/mediatek/mt76/mt76x02_usb_mcu.c  | 13 +---
 .../net/wireless/mediatek/mt76/mt76x02_util.c | 33 ++++-------
 .../net/wireless/mediatek/mt76/mt76x2/Kconfig | 14 ++++-
 .../wireless/mediatek/mt76/mt76x2/eeprom.c    | 23 +++-----
 .../wireless/mediatek/mt76/mt76x2/eeprom.h    | 13 +---
 .../net/wireless/mediatek/mt76/mt76x2/init.c  | 13 +---
 .../net/wireless/mediatek/mt76/mt76x2/mac.c   | 13 +---
 .../net/wireless/mediatek/mt76/mt76x2/mac.h   | 13 +---
 .../net/wireless/mediatek/mt76/mt76x2/mcu.c   | 13 +---
 .../net/wireless/mediatek/mt76/mt76x2/mcu.h   | 16 +----
 .../wireless/mediatek/mt76/mt76x2/mt76x2.h    | 13 +---
 .../wireless/mediatek/mt76/mt76x2/mt76x2u.h   | 13 +---
 .../net/wireless/mediatek/mt76/mt76x2/pci.c   | 13 +---
 .../wireless/mediatek/mt76/mt76x2/pci_init.c  | 14 +----
 .../wireless/mediatek/mt76/mt76x2/pci_main.c  | 13 +---
 .../wireless/mediatek/mt76/mt76x2/pci_mcu.c   | 17 +-----
 .../wireless/mediatek/mt76/mt76x2/pci_phy.c   | 13 +---
 .../net/wireless/mediatek/mt76/mt76x2/phy.c   | 18 ++----
 .../net/wireless/mediatek/mt76/mt76x2/usb.c   | 13 +---
 .../wireless/mediatek/mt76/mt76x2/usb_init.c  | 13 +---
 .../wireless/mediatek/mt76/mt76x2/usb_mac.c   | 13 +---
 .../wireless/mediatek/mt76/mt76x2/usb_main.c  | 13 +---
 .../wireless/mediatek/mt76/mt76x2/usb_mcu.c   | 13 +---
 .../wireless/mediatek/mt76/mt76x2/usb_phy.c   | 13 +---
 drivers/net/wireless/mediatek/mt76/trace.c    | 13 +---
 drivers/net/wireless/mediatek/mt76/trace.h    | 22 ++-----
 drivers/net/wireless/mediatek/mt76/tx.c       | 31 ++++------
 drivers/net/wireless/mediatek/mt76/usb.c      | 44 ++++++--------
 .../net/wireless/mediatek/mt76/usb_trace.c    | 13 +---
 .../net/wireless/mediatek/mt76/usb_trace.h    | 24 +++-----
 drivers/net/wireless/mediatek/mt76/util.c     | 13 +---
 drivers/net/wireless/mediatek/mt76/util.h     |  4 +-
 86 files changed, 321 insertions(+), 971 deletions(-)

-- 
2.18.0


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
