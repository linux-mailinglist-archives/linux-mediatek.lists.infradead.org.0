Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EB201E6B19
	for <lists+linux-mediatek@lfdr.de>; Mon, 28 Oct 2019 03:51:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=AUEnnka8l0GgwXvd/Uc7EHZavJbXx1EfcP7oAdawZ/g=; b=h0/YLRuV38vyG0
	L7/E6JsaeJThXe8Qtq6KhXJ3YwoTPIkj+4H3uaj5EmoPH7g4IVnTu27hUKvADqkCn2GxoCzgshV7V
	B71B1pLwL9PMrR9E5DaSCHK09R2i1Ff7mT5noZfJH4CFF9D5BojYgYhd8sZMfVwpw93tDac4hxKky
	AWxc5/LzJWqkjv30Bs6nXC5B97AdUeduAymSspzhSMJe7xuPIbrgvAQdtaqRv7kzXK4Elt58QeNPR
	0nV1EkMDhQEDS2Q0qADxVgzjfJ+yxkZ3Qj6QIesh6t2MiG7w/BL3QY5hMFtABCH2MRgg+zbjMXWa+
	rjVU0u86ryMDYzsmbDYA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iOv7Y-0003kJ-2X; Mon, 28 Oct 2019 02:51:04 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iOv58-0000g8-8c; Mon, 28 Oct 2019 02:48:36 +0000
X-UUID: 1c8ac7e87e4b44019c6b182045cce5e5-20191027
X-UUID: 1c8ac7e87e4b44019c6b182045cce5e5-20191027
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw02.mediatek.com
 (envelope-from <weiyi.lu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1657886559; Sun, 27 Oct 2019 18:48:40 -0800
Received: from mtkmbs07n1.mediatek.inc (172.21.101.16) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Sun, 27 Oct 2019 19:48:25 -0700
Received: from mtkcas09.mediatek.inc (172.21.101.178) by
 mtkmbs07n1.mediatek.inc (172.21.101.16) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 28 Oct 2019 10:48:24 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by mtkcas09.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Mon, 28 Oct 2019 10:48:25 +0800
From: Weiyi Lu <weiyi.lu@mediatek.com>
To: Nicolas Boichat <drinkcat@chromium.org>, Matthias Brugger
 <matthias.bgg@gmail.com>, Rob Herring <robh@kernel.org>
Subject: [PATCH v8 00/14] Mediatek MT8183 scpsys support  
Date: Mon, 28 Oct 2019 10:48:04 +0800
Message-ID: <1572230898-7860-1-git-send-email-weiyi.lu@mediatek.com>
X-Mailer: git-send-email 1.8.1.1.dirty
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191027_194834_346392_C34D2DFD 
X-CRM114-Status: GOOD (  10.72  )
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
Cc: James Liao <jamesjj.liao@mediatek.com>, Weiyi Lu <weiyi.lu@mediatek.com>,
 srv_heupstream@mediatek.com, linux-kernel@vger.kernel.org,
 Fan Chen <fan.chen@mediatek.com>, linux-mediatek@lists.infradead.org,
 Yong Wu <yong.wu@mediatek.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

This series is based on v5.4-rc1

changes since v7:
- reword in binding document [PATCH 02/14]
- fix error return checking bug in subsys clock control [PATCH 10/14]
- add power domains properity to mfgcfg patch [PATCH 14/14] from
  https://patchwork.kernel.org/patch/11126199/

changes since v6:
- remove the patch of SPDX license identifier because it's already fixed

changes since v5:
- fix documentation in [PATCH 04/14]
- remove useless variable checking and reuse API of clock control in [PATCH 06/14]
- coding style fix of bus protection control in [PATCH 08/14]
- fix naming of new added data in [PATCH 09/14]
- small refactor of multiple step bus protection control in [PATCH 10/14]

changes since v4:
- add property to mt8183 smi-common
- seperate refactor patches and new add function
- add power controller device node

Weiyi Lu (14):
  dt-bindings: mediatek: Add property to mt8183 smi-common
  dt-bindings: soc: Add MT8183 power dt-bindings
  soc: mediatek: Refactor polling timeout and documentation
  soc: mediatek: Refactor regulator control
  soc: mediatek: Refactor clock control
  soc: mediatek: Refactor sram control
  soc: mediatek: Refactor bus protection control
  soc: mediatek: Add basic_clk_id to scp_power_data
  soc: mediatek: Add multiple step bus protection control
  soc: mediatek: Add subsys clock control for bus protection
  soc: mediatek: Add extra sram control
  soc: mediatek: Add MT8183 scpsys support
  arm64: dts: Add power controller device node of MT8183
  arm64: dts: Add power-domains properity to mfgcfg

 .../memory-controllers/mediatek,smi-common.txt     |   2 +-
 .../devicetree/bindings/soc/mediatek/scpsys.txt    |  20 +-
 arch/arm64/boot/dts/mediatek/mt8183.dtsi           |  63 +++
 drivers/soc/mediatek/Makefile                      |   2 +-
 drivers/soc/mediatek/mtk-scpsys-ext.c              |  99 ++++
 drivers/soc/mediatek/mtk-scpsys.c                  | 575 ++++++++++++++++++---
 include/dt-bindings/power/mt8183-power.h           |  26 +
 include/linux/soc/mediatek/scpsys-ext.h            |  39 ++
 8 files changed, 745 insertions(+), 81 deletions(-)
 create mode 100644 drivers/soc/mediatek/mtk-scpsys-ext.c
 create mode 100644 include/dt-bindings/power/mt8183-power.h
 create mode 100644 include/linux/soc/mediatek/scpsys-ext.h


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
