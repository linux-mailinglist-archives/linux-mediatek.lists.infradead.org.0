Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9981CE6C56
	for <lists+linux-mediatek@lfdr.de>; Mon, 28 Oct 2019 07:11:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=n5ZHoS9exkkhQQFbVZKITt5RVPiKtTL3KLAAKPfQrqQ=; b=GZ/l6cOkIL9oLH
	L6BFx2qjMvDhCDQ9RpccCLIMoEoKNoMcfpP8lw3ZmD/BDduoCMRADPnjAYZ0hE8TQHKa/pjUFGmzb
	SwZzP0J6Z2ap9EOGI88qh/55j64vF5g5ds3fedHVB33tnFwO/oe4bFF908qY6/YP3AuZwq4E8Rvwn
	yl5oQCsNTX0vURS64Hya/tEUNeBcLTO5EcLR51ZqqbO2xVmFBlfn3m/VL17JSPoUEmmpnbaa00MFr
	DQcCzsfuUSzwEjR9ZoZ7LXkmqykLUTgiZsEJ9jSG1X1/F2DAJe1QDO5n2iENyOX4h091VMThaxi9/
	MMspYdm0EIRFEwYHr6oQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iOyFh-0007tv-LT; Mon, 28 Oct 2019 06:11:41 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iOyF1-0007Nz-GK; Mon, 28 Oct 2019 06:11:05 +0000
X-UUID: 09c42ca4b82b4ee1a87226502ca8fe2f-20191027
X-UUID: 09c42ca4b82b4ee1a87226502ca8fe2f-20191027
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <dehui.sun@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1834098918; Sun, 27 Oct 2019 22:10:39 -0800
Received: from MTKMBS07N2.mediatek.inc (172.21.101.141) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Sun, 27 Oct 2019 23:10:29 -0700
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs07n2.mediatek.inc (172.21.101.141) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 28 Oct 2019 14:10:29 +0800
Received: from localhost.localdomain (10.17.3.153) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Mon, 28 Oct 2019 14:10:28 +0800
From: Dehui Sun <dehui.sun@mediatek.com>
To: Daniel Lezcano <daniel.lezcano@linaro.org>, Thomas Gleixner
 <tglx@linutronix.de>, Rob Herring <robh+dt@kernel.org>, Mark Rutland
 <mark.rutland@arm.com>, Matthias Brugger <matthias.bgg@gmail.com>
Subject: [PATCH v2 2/2] arm64: dts: mt8183: add systimer0 device node
Date: Mon, 28 Oct 2019 14:09:44 +0800
Message-ID: <1572242984-30460-3-git-send-email-dehui.sun@mediatek.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1572242984-30460-1-git-send-email-dehui.sun@mediatek.com>
References: <1572242984-30460-1-git-send-email-dehui.sun@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191027_231103_174050_D824F398 
X-CRM114-Status: UNSURE (   9.01  )
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
Cc: dehui.sun@mediatek.com, devicetree@vger.kernel.org, weiyi.lu@mediatek.com,
 srv_heupstream@mediatek.com, erin.lo@mediatek.com,
 linux-kernel@vger.kernel.org, linux-mediatek@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Add systimer0 device node for MT8183.

Signed-off-by: Dehui Sun <dehui.sun@mediatek.com>
---
 arch/arm64/boot/dts/mediatek/mt8183.dtsi | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/arch/arm64/boot/dts/mediatek/mt8183.dtsi b/arch/arm64/boot/dts/mediatek/mt8183.dtsi
index 7e23179..40145dc 100644
--- a/arch/arm64/boot/dts/mediatek/mt8183.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8183.dtsi
@@ -326,6 +326,15 @@
 			clock-names = "spi", "wrap";
 		};
 
+		systimer: timer@10017000 {
+			compatible = "mediatek,mt8183-timer",
+				     "mediatek,mt6765-timer";
+			reg = <0 0x10017000 0 0x1000>;
+			interrupts = <GIC_SPI 200 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&topckgen CLK_TOP_CLK13M>;
+			clock-names = "clk13m";
+		};
+
 		auxadc: auxadc@11001000 {
 			compatible = "mediatek,mt8183-auxadc",
 				     "mediatek,mt8173-auxadc";
-- 
1.9.1


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
