Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B8B8384C04
	for <lists+linux-mediatek@lfdr.de>; Wed,  7 Aug 2019 14:49:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:
	In-Reply-To:Message-ID:Date:Subject:To:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ETL/gq2RBpFVYAWVBC+VdjEFL8XACzui0HiXfvNo0d0=; b=A5IjgqUhsblnQO
	OXCpB1/UZjjLqV4qzcQxJezwDTrdjmWQvqV/29d+fpUrIpNMPqywBY7Unea6V/k5cTK8akdpE7pUg
	fvX/US6biQlO/91sYPqTTA7dFpGeSynrshgy4X2QctHNJTBkqhsx81rtlr526Vhg34sE9Ia0B2V0W
	mErmeZzqOdFb1Fm9B1o4cGv9ReCzibtrVS/BelCggq5yvPVz8V9bSVXBOiuELFeKWzf4Uj8myEV4Y
	boImZY8ZmPuvCmbjNpIBOl/Ybwt124gCRNhMz/IOhGZB420xnGI62TvRw3FDZ+5hJMR2/S5jDG0SY
	s3tKv1TADIbN13b+rghg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvLNU-0005js-Hp; Wed, 07 Aug 2019 12:49:16 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvLMy-0005LC-M8; Wed, 07 Aug 2019 12:48:45 +0000
X-UUID: de1b60999911453dae746138af14a096-20190807
X-UUID: de1b60999911453dae746138af14a096-20190807
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw02.mediatek.com
 (envelope-from <jungo.lin@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 955386610; Wed, 07 Aug 2019 04:48:40 -0800
Received: from mtkmbs08n1.mediatek.inc (172.21.101.55) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 7 Aug 2019 05:48:38 -0700
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 mtkmbs08n1.mediatek.inc (172.21.101.55) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 7 Aug 2019 20:48:30 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Wed, 7 Aug 2019 20:48:30 +0800
From: Jungo Lin <jungo.lin@mediatek.com>
To: <tfiga@chromium.org>, <hverkuil-cisco@xs4all.nl>,
 <laurent.pinchart@ideasonboard.com>, <matthias.bgg@gmail.com>,
 <mchehab@kernel.org>
Subject: [RFC,v4,2/4] dts: arm64: mt8183: Add ISP Pass 1 nodes
Date: Wed, 7 Aug 2019 20:48:01 +0800
Message-ID: <20190807124803.29884-3-jungo.lin@mediatek.com>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <20190807124803.29884-1-jungo.lin@mediatek.com>
References: <Jungo Lin <jungo.lin@mediatek.com>
 <20190807124803.29884-1-jungo.lin@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190807_054844_727304_32F15B64 
X-CRM114-Status: UNSURE (   6.93  )
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
Reply-To: Jungo Lin <jungo.lin@mediatek.com>
Cc: shik@chromium.org, devicetree@vger.kernel.org, Sean.Cheng@mediatek.com,
 suleiman@chromium.org, Rynn.Wu@mediatek.com, srv_heupstream@mediatek.com,
 robh@kernel.org, ryan.yu@mediatek.com, Jerry-ch.Chen@mediatek.com,
 frankie.chiu@mediatek.com, jungo.lin@mediatek.com, sj.huang@mediatek.com,
 yuzhao@chromium.org, linux-mediatek@lists.infradead.org, zwisler@chromium.org,
 ddavenport@chromium.org, frederic.chen@mediatek.com,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Add nodes for Pass 1 unit of Mediatek's camera ISP system.
Pass 1 unit embedded in Mediatek SoCs, works with the
co-processor to process image signal from the image sensor
and output RAW image data.

Signed-off-by: Jungo Lin <jungo.lin@mediatek.com>
---
 arch/arm64/boot/dts/mediatek/mt8183.dtsi | 31 ++++++++++++++++++++++++
 1 file changed, 31 insertions(+)

diff --git a/arch/arm64/boot/dts/mediatek/mt8183.dtsi b/arch/arm64/boot/dts/mediatek/mt8183.dtsi
index 111866d36862..1692466c62fc 100644
--- a/arch/arm64/boot/dts/mediatek/mt8183.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8183.dtsi
@@ -487,6 +487,37 @@
 			#clock-cells = <1>;
 		};
 
+		camisp: camisp@1a000000 {
+			compatible = "mediatek,mt8183-camisp", "syscon";
+			reg = <0 0x1a000000 0 0x1000>,
+					<0 0x1a003000 0 0x1000>,
+					<0 0x1a004000 0 0x2000>,
+					<0 0x1a006000 0 0x2000>,
+					<0 0x1a008000 0 0x2000>;
+			reg-names = "cam_sys",
+					"cam_uni",
+					"cam_a",
+					"cam_b",
+					"cam_c";
+			interrupts = <GIC_SPI 253 IRQ_TYPE_LEVEL_LOW>,
+					<GIC_SPI 254 IRQ_TYPE_LEVEL_LOW>,
+					<GIC_SPI 255 IRQ_TYPE_LEVEL_LOW>,
+					<GIC_SPI 256 IRQ_TYPE_LEVEL_LOW>;
+			interrupt-names = "cam_uni",
+					"cam_a",
+					"cam_b",
+					"cam_c";
+			iommus = <&iommu M4U_PORT_CAM_IMGO>;
+			clocks = <&camsys CLK_CAM_CAM>,
+					<&camsys CLK_CAM_CAMTG>;
+			clock-names = "camsys_cam_cgpdn",
+					"camsys_camtg_cgpdn";
+			mediatek,larb = <&larb3>,
+					<&larb6>;
+			power-domains = <&scpsys MT8183_POWER_DOMAIN_CAM>;
+			mediatek,scp = <&scp>;
+		};
+
 		larb6: larb@1a001000 {
 			compatible = "mediatek,mt8183-smi-larb";
 			reg = <0 0x1a001000 0 0x1000>;
-- 
2.18.0


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
