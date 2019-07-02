Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E3BC5C7BE
	for <lists+linux-mediatek@lfdr.de>; Tue,  2 Jul 2019 05:22:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4lFf3Wo1shPJw1wsjDib1i5lKYIDCtY82IeJEPAAgAE=; b=uygfI9NItQIrxa
	FNYlCBsmYaE2PdCH/ZQwtCF4Vg8HB7FsUw7Qpz7i9jzENv4RPERatT3H897o91RY1dLXStKmK9rpq
	AT0lVV3zDoKyFk8auGLWlfbno32uX3AZmYDReD7tjlf13fIIv6wKP5209KXTEJY8zW+jZI3/+ZBSa
	lBr/OX0gwSWAUSiWYfHA+4AYDhXmps0D9/7wVtEWopaYd3oxm0dfh2/mQQ4Fgkn3fWQaSH8oKwtuI
	6/5SP5dW3wRWM6ZaYvDPIKU3Zh6+0c8M98tc4HzykjEOwLEPPXtxYaHLXVu/zpPdM2O6GzwgsQ4Rk
	NwCwDEtGmlAt/aPbx4CA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hi9N4-0004je-7t; Tue, 02 Jul 2019 03:22:18 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hi9N0-0004iQ-N3; Tue, 02 Jul 2019 03:22:15 +0000
X-UUID: c3b2c75caac84ead99d5d95e8491a5d5-20190701
X-UUID: c3b2c75caac84ead99d5d95e8491a5d5-20190701
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw02.mediatek.com
 (envelope-from <ran.bi@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 109687640; Mon, 01 Jul 2019 19:21:52 -0800
Received: from mtkmbs07n1.mediatek.inc (172.21.101.16) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 1 Jul 2019 20:21:50 -0700
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs07n1.mediatek.inc (172.21.101.16) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 2 Jul 2019 11:21:49 +0800
Received: from localhost.localdomain (10.17.3.153) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Tue, 2 Jul 2019 11:21:48 +0800
From: Ran Bi <ran.bi@mediatek.com>
To: Alexandre Belloni <alexandre.belloni@bootlin.com>, Rob Herring
 <robh+dt@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>
Subject: [PATCH 3/3] arm64: dts: add rtc nodes for MT2712
Date: Tue, 2 Jul 2019 11:21:20 +0800
Message-ID: <20190702032120.16539-4-ran.bi@mediatek.com>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <20190702032120.16539-1-ran.bi@mediatek.com>
References: <20190702032120.16539-1-ran.bi@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190701_202214_756683_D1CF84D5 
X-CRM114-Status: UNSURE (   9.37  )
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Alessandro Zummo <a.zummo@towertech.it>, srv_heupstream@mediatek.com,
 devicetree@vger.kernel.org, Ran Bi <ran.bi@mediatek.com>,
 Sean Wang <sean.wang@mediatek.com>, linux-kernel@vger.kernel.org, Flora
 Fu <flora.fu@mediatek.com>, linux-mediatek@lists.infradead.org,
 Yingjoe Chen <yingjoe.chen@mediatek.com>,
 Eddie Huang <eddie.huang@mediatek.com>, linux-arm-kernel@lists.infradead.org,
 linux-rtc@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

This patch add device node for MT2712 rtc.

Signed-off-by: Ran Bi <ran.bi@mediatek.com>
---
 arch/arm64/boot/dts/mediatek/mt2712e.dtsi | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/arch/arm64/boot/dts/mediatek/mt2712e.dtsi b/arch/arm64/boot/dts/mediatek/mt2712e.dtsi
index 43307bad3f0d..31166c17c39a 100644
--- a/arch/arm64/boot/dts/mediatek/mt2712e.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt2712e.dtsi
@@ -303,6 +303,12 @@
 		status = "disabled";
 	};
 
+	rtc: rtc@10011000 {
+		compatible = "mediatek,mt2712-rtc";
+		reg = <0 0x10011000 0 0x1000>;
+		interrupts = <GIC_SPI 239 IRQ_TYPE_LEVEL_LOW>;
+	};
+
 	spis1: spi@10013000 {
 		compatible = "mediatek,mt2712-spi-slave";
 		reg = <0 0x10013000 0 0x100>;
-- 
2.18.0


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
