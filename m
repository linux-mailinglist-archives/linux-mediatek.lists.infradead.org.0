Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 32E78C048A
	for <lists+linux-mediatek@lfdr.de>; Fri, 27 Sep 2019 13:44:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mhAEzHOKrq/v+F8s1TMgeRmNtCtRr3lEkbYgUjw4EU4=; b=flqFbQ8vJaofej
	iVWAW1x8aRBO59Tgjdz9VuNgRRAnA4/8ZRpiDTjwZSuQVT2pc9JvH6N0YJRtVrxElT1Vfk7s/W3mz
	kfCKDOiwGmioZ62TXhyV04s11QR5COHiZyWig1KDwd1VEy/FqNh/Ym7QaiwmrfAFD5XsuuezI6u4n
	An/L87ITQWSo0f7yFzQWsZW5iuluvdGJOKHj02u/bftxB4JUoS/+Gor/Cn7mS2Bqr4KoD5nFu2f9a
	m9V9dS69fnr1FfwmFz4fvVqIKI0ZkQP7lRGsWKuzN7vFEQhqg7tKPdA/Q/XIpxm/1R2+6dAoUD4tN
	XFuFFionCd7bbzTXncyg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDofd-0003MI-2S; Fri, 27 Sep 2019 11:44:21 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDoeW-00029R-Ru; Fri, 27 Sep 2019 11:43:14 +0000
X-UUID: 4d7fb52649ed49a98b35265e42e7024f-20190927
X-UUID: 4d7fb52649ed49a98b35265e42e7024f-20190927
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw01.mediatek.com
 (envelope-from <bibby.hsieh@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 634905632; Fri, 27 Sep 2019 03:42:56 -0800
Received: from MTKMBS01N1.mediatek.inc (172.21.101.68) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 27 Sep 2019 04:42:56 -0700
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs01n1.mediatek.inc (172.21.101.68) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 27 Sep 2019 19:42:54 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Fri, 27 Sep 2019 19:42:54 +0800
From: Bibby Hsieh <bibby.hsieh@mediatek.com>
To: Matthias Brugger <matthias.bgg@gmail.com>, Rob Herring
 <robh+dt@kernel.org>, CK HU <ck.hu@mediatek.com>
Subject: [PATCH v15 4/4] arm64: dts: add gce node for mt8183
Date: Fri, 27 Sep 2019 19:42:54 +0800
Message-ID: <20190927114254.6258-5-bibby.hsieh@mediatek.com>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <20190927114254.6258-1-bibby.hsieh@mediatek.com>
References: <20190927114254.6258-1-bibby.hsieh@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190927_044312_958677_E2B61485 
X-CRM114-Status: UNSURE (   9.79  )
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
Cc: devicetree@vger.kernel.org, Nicolas Boichat <drinkcat@chromium.org>,
 srv_heupstream@mediatek.com, linux-kernel@vger.kernel.org,
 Houlong Wei <houlong.wei@mediatek.com>,
 Dennis-YC Hsieh <dennis-yc.hsieh@mediatek.com>,
 linux-mediatek@lists.infradead.org, Bibby Hsieh <bibby.hsieh@mediatek.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

add gce device node for mt8183

Signed-off-by: Bibby Hsieh <bibby.hsieh@mediatek.com>
---
 arch/arm64/boot/dts/mediatek/mt8183.dtsi | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/arch/arm64/boot/dts/mediatek/mt8183.dtsi b/arch/arm64/boot/dts/mediatek/mt8183.dtsi
index 66aaa07f6cec..52b9af38a00a 100644
--- a/arch/arm64/boot/dts/mediatek/mt8183.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8183.dtsi
@@ -9,6 +9,7 @@
 #include <dt-bindings/interrupt-controller/arm-gic.h>
 #include <dt-bindings/interrupt-controller/irq.h>
 #include <dt-bindings/power/mt8183-power.h>
+#include <dt-bindings/gce/mt8183-gce.h>
 #include "mt8183-pinfunc.h"
 
 / {
@@ -321,6 +322,15 @@
 			status = "disabled";
 		};
 
+		gce: mailbox@10238000 {
+			compatible = "mediatek,mt8183-gce";
+			reg = <0 0x10238000 0 0x4000>;
+			interrupts = <GIC_SPI 162 IRQ_TYPE_LEVEL_LOW>;
+			#mbox-cells = <3>;
+			clocks = <&infracfg CLK_INFRA_GCE>;
+			clock-names = "gce";
+		};
+
 		uart0: serial@11002000 {
 			compatible = "mediatek,mt8183-uart",
 				     "mediatek,mt6577-uart";
-- 
2.18.0


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
