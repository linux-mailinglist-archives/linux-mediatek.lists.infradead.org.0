Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3537281522
	for <lists+linux-mediatek@lfdr.de>; Mon,  5 Aug 2019 11:15:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=GscFV1odMMTW7Myhua4p3/0luIG4fJ6gnytG17qqGLo=; b=cCPDbp6f0fQuIn
	/k/MvMUiy7fRFc3Fk1XzSft27jGoq15DQR/eaTiR4bMTdQfay2fWJOIEgn+yVi/Ol3y5kYHUOBi6R
	/LLj9OjDZUP16AFYpnQ4CYaTueutcvUBI9jGnhrimJR5OCLqGJHCvMMR76UFN3uvVcus/+D0+Wpyo
	c7Yg5OQ23CLmFOioXSZMsZEGfVQSkd2YjAD+9DKAUR8fYaKTTcM/bokcyqi6+9KzriIUpOscqFebT
	a7w+e+CUGHOZr/b3ZCYIno5e5BV/w2L1mbLXdRT2Snt/zSAKbeAa16VNLVNefFn7LC402RIuFaQwo
	W2SiBdY0HUNXWZ7jTjGQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1huZ5D-00008y-GV; Mon, 05 Aug 2019 09:15:11 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1huZ2W-00054n-DC
 for linux-mediatek@lists.infradead.org; Mon, 05 Aug 2019 09:12:26 +0000
