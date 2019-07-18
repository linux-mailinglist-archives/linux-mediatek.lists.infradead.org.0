Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C6656CA90
	for <lists+linux-mediatek@lfdr.de>; Thu, 18 Jul 2019 10:02:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VDQCdh18eehD3kPYBGCxppQnbcit+KOlXZqgnup+8Ic=; b=VzTGE4lBJAin/F
	13Fn5B/XPf6p+gJImkD9g1GNvVVq1jLpgR7unLXu7ubfWBCxmLW0HmNP8hHKpppNsXauwWwzWNVNh
	TAe67B//FG+SQYJiafe+M/GCA3+xDPM5bXU2m9nnAelbvvPPi2kiOIjYUqd9Zfu+iVmDnlngDaSj/
	OwCYcbEgKN8SvaCr+lKgYsm9ZPf+B2CK/pjdmIfldgjsN2G9vevPrkp2RWq8Q2s8QMYD+PpTbYxIC
	1hBWZFPoFY+yNjapLECLeuQyKA3vcxlxReTV1dy/pfOVslrUEZCTHNj/Rm/wqFhlv3fSfaWC2AOPZ
	pAdH9gN7l2oHnyBUbqEQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1ho1Mm-0001O6-NV; Thu, 18 Jul 2019 08:02:16 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1ho1M9-0000vw-H9; Thu, 18 Jul 2019 08:01:39 +0000
X-UUID: 6ad5c864ddc6460fb00fae8c4852cdaa-20190718
X-UUID: 6ad5c864ddc6460fb00fae8c4852cdaa-20190718
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <zhiyong.tao@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1877761854; Thu, 18 Jul 2019 00:01:34 -0800
Received: from MTKMBS01N1.mediatek.inc (172.21.101.68) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 18 Jul 2019 01:01:32 -0700
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs01n1.mediatek.inc (172.21.101.68) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 18 Jul 2019 16:01:25 +0800
Received: from localhost.localdomain (10.17.3.153) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Thu, 18 Jul 2019 16:01:24 +0800
From: Zhiyong Tao <zhiyong.tao@mediatek.com>
To: <robh+dt@kernel.org>, <jic23@kernel.org>, <knaack.h@gmx.de>,
 <lars@metafoo.de>, <pmeerw@pmeerw.net>
Subject: [PATCH v1 1/2] arm64: dts: mt8183: auxadc: add efuse information in
 device tree
Date: Thu, 18 Jul 2019 16:01:18 +0800
Message-ID: <20190718080119.30707-2-zhiyong.tao@mediatek.com>
X-Mailer: git-send-email 2.12.5
In-Reply-To: <20190718080119.30707-1-zhiyong.tao@mediatek.com>
References: <20190718080119.30707-1-zhiyong.tao@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190718_010137_592735_FF06C1E3 
X-CRM114-Status: UNSURE (   7.88  )
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
Cc: devicetree@vger.kernel.org, sean.wang@mediatek.com,
 srv_heupstream@mediatek.com, linux-iio@vger.kernel.org,
 Zhiyong Tao <zhiyong.tao@mediatek.com>, erin.lo@mediatek.com,
 hui.liu@mediatek.com, linux-kernel@vger.kernel.org, sj.huang@mediatek.com,
 linux-mediatek@lists.infradead.org, eddie.huang@mediatek.com,
 matthias.bgg@gmail.com, yingjoe.chen@mediatek.com, jg_poxu@mediatek.com,
 s.hauer@pengutronix.de, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

The commit add add efuse information in device tree

Signed-off-by: Zhiyong Tao <zhiyong.tao@mediatek.com>
Signed-off-by: jg_poxu <jg_poxu@mediatek.com>
---
 arch/arm64/boot/dts/mediatek/mt8183.dtsi | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/arch/arm64/boot/dts/mediatek/mt8183.dtsi b/arch/arm64/boot/dts/mediatek/mt8183.dtsi
index c2749c4631bc..59b4f3d933b5 100644
--- a/arch/arm64/boot/dts/mediatek/mt8183.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8183.dtsi
@@ -261,6 +261,8 @@
 			clocks = <&infracfg CLK_INFRA_AUXADC>;
 			clock-names = "main";
 			#io-channel-cells = <1>;
+			nvmem-cells = <&auxadc_calibration>;
+			nvmem-cell-names = "calibration-data";
 			status = "disabled";
 		};
 
@@ -382,6 +384,9 @@
 			compatible = "mediatek,mt8183-efuse",
 				     "mediatek,efuse";
 			reg = <0 0x11f10000 0 0x1000>;
+			auxadc_calibration: auxadccali@1b4 {
+				reg = <0x1b4 0x4>;
+			};
 		};
 
 		mfgcfg: syscon@13000000 {
-- 
2.12.5


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
