Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 06BAB9FA75
	for <lists+linux-mediatek@lfdr.de>; Wed, 28 Aug 2019 08:22:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=9mPMmHKIH3ZV53O/4oD24V5xhiLf7yaY3QimNkaOr14=; b=LJJ2eb+cfat+wF
	+rO/b1mEihhl+45MwfSFudfdvpBl/lo/hUjAa6c3cBganQRvWB00yDz0xvacx/onszK+iChtMHf7x
	2FaoHwN7xWQyJObMag4uY5HPBKJj/9pvVBc7JokA4/kziYlfviXVxC6nJuM58FPv/XTDeqeEpK5CI
	aoqK6QZmdn2GhUl1VQYgoDv/76p15Ijyxsnnw/PjlsqvMp64Pr4XmBK5HUahyeUg4gSwBxIbUi/zt
	BgV63VmIQJowZ5B6UOkEqgF3REPjbkv1oUXbNQhDspMY9zUhB2EdoubvNjdRzlIARD7qUc2y9uhn5
	i7xkbKm2q/EuRzBhQsHg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2rLY-0002g6-GP; Wed, 28 Aug 2019 06:22:20 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2rKl-0001xr-RH; Wed, 28 Aug 2019 06:21:33 +0000
X-UUID: cea9a0f23f6745419d9dbe7c0c0b526f-20190827
X-UUID: cea9a0f23f6745419d9dbe7c0c0b526f-20190827
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw02.mediatek.com
 (envelope-from <chunfeng.yun@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 2124330008; Tue, 27 Aug 2019 22:21:33 -0800
Received: from MTKMBS31N2.mediatek.inc (172.27.4.87) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 27 Aug 2019 23:21:31 -0700
Received: from mtkcas09.mediatek.inc (172.21.101.178) by
 MTKMBS31N2.mediatek.inc (172.27.4.87) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 28 Aug 2019 14:21:28 +0800
Received: from localhost.localdomain (10.17.3.153) by mtkcas09.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Wed, 28 Aug 2019 14:21:27 +0800
From: Chunfeng Yun <chunfeng.yun@mediatek.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Rob Herring
 <robh+dt@kernel.org>
Subject: [PATCH 0/6] add support USB for MT8183
Date: Wed, 28 Aug 2019 14:20:55 +0800
Message-ID: <1566973261-21677-1-git-send-email-chunfeng.yun@mediatek.com>
X-Mailer: git-send-email 1.8.1.1.dirty
MIME-Version: 1.0
X-TM-SNTS-SMTP: 7E5A70E4659ABA37BFB2D59CBB2721E4101DDEEA0A1E5A9D0208508D714115312000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190827_232131_884881_945FB2B9 
X-CRM114-Status: UNSURE (   9.70  )
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Mathias Nyman <mathias.nyman@intel.com>, linux-usb@vger.kernel.org,
 linux-kernel@vger.kernel.org, Chunfeng
 Yun <chunfeng.yun@mediatek.com>, linux-mediatek@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

This series support USB DRD controller and enable it's remote
wakeup functoin for MT8183, they depend on the following
series patches:

1. this series add support MT6358 PMIC
  [v5,01/10] mfd: mt6397: clean up code
  https://patchwork.kernel.org/patch/11110487/

2. this series add support pericfg syscon
  [1/2] dt-bindings: clock: mediatek: add pericfg for MT8183
  https://patchwork.kernel.org/patch/11117799/

Chunfeng Yun (6):
  dt-bindings: usb: mtu3: support USB wakeup for MT8183
  dt-bindings: usb: mtk-xhci: support USB wakeup for MT8183
  usb: mtu3: support ip-sleep wakeup for MT8183
  usb: mtk-xhci: support ip-sleep wakeup for MT8183
  arm64: dts: mt8183: add usb and phy nodes
  arm64: dts: mt8183: enable USB remote wakeup

 .../bindings/usb/mediatek,mtk-xhci.txt        |  1 +
 .../devicetree/bindings/usb/mediatek,mtu3.txt |  1 +
 arch/arm64/boot/dts/mediatek/mt8183-evb.dts   | 23 +++++++
 arch/arm64/boot/dts/mediatek/mt8183.dtsi      | 63 +++++++++++++++++++
 drivers/usb/host/xhci-mtk.c                   | 14 ++++-
 drivers/usb/mtu3/mtu3_host.c                  | 14 ++++-
 6 files changed, 114 insertions(+), 2 deletions(-)

-- 
2.23.0


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
