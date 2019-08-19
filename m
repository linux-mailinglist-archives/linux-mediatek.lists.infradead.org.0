Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3965C9202B
	for <lists+linux-mediatek@lfdr.de>; Mon, 19 Aug 2019 11:23:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=/9ySziMAEvkrVzhcYc/C9VwID9yV52uOsSEd0WvhYa4=; b=WwePgooTk6h9hV
	ZahepJzFcWX1vDiEZ2hjPfqqGcVZQsRQWSlqAm3PrjpGvim5p9vpDnPL9N5C09BynLop+8kB6J2dn
	ztTqy2fzt43pMv/GUdMHT+RyudEtMVHQI/+GFZjKntQoPjbD7JXEoF26TiiurwP8ADhjOm2GPJVDZ
	k/NGaS2QKgRJMKDu6eDm1RA3iOr6icLWPr1UC3olKKnF51Pb5XpfP6b4TtjUlpjbNb331V8aEQwfj
	OelciwxUU1OLN2xX0zo2ZV4ccY6aEa2p2usCV9VuYlBbBSTaZJSUvN9FwLxjazqNXaEJ9wOBdeG4c
	IsvP0wv182gqqbG09OdQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzdsW-0006FJ-KT; Mon, 19 Aug 2019 09:23:04 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hzdrg-0005LR-LP
 for linux-mediatek@lists.infradead.org; Mon, 19 Aug 2019 09:22:15 +0000
X-UUID: ec9fd0da8a50447a99c3d4b48c222917-20190819
X-UUID: ec9fd0da8a50447a99c3d4b48c222917-20190819
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw02.mediatek.com
 (envelope-from <mars.cheng@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1177526222; Mon, 19 Aug 2019 01:22:03 -0800
Received: from mtkmbs08n2.mediatek.inc (172.21.101.56) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 19 Aug 2019 02:22:02 -0700
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 mtkmbs08n2.mediatek.inc (172.21.101.56) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 19 Aug 2019 17:22:00 +0800
Received: from mtkswgap22.mediatek.inc (172.21.77.33) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Mon, 19 Aug 2019 17:22:00 +0800
From: Mars Cheng <mars.cheng@mediatek.com>
To: Matthias Brugger <matthias.bgg@gmail.com>, Rob Herring <robh@kernel.org>, 
 Marc Zyngier <marc.zyngier@arm.com>, Stephen Boyd <sboyd@kernel.org>, "Sean
 Wang" <sean.wang@kernel.org>, Linus Walleij <linus.walleij@linaro.org>
Subject: [PATCHv2 00/11] Add basic SoC Support for Mediatek MT6779 SoC
Date: Mon, 19 Aug 2019 17:21:31 +0800
Message-ID: <1566206502-4347-1-git-send-email-mars.cheng@mediatek.com>
X-Mailer: git-send-email 1.7.9.5
MIME-Version: 1.0
X-TM-SNTS-SMTP: D2DE206C8813DC47ED7261D11FDE95B6936DD33B5D67B0F8EC1338EF0A6DBB962000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190819_022212_901531_5CB77D62 
X-CRM114-Status: UNSURE (   8.71  )
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
Cc: devicetree@vger.kernel.org, CC Hwang <cc.hwang@mediatek.com>,
 wsd_upstream@mediatek.com, Loda Chou <loda.chou@mediatek.com>,
 linux-kernel@vger.kernel.org, linux-mediatek@lists.infradead.org,
 mtk01761 <wendell.lin@mediatek.com>, linux-clk@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

This patchset is based on v5.3-rc1. Basic SoC support for the new Mediatek
SoC, MT6779, which targets for smartphone.

It provides ccf, pinctrl, uart, timer, gic...etc.

Change History:

v2:
1. add Reviewed-by tags
2. fix checkpatch warnings with strict level

v1:
first patchset


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

 .../devicetree/bindings/arm/mediatek.yaml          |    4 +
 .../bindings/arm/mediatek/mediatek,apmixedsys.txt  |    1 +
 .../bindings/arm/mediatek/mediatek,audsys.txt      |    1 +
 .../bindings/arm/mediatek/mediatek,camsys.txt      |    1 +
 .../bindings/arm/mediatek/mediatek,imgsys.txt      |    1 +
 .../bindings/arm/mediatek/mediatek,infracfg.txt    |    1 +
 .../bindings/arm/mediatek/mediatek,ipesys.txt      |   22 +
 .../bindings/arm/mediatek/mediatek,mfgcfg.txt      |    1 +
 .../bindings/arm/mediatek/mediatek,mmsys.txt       |    1 +
 .../bindings/arm/mediatek/mediatek,topckgen.txt    |    1 +
 .../bindings/arm/mediatek/mediatek,vdecsys.txt     |    1 +
 .../bindings/arm/mediatek/mediatek,vencsys.txt     |    1 +
 .../interrupt-controller/mediatek,sysirq.txt       |    1 +
 .../devicetree/bindings/serial/mtk-uart.txt        |    1 +
 arch/arm64/boot/dts/mediatek/Makefile              |    1 +
 arch/arm64/boot/dts/mediatek/mt6779-evb.dtsi       |   31 +
 arch/arm64/boot/dts/mediatek/mt6779.dts            |  229 +++
 drivers/clk/mediatek/Kconfig                       |   56 +
 drivers/clk/mediatek/Makefile                      |    9 +
 drivers/clk/mediatek/clk-mt6779-aud.c              |  117 ++
 drivers/clk/mediatek/clk-mt6779-cam.c              |   66 +
 drivers/clk/mediatek/clk-mt6779-img.c              |   58 +
 drivers/clk/mediatek/clk-mt6779-ipe.c              |   60 +
 drivers/clk/mediatek/clk-mt6779-mfg.c              |   55 +
 drivers/clk/mediatek/clk-mt6779-mm.c               |  113 ++
 drivers/clk/mediatek/clk-mt6779-vdec.c             |   67 +
 drivers/clk/mediatek/clk-mt6779-venc.c             |   58 +
 drivers/clk/mediatek/clk-mt6779.c                  | 1315 ++++++++++++
 drivers/pinctrl/mediatek/Kconfig                   |    7 +
 drivers/pinctrl/mediatek/Makefile                  |    1 +
 drivers/pinctrl/mediatek/pinctrl-mt6779.c          |  783 ++++++++
 drivers/pinctrl/mediatek/pinctrl-mtk-common-v2.c   |   20 +
 drivers/pinctrl/mediatek/pinctrl-mtk-common-v2.h   |    1 +
 drivers/pinctrl/mediatek/pinctrl-mtk-mt6779.h      | 2085 ++++++++++++++++++++
 drivers/pinctrl/mediatek/pinctrl-paris.c           |    3 +
 include/dt-bindings/clock/mt6779-clk.h             |  436 ++++
 include/dt-bindings/pinctrl/mt6779-pinfunc.h       | 1242 ++++++++++++
 37 files changed, 6851 insertions(+)
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
