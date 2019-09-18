Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CCF53B5B34
	for <lists+linux-mediatek@lfdr.de>; Wed, 18 Sep 2019 07:51:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KpLY1Ghb7Cw42DcHWgU5kqBRY2BDxBAM2sLvdwuKsdo=; b=sLfbM6BVmTIVhw
	ztNkFgl3kLPJl1KGSTfEplIgOaUAukZn0rJaQnR7F3cAO76JsNFY08V8IBLx5Y2yX2qF+AQe9m4Tb
	PeAJ5f55kcSoOhXDy3dTHRzGLH/e5Nc1onrKdNRVYw/i1VHekASWTlANHiiWQGLFzt4IqGONfyKwD
	RCOGpyM0fzRJsNNnlCkiG4iJnQ/Mmf4E4Q4P+g/c0d9e6X2G2S+KiepgqOW+JVnxgzw3w/pEB0V7j
	6SvTsY2xn3YZanJoygfdg1IfJ2Ul4BRDvtkMtxieYNmQCRC9ER4VtJHMmayWSsCj/qlR64uk6QLF2
	iqOEMFItkbd+H9Y10TjQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iASsK-0002Ak-G7; Wed, 18 Sep 2019 05:51:36 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iASsC-0001yV-LQ
 for linux-mediatek@lists.infradead.org; Wed, 18 Sep 2019 05:51:29 +0000
X-UUID: 9cd7adedefca4ed194c70fccb9c24ebe-20190917
X-UUID: 9cd7adedefca4ed194c70fccb9c24ebe-20190917
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <sam.shih@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 339673444; Tue, 17 Sep 2019 21:51:23 -0800
Received: from mtkmbs08n1.mediatek.inc (172.21.101.55) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 17 Sep 2019 22:51:22 -0700
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs08n1.mediatek.inc (172.21.101.55) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 18 Sep 2019 13:51:21 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Wed, 18 Sep 2019 13:51:21 +0800
From: Sam Shih <sam.shih@mediatek.com>
To: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Matthias Brugger <matthias.bgg@gmail.com>, Thierry Reding
 <thierry.reding@gmail.com>
Subject: [RESEND, PATCH v7 11/11] arm: dts: mediatek: add mt7629 pwm support
Date: Wed, 18 Sep 2019 13:50:11 +0800
Message-ID: <1568785811-9577-12-git-send-email-sam.shih@mediatek.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1568785811-9577-1-git-send-email-sam.shih@mediatek.com>
References: <1568785811-9577-1-git-send-email-sam.shih@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190917_225128_759041_06EBEB20 
X-CRM114-Status: UNSURE (   8.62  )
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
Cc: linux-pwm@vger.kernel.org, Ryder Lee <ryder.lee@mediatek.com>,
 devicetree@vger.kernel.org, Sam
 Shih <sam.shih@mediatek.com>, linux-kernel@vger.kernel.org,
 linux-mediatek@lists.infradead.org, John Crispin <john@phrozen.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

This adds pwm support for MT7629.

Signed-off-by: Sam Shih <sam.shih@mediatek.com>
---
 arch/arm/boot/dts/mt7629.dtsi | 16 ++++++++++++++++
 1 file changed, 16 insertions(+)

diff --git a/arch/arm/boot/dts/mt7629.dtsi b/arch/arm/boot/dts/mt7629.dtsi
index 9608bc2ccb3f..493be9a9453b 100644
--- a/arch/arm/boot/dts/mt7629.dtsi
+++ b/arch/arm/boot/dts/mt7629.dtsi
@@ -241,6 +241,22 @@
 			status = "disabled";
 		};
 
+		pwm: pwm@11006000 {
+			compatible = "mediatek,mt7629-pwm",
+				     "mediatek,mt7622-pwm";
+			reg = <0 0x11006000 0 0x1000>;
+			interrupts = <GIC_SPI 77 IRQ_TYPE_LEVEL_LOW>;
+			clocks = <&topckgen CLK_TOP_PWM_SEL>,
+				 <&pericfg CLK_PERI_PWM_PD>,
+				 <&pericfg CLK_PERI_PWM1_PD>;
+			clock-names = "top", "main", "pwm1";
+			assigned-clocks = <&topckgen CLK_TOP_PWM_SEL>;
+			assigned-clock-parents =
+					<&topckgen CLK_TOP_UNIVPLL2_D4>;
+			num-pwms = <1>;
+			status = "disabled";
+		};
+
 		i2c: i2c@11007000 {
 			compatible = "mediatek,mt7629-i2c",
 				     "mediatek,mt2712-i2c";
-- 
2.17.1


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