X-UUID: 97b2a53c76ab4e66b35da04585457a77-20190805
X-UUID: 97b2a53c76ab4e66b35da04585457a77-20190805
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <mars.cheng@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1280362322; Mon, 05 Aug 2019 01:12:08 -0800
Received: from mtkmbs08n2.mediatek.inc (172.21.101.56) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 5 Aug 2019 02:12:07 -0700
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 mtkmbs08n2.mediatek.inc (172.21.101.56) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 5 Aug 2019 17:12:05 +0800
Received: from mtkswgap22.mediatek.inc (172.21.77.33) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Mon, 5 Aug 2019 17:12:05 +0800
From: Mars Cheng <mars.cheng@mediatek.com>
To: Matthias Brugger <matthias.bgg@gmail.com>
Subject: [PATCH 00/11] Add basic SoC Support for Mediatek MT6779 SoC
Date: Mon, 5 Aug 2019 17:11:49 +0800
Message-ID: <1564996320-10897-1-git-send-email-mars.cheng@mediatek.com>
X-Mailer: git-send-email 1.7.9.5
MIME-Version: 1.0
X-TM-SNTS-SMTP: 4B7BB4B967302A6224F3882B8C334D65CEAC8A715A37D03142A05D2B0A9A4D852000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190805_021224_685241_C5E71FD2 
X-CRM114-Status: UNSURE (   7.95  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: devicetree@vger.kernel.org, CC Hwang <cc.hwang@mediatek.com>,
 wsd_upstream@mediatek.com, Loda Chou <loda.chou@mediatek.com>,
 linux-kernel@vger.kernel.org, linux-mediatek@lists.infradead.org,
 Wendell Lin <wendell.lin@mediatek.com>, Ivan Tseng <ivan.tseng@mediatek.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

This patchset is based on v5.3-rc1. Basic SoC support for the new Mediatek
SoC, MT6779, which targets for smartphone.

It provides ccf, pinctrl, uart, timer, gic...etc. We will also upstream
other parts of this SoC very soon.


Mars Cheng (8):
  dt-bindings: mediatek: add support for mt6779 reference board
  dt-bindings: mtk-uart: add mt6779 uart bindings
  dt-bindings: irq: mtk,sysirq: add support for mt6779
  pinctrl: mediatek: update pinmux defintions for mt6779
  pinctrl: mediatek: avoid virtual gpio trying to set reg
  pinctrl: mediatek: add pinctrl support for MT6779 SoC
  pinctrl: mediatek: add mt6779 eint support
  arm64: dts: add dts nodes for MT6779

mtk01761 (3):
  dt-bindings: mediatek: bindings for MT6779 clk
  clk: mediatek: Add dt-bindings for MT6779 clocks
  clk: mediatek: Add MT6779 clock support

 .../devicetree/bindings/arm/mediatek.yaml     |    4 +
 .../arm/mediatek/mediatek,apmixedsys.txt      |    1 +
 .../bindings/arm/mediatek/mediatek,audsys.txt |    1 +
 .../bindings/arm/mediatek/mediatek,camsys.txt |    1 +
 .../bindings/arm/mediatek/mediatek,imgsys.txt |    1 +
 .../arm/mediatek/mediatek,infracfg.txt        |    1 +
 .../bindings/arm/mediatek/mediatek,ipesys.txt |   22 +
 .../bindings/arm/mediatek/mediatek,mfgcfg.txt |    1 +
 .../bindings/arm/mediatek/mediatek,mmsys.txt  |    1 +
 .../arm/mediatek/mediatek,topckgen.txt        |    1 +
 .../arm/mediatek/mediatek,vdecsys.txt         |    1 +
 .../arm/mediatek/mediatek,vencsys.txt         |    1 +
 .../interrupt-controller/mediatek,sysirq.txt  |    1 +
 .../devicetree/bindings/serial/mtk-uart.txt   |    1 +
 arch/arm64/boot/dts/mediatek/Makefile         |    1 +
 arch/arm64/boot/dts/mediatek/mt6779-evb.dtsi  |   99 +
 arch/arm64/boot/dts/mediatek/mt6779.dts       |  229 ++
 drivers/clk/mediatek/Kconfig                  |   56 +
 drivers/clk/mediatek/Makefile                 |    9 +
 drivers/clk/mediatek/clk-mt6779-aud.c         |  125 +
 drivers/clk/mediatek/clk-mt6779-cam.c         |   66 +
 drivers/clk/mediatek/clk-mt6779-img.c         |   58 +
 drivers/clk/mediatek/clk-mt6779-ipe.c         |   60 +
 drivers/clk/mediatek/clk-mt6779-mfg.c         |   55 +
 drivers/clk/mediatek/clk-mt6779-mm.c          |  113 +
 drivers/clk/mediatek/clk-mt6779-vdec.c        |   68 +
 drivers/clk/mediatek/clk-mt6779-venc.c        |   58 +
 drivers/clk/mediatek/clk-mt6779.c             | 1553 ++++++++++++
 drivers/pinctrl/mediatek/Kconfig              |    7 +
 drivers/pinctrl/mediatek/Makefile             |    1 +
 drivers/pinctrl/mediatek/pinctrl-mt6779.c     |  783 +++++++
 .../pinctrl/mediatek/pinctrl-mtk-common-v2.c  |   20 +
 .../pinctrl/mediatek/pinctrl-mtk-common-v2.h  |    1 +
 drivers/pinctrl/mediatek/pinctrl-mtk-mt6779.h | 2085 +++++++++++++++++
 drivers/pinctrl/mediatek/pinctrl-paris.c      |    3 +
 include/dt-bindings/clock/mt6779-clk.h        |  436 ++++
 include/dt-bindings/pinctrl/mt6779-pinfunc.h  | 1242 ++++++++++
 37 files changed, 7166 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/arm/mediatek/mediatek,ipesys.txt
 create mode 100644 arch/arm64/boot/dts/mediatek/mt6779-evb.dtsi
 create mode 100644 arch/arm64/boot/dts/mediatek/mt6779.dts
 create mode 100644 drivers/clk/mediatek/clk-mt6779-aud.c
 create mode 100644 drivers/clk/mediatek/clk-mt6779-cam.c
 create mode 100644 drivers/clk/mediatek/clk-mt6779-img.c
 create mode 100644 drivers/clk/mediatek/clk-mt6779-ipe.c
 create mode 100644 drivers/clk/mediatek/clk-mt6779-mfg.c
 create mode 100644 drivers/clk/mediatek/clk-mt6779-mm.c
 create mode 100644 drivers/clk/mediatek/clk-mt6779-vdec.c
 create mode 100644 drivers/clk/mediatek/clk-mt6779-venc.c
 create mode 100644 drivers/clk/mediatek/clk-mt6779.c
 create mode 100644 drivers/pinctrl/mediatek/pinctrl-mt6779.c
 create mode 100644 drivers/pinctrl/mediatek/pinctrl-mtk-mt6779.h
 create mode 100644 include/dt-bindings/clock/mt6779-clk.h
 create mode 100644 include/dt-bindings/pinctrl/mt6779-pinfunc.h

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
