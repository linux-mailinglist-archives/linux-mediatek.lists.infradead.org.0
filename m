Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 64BC92B0F9
	for <lists+linux-mediatek@lfdr.de>; Mon, 27 May 2019 11:07:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aeETfv3RC/gKnpPM1oAzihXRIrHLINkaF18slVd9HlY=; b=M2Xb6Zbn33e6uY
	rliUza7UnrR8hRZQXkg3JJ7LV+oHSewJPm5Sf2fs0Y23MlbJ+BEMB2GbH0XA3J3Tw/w1klyMeofaL
	wN9qsWGEG072P5sO5TvWgz1oECOpFy5oMBM0fUPXI1UZVc9X2NlXhLcqGjwocCwENHRcB4qt07VJe
	ZwDUS7kUIoSUzYZ9P1CBok3nYrTJK3jC9vy7g5cecD2ux0ePrABnfaDP+qs/P5rXjn6aEJjrTor4r
	xwSt8MGMc6DtoTTIChf60eoGyziOz9y3WC2gODviGzzEoRY4CWzRsohWMmLJ2NeTWylRBYqACB3go
	FTgdCRTKWDY8isyuVCHg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVBbE-0007wv-EG; Mon, 27 May 2019 09:07:20 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVBb4-0007pS-Cy; Mon, 27 May 2019 09:07:11 +0000
X-UUID: 18607ee3cc5d4b7faa376414a9eb152d-20190527
X-UUID: 18607ee3cc5d4b7faa376414a9eb152d-20190527
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw02.mediatek.com
 (envelope-from <erin.lo@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1430786797; Mon, 27 May 2019 01:05:19 -0800
Received: from mtkmbs08n2.mediatek.inc (172.21.101.56) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 27 May 2019 02:05:18 -0700
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 mtkmbs08n2.mediatek.inc (172.21.101.56) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 27 May 2019 17:05:16 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Mon, 27 May 2019 17:05:16 +0800
From: Erin Lo <erin.lo@mediatek.com>
To: Matthias Brugger <matthias.bgg@gmail.com>, Rob Herring
 <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>
Subject: [PATCH v11 4/6] arm64: dts: mt8183: Add auxadc device node
Date: Mon, 27 May 2019 17:04:45 +0800
Message-ID: <1558947887-31084-5-git-send-email-erin.lo@mediatek.com>
X-Mailer: git-send-email 1.8.1.1.dirty
In-Reply-To: <1558947887-31084-1-git-send-email-erin.lo@mediatek.com>
References: <1558947887-31084-1-git-send-email-erin.lo@mediatek.com>
MIME-Version: 1.0
X-TM-SNTS-SMTP: 86344F063E3902451D494428EC4852C3D770CB4FF77B6F9EFE88C0BD1F55C02B2000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190527_020710_445856_DE1FC3BE 
X-CRM114-Status: UNSURE (   9.40  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
X-BeenThere: linux-mediatek@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-mediatek.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-mediatek>, 
 <mailto:linux-mediatek-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-mediatek/>
List-Post: <mailto:linux-mediatek@lists.infradead.org>
List-Help: <mailto:linux-mediatek-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-mediatek>, 
 <mailto:linux-mediatek-request@lists.infradead.org?subject=subscribe>
Cc: devicetree@vger.kernel.org, srv_heupstream <srv_heupstream@mediatek.com>,
 Zhiyong Tao <zhiyong.tao@mediatek.com>, erin.lo@mediatek.com,
 linux-kernel@vger.kernel.org, linux-mediatek@lists.infradead.org,
 linux-serial@vger.kernel.org, mars.cheng@mediatek.com,
 eddie.huang@mediatek.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

From: Zhiyong Tao <zhiyong.tao@mediatek.com>

Add auxadc device node for MT8183

Signed-off-by: Zhiyong Tao <zhiyong.tao@mediatek.com>
Signed-off-by: Erin Lo <erin.lo@mediatek.com>
---
This patch is based on patch "https://patchwork.kernel.org/patch/10913941/".
---
 arch/arm64/boot/dts/mediatek/mt8183-evb.dts |  4 ++++
 arch/arm64/boot/dts/mediatek/mt8183.dtsi    | 10 ++++++++++
 2 files changed, 14 insertions(+)

diff --git a/arch/arm64/boot/dts/mediatek/mt8183-evb.dts b/arch/arm64/boot/dts/mediatek/mt8183-evb.dts
index 9b52559..49909ac 100644
--- a/arch/arm64/boot/dts/mediatek/mt8183-evb.dts
+++ b/arch/arm64/boot/dts/mediatek/mt8183-evb.dts
@@ -26,6 +26,10 @@
 	};
 };
 
+&auxadc {
+	status = "okay";
+};
+
 &uart0 {
 	status = "okay";
 };
diff --git a/arch/arm64/boot/dts/mediatek/mt8183.dtsi b/arch/arm64/boot/dts/mediatek/mt8183.dtsi
index e74ea21..5672c18 100644
--- a/arch/arm64/boot/dts/mediatek/mt8183.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8183.dtsi
@@ -245,6 +245,16 @@
 			clock-names = "spi", "wrap";
 		};
 
+		auxadc: auxadc@11001000 {
+			compatible = "mediatek,mt8183-auxadc",
+				     "mediatek,mt8173-auxadc";
+			reg = <0 0x11001000 0 0x1000>;
+			clocks = <&infracfg CLK_INFRA_AUXADC>;
+			clock-names = "main";
+			#io-channel-cells = <1>;
+			status = "disabled";
+		};
+
 		uart0: serial@11002000 {
 			compatible = "mediatek,mt8183-uart",
 				     "mediatek,mt6577-uart";
-- 
1.8.1.1.dirty


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
