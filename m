Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E91D975F6B
	for <lists+linux-mediatek@lfdr.de>; Fri, 26 Jul 2019 09:02:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=NiWiIm64lETSesNVFz+/gc6cSEhB/7pOaNJdRaC7Ok0=; b=JU/pdFBBLHIJHP
	WrahQke4Vx0/GTr3wc5hKhEiW06yEZWdFwh5dY6I33OWqxxf8uCdBkLyBD+aCoPa9nVB2sr1gfU13
	3U/ImJtOvCIRxiHKVh6w81Dyg4LyMWcdbH18sdMD/NZNVXNRU4nulsZmzap0JVAFr9TsHuwOYllA0
	oaHjvTcnli5l5oEWVzJoKF4gwDR9wmLiyrLBiT1s69JxNHu2ePjbpKxHZyzUxwq7G69GWhV59VIBm
	oMVHr1jcEtGl05s3x4PZXAZwKHP/5H8oDOoge9raLGx6Z/MpvfnFK+7nA8KI28n78Jb+B+RnDLUk7
	ci6qlenh3Lw4lRTF005Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hquEy-0000tx-2D; Fri, 26 Jul 2019 07:02:08 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hquEh-0000tC-QV; Fri, 26 Jul 2019 07:01:58 +0000
X-UUID: c0c013f711564579a1c32eb82cd9e696-20190725
X-UUID: c0c013f711564579a1c32eb82cd9e696-20190725
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw01.mediatek.com
 (envelope-from <yong.liang@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1728439791; Thu, 25 Jul 2019 23:01:43 -0800
Received: from mtkmbs08n1.mediatek.inc (172.21.101.55) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 26 Jul 2019 00:01:42 -0700
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs08n1.mediatek.inc (172.21.101.55) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 26 Jul 2019 15:01:40 +0800
Received: from localhost.localdomain (10.17.3.153) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Fri, 26 Jul 2019 15:01:39 +0800
From: Yong Liang <yong.liang@mediatek.com>
To: <mturquette@baylibre.com>, <sboyd@kernel.org>, <matthias.bgg@gmail.com>,
 <robh+dt@kernel.org>, <mark.rutland@arm.com>, <drinkcat@chromium.org>,
 <weiyi.lu@mediatek.com>, <jamesjj.liao@mediatek.com>, <jasu@njomotys.info>,
 <owen.chen@mediatek.com>, <chunhui.dai@mediatek.com>, <erin.lo@mediatek.com>, 
 <eddie.huang@mediatek.com>
Subject: [PATCH v5,1/2] arm64: dts: mt8183: Add reset-cells in infracfg
Date: Fri, 26 Jul 2019 15:01:34 +0800
Message-ID: <20190726070135.14347-1-yong.liang@mediatek.com>
X-Mailer: git-send-email 2.18.0
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190726_000153_412198_2FD9975E 
X-CRM114-Status: UNSURE (   7.40  )
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
Cc: "yong.liang" <yong.liang@mediatek.com>, linux-mediatek@lists.infradead.org,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

From: "yong.liang" <yong.liang@mediatek.com>

Include mt8183-reset.h and add reset-cells in infracfg
in dtsi file.

Signed-off-by: yong.liang <yong.liang@mediatek.com>
---
 arch/arm64/boot/dts/mediatek/mt8183.dtsi | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm64/boot/dts/mediatek/mt8183.dtsi b/arch/arm64/boot/dts/mediatek/mt8183.dtsi
index c2749c4631bc..4819f4b59b88 100644
--- a/arch/arm64/boot/dts/mediatek/mt8183.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8183.dtsi
@@ -8,6 +8,7 @@
 #include <dt-bindings/clock/mt8183-clk.h>
 #include <dt-bindings/interrupt-controller/arm-gic.h>
 #include <dt-bindings/interrupt-controller/irq.h>
+#include <dt-bindings/reset-controller/mt8183-resets.h>
 #include "mt8183-pinfunc.h"
 
 / {
@@ -212,6 +213,7 @@
 			compatible = "mediatek,mt8183-infracfg", "syscon";
 			reg = <0 0x10001000 0 0x1000>;
 			#clock-cells = <1>;
+			#reset-cells = <1>;
 		};
 
 		pio: pinctrl@10005000 {
-- 
2.18.0


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
