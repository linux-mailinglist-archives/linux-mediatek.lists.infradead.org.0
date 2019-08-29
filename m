Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 73B51A1E1E
	for <lists+linux-mediatek@lfdr.de>; Thu, 29 Aug 2019 16:58:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=v9/F2wKAMhRKdOM91sw4rI4di6/GCWawYvyb78SwKXM=; b=UxNPvx6VvHW2s/
	wUOuIJqpSz2OOxgWrjEStOuvVLfICCbYNTCXhIiXBkoiWCIbVMvgccL/CIt3gKWyeiOdwIO9ShDV3
	Es2xebdO9T0/i2aFkmDFjGVekULTONZENWWUVptcIEtL4QWjqv5Ocpztf+DxXLu8EqwojBmt21kI3
	3twqppSauE50UAAc1JUK/utAEtEm79kI1BTpawLMGg/2z9eEr1o2dX0NeVbjfg9kai1k7EgUVG45j
	shG9C0i1ZfyhjHZuHC0dMHSOxLKD7q21vri/TDgNea9IrXpuxBvXqzvI9gWzd9W1nogi6mBHJ/rXF
	2siZqxuci0PipUvxJzcA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3Ls9-0000xM-QT; Thu, 29 Aug 2019 14:58:01 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3Lle-0005jI-6E; Thu, 29 Aug 2019 14:51:21 +0000
X-UUID: b00ff57a66c4467aac134435394d1ed3-20190829
X-UUID: b00ff57a66c4467aac134435394d1ed3-20190829
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw01.mediatek.com
 (envelope-from <yongqiang.niu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1137082017; Thu, 29 Aug 2019 06:51:17 -0800
Received: from MTKMBS01N1.mediatek.inc (172.21.101.68) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 29 Aug 2019 07:51:16 -0700
Received: from mtkcas09.mediatek.inc (172.21.101.178) by
 mtkmbs01n1.mediatek.inc (172.21.101.68) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 29 Aug 2019 22:51:09 +0800
Received: from localhost.localdomain (10.17.3.153) by mtkcas09.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Thu, 29 Aug 2019 22:51:08 +0800
From: <yongqiang.niu@mediatek.com>
To: CK Hu <ck.hu@mediatek.com>, Philipp Zabel <p.zabel@pengutronix.de>, "Rob
 Herring" <robh+dt@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>
Subject: [PATCH v5,
 02/32] dt-bindings: mediatek: add ovl_2l description for mt8183
 display
Date: Thu, 29 Aug 2019 22:50:24 +0800
Message-ID: <1567090254-15566-3-git-send-email-yongqiang.niu@mediatek.com>
X-Mailer: git-send-email 1.8.1.1.dirty
In-Reply-To: <1567090254-15566-1-git-send-email-yongqiang.niu@mediatek.com>
References: <1567090254-15566-1-git-send-email-yongqiang.niu@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190829_075118_493593_1E600EB9 
X-CRM114-Status: UNSURE (   9.25  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Yongqiang Niu <yongqiang.niu@mediatek.com>, David Airlie <airlied@linux.ie>,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linux-mediatek@lists.infradead.org, Daniel Vetter <daniel@ffwll.ch>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

From: Yongqiang Niu <yongqiang.niu@mediatek.com>

Update device tree binding documention for the display subsystem for
Mediatek MT8183 SOCs

Signed-off-by: Yongqiang Niu <yongqiang.niu@mediatek.com>
Reviewed-by: Rob Herring <robh@kernel.org>
---
 .../bindings/display/mediatek/mediatek,disp.txt    | 27 +++++++++++-----------
 1 file changed, 14 insertions(+), 13 deletions(-)

diff --git a/Documentation/devicetree/bindings/display/mediatek/mediatek,disp.txt b/Documentation/devicetree/bindings/display/mediatek/mediatek,disp.txt
index 464b92f..8c4700f 100644
--- a/Documentation/devicetree/bindings/display/mediatek/mediatek,disp.txt
+++ b/Documentation/devicetree/bindings/display/mediatek/mediatek,disp.txt
@@ -27,19 +27,20 @@ Documentation/devicetree/bindings/display/mediatek/mediatek,dpi.txt.
 
 Required properties (all function blocks):
 - compatible: "mediatek,<chip>-disp-<function>", one of
-	"mediatek,<chip>-disp-ovl"   - overlay (4 layers, blending, csc)
-	"mediatek,<chip>-disp-rdma"  - read DMA / line buffer
-	"mediatek,<chip>-disp-wdma"  - write DMA
-	"mediatek,<chip>-disp-color" - color processor
-	"mediatek,<chip>-disp-aal"   - adaptive ambient light controller
-	"mediatek,<chip>-disp-gamma" - gamma correction
-	"mediatek,<chip>-disp-merge" - merge streams from two RDMA sources
-	"mediatek,<chip>-disp-split" - split stream to two encoders
-	"mediatek,<chip>-disp-ufoe"  - data compression engine
-	"mediatek,<chip>-dsi"        - DSI controller, see mediatek,dsi.txt
-	"mediatek,<chip>-dpi"        - DPI controller, see mediatek,dpi.txt
-	"mediatek,<chip>-disp-mutex" - display mutex
-	"mediatek,<chip>-disp-od"    - overdrive
+	"mediatek,<chip>-disp-ovl"   		- overlay (4 layers, blending, csc)
+	"mediatek,<chip>-disp-ovl-2l"           - overlay (2 layers, blending, csc)
+	"mediatek,<chip>-disp-rdma"  		- read DMA / line buffer
+	"mediatek,<chip>-disp-wdma"  		- write DMA
+	"mediatek,<chip>-disp-color" 		- color processor
+	"mediatek,<chip>-disp-aal"   		- adaptive ambient light controller
+	"mediatek,<chip>-disp-gamma" 		- gamma correction
+	"mediatek,<chip>-disp-merge" 		- merge streams from two RDMA sources
+	"mediatek,<chip>-disp-split" 		- split stream to two encoders
+	"mediatek,<chip>-disp-ufoe"  		- data compression engine
+	"mediatek,<chip>-dsi"        		- DSI controller, see mediatek,dsi.txt
+	"mediatek,<chip>-dpi"        		- DPI controller, see mediatek,dpi.txt
+	"mediatek,<chip>-disp-mutex" 		- display mutex
+	"mediatek,<chip>-disp-od"    		- overdrive
   the supported chips are mt2701, mt2712 and mt8173.
 - reg: Physical base address and length of the function block register space
 - interrupts: The interrupt signal from the function block (required, except for
-- 
1.8.1.1.dirty


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
