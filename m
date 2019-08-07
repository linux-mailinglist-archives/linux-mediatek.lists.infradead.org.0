Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F27684432
	for <lists+linux-mediatek@lfdr.de>; Wed,  7 Aug 2019 08:04:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=P1qbZbEigF6zXSyUDJcQ3ahYocdBUqzL9aEsBNm0Q1s=; b=KED87bPrueqnYn
	KNiuZ2oPy67l9sVRXqTl4C7YkyctzDrXPSabgbgwBc3tVoISrPsjByARHXsJOKj21W2W3XeEXs4/Q
	+kZV6/Q72MXjNuYObJaELsa8fKQPVMtb8s5AEVWdESifjcYUGQajJjwXpVW0KVM9H/N4EosQq/C2p
	k0VbpKVLArMAy6awWFmc4IMkHDM2qaf1josREoF5ZelB2SlZmk3dPZfUrPirWlCqsgiGZa0dR4UPH
	H4zdlW2FbGzutgka4i2jukdKCnpHcuiHlFabedQfpWQ/yPTsiNLciq+dbBKVP0GRPv7xR3Z36Kb7Q
	iflJtLhqJ0Q6Df1WUrIQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvF3L-0001dr-JS; Wed, 07 Aug 2019 06:04:03 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvF2c-0000k5-TE; Wed, 07 Aug 2019 06:03:20 +0000
X-UUID: 68c4016242e24e1e8d5e4d9587a15dd9-20190806
X-UUID: 68c4016242e24e1e8d5e4d9587a15dd9-20190806
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <jitao.shi@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 397294355; Tue, 06 Aug 2019 22:03:10 -0800
Received: from MTKMBS33N1.mediatek.inc (172.27.4.75) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 6 Aug 2019 23:03:08 -0700
Received: from MTKCAS36.mediatek.inc (172.27.4.186) by MTKMBS33N1.mediatek.inc
 (172.27.4.75) with Microsoft SMTP Server (TLS) id 15.0.1395.4;
 Wed, 7 Aug 2019 14:03:04 +0800
Received: from mszsdclx1018.gcn.mediatek.inc (172.27.4.253) by
 MTKCAS36.mediatek.inc (172.27.4.170) with Microsoft SMTP Server id
 15.0.1395.4 via Frontend Transport; Wed, 7 Aug 2019 14:03:02 +0800
From: Jitao Shi <jitao.shi@mediatek.com>
To: Rob Herring <robh+dt@kernel.org>, Pawel Moll <pawel.moll@arm.com>, "Mark
 Rutland" <mark.rutland@arm.com>, Ian Campbell
 <ijc+devicetree@hellion.org.uk>, <linux-pwm@vger.kernel.org>, David Airlie
 <airlied@linux.ie>, "Matthias Brugger" <matthias.bgg@gmail.com>
Subject: [PATCH v5 1/4] dt-bindings: display: mediatek: update dpi supported
 chips
Date: Wed, 7 Aug 2019 14:02:54 +0800
Message-ID: <20190807060257.57007-2-jitao.shi@mediatek.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190807060257.57007-1-jitao.shi@mediatek.com>
References: <20190807060257.57007-1-jitao.shi@mediatek.com>
MIME-Version: 1.0
X-TM-SNTS-SMTP: C69E228641317CEF5F977F938A43637FA6695ED07D1225B291DE2BC80CE66BAA2000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190806_230318_949562_C4548789 
X-CRM114-Status: UNSURE (   7.64  )
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
Cc: stonea168@163.com, dri-devel@lists.freedesktop.org,
 Andy Yan <andy.yan@rock-chips.com>, Ajay Kumar <ajaykumar.rs@samsung.com>,
 Vincent Palatin <vpalatin@chromium.org>, cawa.cheng@mediatek.com,
 bibby.hsieh@mediatek.com, ck.hu@mediatek.com,
 Russell King <rmk+kernel@arm.linux.org.uk>,
 Thierry Reding <treding@nvidia.com>, devicetree@vger.kernel.org,
 Jitao Shi <jitao.shi@mediatek.com>, Philipp Zabel <p.zabel@pengutronix.de>,
 Inki Dae <inki.dae@samsung.com>, linux-mediatek@lists.infradead.org,
 yingjoe.chen@mediatek.com, eddie.huang@mediatek.com,
 linux-arm-kernel@lists.infradead.org, Rahul Sharma <rahul.sharma@samsung.com>,
 srv_heupstream@mediatek.com, linux-kernel@vger.kernel.org,
 Sascha Hauer <kernel@pengutronix.de>, Sean Paul <seanpaul@chromium.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Add decriptions about supported chips, including MT2701 & MT8173 &
mt8183

Signed-off-by: Jitao Shi <jitao.shi@mediatek.com>
---
 .../bindings/display/mediatek/mediatek,dpi.txt        | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/mediatek/mediatek,dpi.txt b/Documentation/devicetree/bindings/display/mediatek/mediatek,dpi.txt
index b6a7e7397b8b..cd6a1469c8b7 100644
--- a/Documentation/devicetree/bindings/display/mediatek/mediatek,dpi.txt
+++ b/Documentation/devicetree/bindings/display/mediatek/mediatek,dpi.txt
@@ -7,6 +7,7 @@ output bus.
 
 Required properties:
 - compatible: "mediatek,<chip>-dpi"
+  the supported chips are mt2701 , mt8173 and mt8183.
 - reg: Physical base address and length of the controller's registers
 - interrupts: The interrupt signal from the function block.
 - clocks: device clocks
@@ -16,6 +17,11 @@ Required properties:
   Documentation/devicetree/bindings/graph.txt. This port should be connected
   to the input port of an attached HDMI or LVDS encoder chip.
 
+Optional properties:
+- dpi_pin_mode_swap: Swap the pin mode between dpi mode and gpio mode.
+- pinctrl-names: Contain "gpiomode" and "dpimode".
+- dpi_dual_edge: Control the RGB 24bit data on 12 pins or 24 pins.
+
 Example:
 
 dpi0: dpi@1401d000 {
@@ -26,6 +32,11 @@ dpi0: dpi@1401d000 {
 		 <&mmsys CLK_MM_DPI_ENGINE>,
 		 <&apmixedsys CLK_APMIXED_TVDPLL>;
 	clock-names = "pixel", "engine", "pll";
+	dpi_dual_edge;
+	dpi_pin_mode_swap;
+	pinctrl-names = "gpiomode", "dpimode";
+	pinctrl-0 = <&dpi_pin_gpio>;
+	pinctrl-1 = <&dpi_pin_func>;
 
 	port {
 		dpi0_out: endpoint {
-- 
2.21.0


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
