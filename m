Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 13DC7A01A6
	for <lists+linux-mediatek@lfdr.de>; Wed, 28 Aug 2019 14:29:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xXpU1KmG6BW+7PatLrgj2jfPOBg2t7rSMMFgzuZ2B7E=; b=BqY1mmRQq5DEoB
	lhZAGfaxWM7T8fe3zVbVeOvw8P3F5cgg+dC8wjPbUOWK3YlXS+WRyInklucl7wzpOvM/KAa76UABY
	KnbSKKoUv3DNdxMk2zHwhDZd0pKza6gFwZziKM9UWPBfUQsMw/PEa3bdAQN0ZcvQK1hhlOweB6FNP
	/EMIKQ0COdzfsa22UJ9Ei8V8fLTSslbXb+v0+mEwKLcHx+zF3yvUOeF4JU6UDwvaGp04a5c2ds/Om
	RXv2ZUjhHztF1X9JT+Sx+2JltbLxsR/fV1uijPG/OGHa6KCVlbD2q1xZVDrIs9kaS/pkaJ7+QLris
	qARV7uwYwlOF60qQz7Dw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2x51-0002wl-Ny; Wed, 28 Aug 2019 12:29:39 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2x4M-0002Lx-Op; Wed, 28 Aug 2019 12:29:00 +0000
X-UUID: 829c9f604ab64baaacfad5980bd965b0-20190828
X-UUID: 829c9f604ab64baaacfad5980bd965b0-20190828
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw02.mediatek.com
 (envelope-from <henryc.chen@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1350764421; Wed, 28 Aug 2019 04:29:01 -0800
Received: from MTKMBS01N2.mediatek.inc (172.21.101.79) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 28 Aug 2019 05:29:00 -0700
Received: from mtkcas09.mediatek.inc (172.21.101.178) by
 mtkmbs01n2.mediatek.inc (172.21.101.79) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 28 Aug 2019 20:28:58 +0800
Received: from mtksdaap41.mediatek.inc (172.21.77.4) by mtkcas09.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Wed, 28 Aug 2019 20:28:58 +0800
From: Henry Chen <henryc.chen@mediatek.com>
To: Georgi Djakov <georgi.djakov@linaro.org>, Rob Herring
 <robh+dt@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>, Viresh Kumar
 <vireshk@kernel.org>, Stephen Boyd <swboyd@chromium.org>, Ryan Case
 <ryandcase@chromium.org>
Subject: [PATCH V3 04/10] arm64: dts: mt8183: add performance state support of
 scpsys
Date: Wed, 28 Aug 2019 20:28:42 +0800
Message-ID: <1566995328-15158-5-git-send-email-henryc.chen@mediatek.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1566995328-15158-1-git-send-email-henryc.chen@mediatek.com>
References: <1566995328-15158-1-git-send-email-henryc.chen@mediatek.com>
MIME-Version: 1.0
X-TM-SNTS-SMTP: 10D13BFB56F081C114B106C0DBB1CD118FC6552153BCB6FE09CCA6277A5ACEB12000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190828_052858_810381_D7E45C2F 
X-CRM114-Status: UNSURE (   9.17  )
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
Cc: James Liao <jamesjj.liao@mediatek.com>, Weiyi Lu <weiyi.lu@mediatek.com>,
 Nicolas Boichat <drinkcat@google.com>, linux-kernel@vger.kernel.org, Henry
 Chen <henryc.chen@mediatek.com>, Fan Chen <fan.chen@mediatek.com>,
 devicetree@vger.kernel.org, linux-mediatek@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Add support for performance state of scpsys on mt8183 platform.

Signed-off-by: Henry Chen <henryc.chen@mediatek.com>
---
 arch/arm64/boot/dts/mediatek/mt8183.dtsi | 21 +++++++++++++++++++++
 1 file changed, 21 insertions(+)

diff --git a/arch/arm64/boot/dts/mediatek/mt8183.dtsi b/arch/arm64/boot/dts/mediatek/mt8183.dtsi
index 66aaa07..a58999f 100644
--- a/arch/arm64/boot/dts/mediatek/mt8183.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8183.dtsi
@@ -10,6 +10,7 @@
 #include <dt-bindings/interrupt-controller/irq.h>
 #include <dt-bindings/power/mt8183-power.h>
 #include "mt8183-pinfunc.h"
+#include <dt-bindings/soc/mtk,dvfsrc.h>
 
 / {
 	compatible = "mediatek,mt8183";
@@ -293,6 +294,26 @@
 				      "vpu-3", "vpu-4", "vpu-5";
 			infracfg = <&infracfg>;
 			smi_comm = <&smi_common>;
+			operating-points-v2 = <&dvfsrc_opp_table>;
+			dvfsrc_opp_table: opp-table {
+				compatible = "operating-points-v2-level";
+
+				dvfsrc_vol_min: opp1 {
+					opp,level = <MT8183_DVFSRC_LEVEL_1>;
+				};
+
+				dvfsrc_freq_medium: opp2 {
+					opp,level = <MT8183_DVFSRC_LEVEL_2>;
+				};
+
+				dvfsrc_freq_max: opp3 {
+					opp,level = <MT8183_DVFSRC_LEVEL_3>;
+				};
+
+				dvfsrc_vol_max: opp4 {
+					opp,level = <MT8183_DVFSRC_LEVEL_4>;
+				};
+			};
 		};
 
 		apmixedsys: syscon@1000c000 {
-- 
1.9.1


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
