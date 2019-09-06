Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BA5EAB57D
	for <lists+linux-mediatek@lfdr.de>; Fri,  6 Sep 2019 12:12:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CLK9sNW5pw9L/bXaE/RdeTLU98vbRrBecppadX5w+rA=; b=WYjGUjhK4gxEsA
	UxVmJ2Q44lNiaG2WfysFishnlklKo8zRNYiPmr0JvjpBiK2Dl0tuOrlyM57pMD5/10+xPBxfXJgWQ
	0VpeqwsEKWVw4wJsB8kL0uQyU/OtIJ6G6p/E4Kl2kj7BklmYrbHWrABKdIaCzQoXqeMzsR/ezfTO8
	84X//uFNnW350w7E18G/VIT0r6YNw+mLfKoPDIXmIG9dGN7mYN29fTttKZFbrmPLOfDBNOdgi6WdT
	t8bwdW6VqpGcVPOoL27M4YRZ4oki93XcKHU5ZROSqNSbUVNPSDTn2M4wXYftjxtyT9c2eIK5RSFky
	mI6ZOmiFRPDX0OBxwEEg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i6BDu-0004C8-Im; Fri, 06 Sep 2019 10:12:10 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i6BDq-00049r-SV; Fri, 06 Sep 2019 10:12:08 +0000
X-UUID: f6831c3123254bb68b211df1515d5f85-20190906
X-UUID: f6831c3123254bb68b211df1515d5f85-20190906
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw02.mediatek.com
 (envelope-from <jerry-ch.chen@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1454388940; Fri, 06 Sep 2019 02:11:57 -0800
Received: from MTKMBS06N1.mediatek.inc (172.21.101.129) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 6 Sep 2019 03:11:55 -0700
Received: from mtkcas09.mediatek.inc (172.21.101.178) by
 mtkmbs06n1.mediatek.inc (172.21.101.129) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 6 Sep 2019 18:11:57 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by mtkcas09.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Fri, 6 Sep 2019 18:11:54 +0800
From: Jerry-ch Chen <Jerry-Ch.chen@mediatek.com>
To: <hans.verkuil@cisco.com>, <laurent.pinchart+renesas@ideasonboard.com>,
 <tfiga@chromium.org>, <matthias.bgg@gmail.com>, <mchehab@kernel.org>,
 <lkml@metux.net>
Subject: [RFC PATCH V3 1/3] dt-bindings: mt8183: Added FD dt-bindings
Date: Fri, 6 Sep 2019 18:11:23 +0800
Message-ID: <20190906101125.3784-2-Jerry-Ch.chen@mediatek.com>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <20190906101125.3784-1-Jerry-Ch.chen@mediatek.com>
References: <20190906101125.3784-1-Jerry-Ch.chen@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190906_031206_931204_A1E89435 
X-CRM114-Status: UNSURE (   8.93  )
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
Cc: devicetree@vger.kernel.org, Sean.Cheng@mediatek.com, Rynn.Wu@mediatek.com,
 srv_heupstream@mediatek.com, po-yang.huang@mediatek.com,
 Jerry-ch Chen <jerry-ch.chen@mediatek.com>, jungo.lin@mediatek.com,
 sj.huang@mediatek.com, yuzhao@chromium.org, linux-mediatek@lists.infradead.org,
 zwisler@chromium.org, ck.hu@mediatek.com, christie.yu@mediatek.com,
 frederic.chen@mediatek.com, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

From: Jerry-ch Chen <jerry-ch.chen@mediatek.com>

This patch adds DT binding documentation for the Face Detection (FD)
unit of the Mediatek's mt8183 SoC.

Signed-off-by: Jerry-ch Chen <jerry-ch.chen@mediatek.com>
---
 .../bindings/media/mediatek,mt8183-fd.txt     | 34 +++++++++++++++++++
 1 file changed, 34 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/media/mediatek,mt8183-fd.txt

diff --git a/Documentation/devicetree/bindings/media/mediatek,mt8183-fd.txt b/Documentation/devicetree/bindings/media/mediatek,mt8183-fd.txt
new file mode 100644
index 000000000000..46464175b95a
--- /dev/null
+++ b/Documentation/devicetree/bindings/media/mediatek,mt8183-fd.txt
@@ -0,0 +1,34 @@
+* Mediatek Face Detection Unit (FD)
+
+Face Detection (FD) unit is a typical memory-to-memory HW device.
+It provides hardware accelerated face detection function, and it
+is able to detect different poses of faces. FD will writre result
+of detected face into memory as output.
+
+Required properties:
+- compatible: "mediatek,mt8183-fd"
+- mediatek,scp : the node of system control processor (SCP), see
+  Documentation/devicetree/bindings/remoteproc/mtk,scp.txt for details.
+- iommus: should point to the 3 entries:  M4U_PORT_CAM_FDVT_RP,
+  M4U_PORT_CAM_FDVT_WR and M4U_PORT_CAM_FDVT_RB.  (Please see
+  Documentation/devicetree/bindings/iommu/mediatek,iommu.txt for details.)
+- reg: Physical base address and length of the register space.
+- interrupts: interrupt number to the cpu.
+- clocks : must contain the FDVT clock, see
+  Documentation/devicetree/bindings/clock/clock-bindings.txt for details.
+- clock-names: must be "fd".
+- power-domain: must be "MT8183_POWER_DOMAIN_ISP".
+
+Example:
+	fd: fd@1502b000 {
+		compatible = "mediatek,mt8183-fd";
+		mediatek,scp = <&scp>;
+		iommus = <&iommu M4U_PORT_CAM_FDVT_RP>,
+			 <&iommu M4U_PORT_CAM_FDVT_WR>,
+			 <&iommu M4U_PORT_CAM_FDVT_RB>;
+		reg = <0 0x1502b000 0 0x1000>;
+		interrupts = <GIC_SPI 269 IRQ_TYPE_LEVEL_LOW>;
+		clocks = <&imgsys CLK_IMG_FDVT>;
+		clock-names = "fd";
+		power-domains = <&scpsys MT8183_POWER_DOMAIN_ISP>;
+	};
-- 
2.18.0


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
