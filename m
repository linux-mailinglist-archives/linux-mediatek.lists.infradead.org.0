Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BC5661D99
	for <lists+linux-mediatek@lfdr.de>; Mon,  8 Jul 2019 13:06:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XUkCBoMN6Yw/ydBsgnkPvmfnvfXw0nWfNaqUDMvZx7E=; b=VhHbEQethObbt1
	lh1duLMzvJz9shMds9lAZIvKPZCmc4N5mvCLEa9Nxn1NO4sq1Ls1deCidcEo09zWiTB2l6XqvgjB7
	kmVaBvl9iO2q+lAfL5TvD4sUpqINoZLnAkW9+6FwbSMNzxwZrWU22AV9cJ0Cz1m4qjP2HK36VAS0/
	I4ofdkxAT43IefS032YrQbDklX0UKKBlmBSuOso6r5mErXFHEEN4u1XNpKkJ8q1aIMWK84gvdFZ3E
	hfF14RLmEzz0TeOjfEPzsoNYyq6Y6AQxkxnUDT7m9McT/6Jazg4UEjpcNRi3aSBsgDjsPk1qOlbjG
	5Tr0qU5abmnCUpPDSaIw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hkRTV-0003UV-BE; Mon, 08 Jul 2019 11:06:25 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hkRSW-0002ls-9B; Mon, 08 Jul 2019 11:05:26 +0000
X-UUID: 44e5d8776a044a048ed945fd1b525bed-20190708
X-UUID: 44e5d8776a044a048ed945fd1b525bed-20190708
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <frederic.chen@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1732951587; Mon, 08 Jul 2019 03:05:22 -0800
Received: from MTKMBS01N1.mediatek.inc (172.21.101.68) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 8 Jul 2019 04:05:20 -0700
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs01n1.mediatek.inc (172.21.101.68) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 8 Jul 2019 19:05:06 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Mon, 8 Jul 2019 19:05:06 +0800
From: <frederic.chen@mediatek.com>
To: <hans.verkuil@cisco.com>, <laurent.pinchart+renesas@ideasonboard.com>,
 <tfiga@chromium.org>, <matthias.bgg@gmail.com>, <mchehab@kernel.org>
Subject: [RFC PATCH V2 1/6] dt-bindings: mt8183: Added DIP dt-bindings
Date: Mon, 8 Jul 2019 19:04:55 +0800
Message-ID: <20190708110500.7242-2-frederic.chen@mediatek.com>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <20190708110500.7242-1-frederic.chen@mediatek.com>
References: <20190708110500.7242-1-frederic.chen@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190708_040524_542707_20DDCDAA 
X-CRM114-Status: UNSURE (   9.86  )
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
Cc: shik@chromium.org, devicetree@vger.kernel.org, Sean.Cheng@mediatek.com,
 Rynn.Wu@mediatek.com, Allan.Yang@mediatek.com, srv_heupstream@mediatek.com,
 holmes.chiou@mediatek.com, suleiman@chromium.org, Jerry-ch.Chen@mediatek.com,
 jungo.lin@mediatek.com, sj.huang@mediatek.com, yuzhao@chromium.org,
 linux-mediatek@lists.infradead.org, zwisler@chromium.org,
 christie.yu@mediatek.com, frederic.chen@mediatek.com,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

From: Frederic Chen <frederic.chen@mediatek.com>

This patch adds DT binding documentation for the Digital Image
Processing (DIP) unit of camera ISP system on Mediatek's SoCs.

It depends on the SCP and MDP 3 patch as following:

1. dt-bindings: Add a binding for Mediatek SCP
   https://patchwork.kernel.org/patch/11027247/
2. dt-binding: mt8183: Add Mediatek MDP3 dt-bindings
   https://patchwork.kernel.org/patch/10945603/

Signed-off-by: Frederic Chen <frederic.chen@mediatek.com>
---
 .../bindings/media/mediatek,mt8183-dip.txt    | 40 +++++++++++++++++++
 1 file changed, 40 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/media/mediatek,mt8183-dip.txt

diff --git a/Documentation/devicetree/bindings/media/mediatek,mt8183-dip.txt b/Documentation/devicetree/bindings/media/mediatek,mt8183-dip.txt
new file mode 100644
index 000000000000..3a0435513089
--- /dev/null
+++ b/Documentation/devicetree/bindings/media/mediatek,mt8183-dip.txt
@@ -0,0 +1,40 @@
+* Mediatek Digital Image Processor (DIP)
+
+Digital Image Processor (DIP) unit in Mediatek ISP system is responsible for
+image content adjustment according to the tuning parameters. DIP can process
+the image form memory buffer and output the processed image to multiple output
+buffers. Furthermore, it can support demosaicing and noise reduction on the
+images.
+
+Required properties:
+- compatible: "mediatek,mt8183-dip"
+- reg: Physical base address and length of the function block register space
+- interrupts: interrupt number to the cpu
+- iommus: should point to the respective IOMMU block with master port as
+  argument, see Documentation/devicetree/bindings/iommu/mediatek,iommu.txt
+  for details.
+- mediatek,mdp3: should point to the respective mdp block. DIP hardware
+  connects to MDP and we can get the processed image with both effect of the
+  two blocks.
+- mediatek,larb: must contain the local arbiters in the current SoCs, see
+  Documentation/devicetree/bindings/memory-controllers/mediatek,smi-larb.txt
+  for details.
+- mediatek,scp: should point to the scp node since the we use SCP
+  coprocessor to control DIP hardware
+- clocks: must contain the local arbiters 5 (LARB5) and DIP clock
+- clock-names: must contain "larb5" and "dip"
+
+Example:
+	dip: dip@15022000 {
+		compatible = "mediatek,mt8183-dip";
+		mediatek,larb = <&larb5>;
+		mediatek,mdp3 = <&mdp_rdma0>;
+		mediatek,scp = <&scp>;
+		iommus = <&iommu M4U_PORT_CAM_IMGI>;
+		reg = <0 0x15022000 0 0x6000>;
+		interrupts = <GIC_SPI 268 IRQ_TYPE_LEVEL_LOW>;
+		clocks = <&imgsys CLK_IMG_LARB5>,
+			 <&imgsys CLK_IMG_DIP>;
+		clock-names = "larb5",
+			      "dip";
+		};
-- 
2.18.0


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
