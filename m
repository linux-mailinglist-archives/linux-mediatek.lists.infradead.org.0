Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F6BB112BFE
	for <lists+linux-mediatek@lfdr.de>; Wed,  4 Dec 2019 13:48:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kR6Oyk7w+SZIHVBB/KAhnpHvxOjBVoKeEHOY90Nzo18=; b=Ihc5iOID/1hV12
	QKYWhzFWN5YCHSbEfmxgzNuF/FDTA16dbL3LGc/Ok4QIGbwj/tqIC1oJ/n6cweP5QxMK2Ac/3smc9
	BRWyvv03L2q+RabvnEU/JwGjb6V5hVRSiHZ+g5gDt+KDZ21ZxWx7B7iZBXys00RbZWJ8D/nWgjiZ4
	SGUjC1jSRWcSWyRetxuXxGyuD0PxoAcfCrDnK3WSaeefkojTJ2sGKLHoskfps/pw1h8L0+YMw60bm
	bkkWeBjc6FU2W3a3/ExIC4ith5Y5bBcijd7aHM65MShPkS5jIzsmZDcv0+Ii/75K2WjRUCQkxcpvP
	QCPOD1UtgQNaUNAmHz6w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icU4d-0003tv-Vk; Wed, 04 Dec 2019 12:48:07 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icU4K-0003bR-0O; Wed, 04 Dec 2019 12:47:49 +0000
X-UUID: bf69c7bedfb046a592b97646768b8065-20191204
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From;
 bh=KxvD0a/3+K+qwa8tLVxwYamVAtpP7g9ERVWtfSAT/8c=; 
 b=AuE8Pgx+8PONe5L5kPo8msSVfHidSBZBY9a414GPVuWZXxpNoU3VIVdZGNOLUbfwRSdTNOuOtRCnZI5tpdyQ+zAxtJgICCqxrq3Hvq7dV8wlchXpJp7UEWKEIcfz3PU28i3QuM7NGKHt9CHib0ByKQyZLNpP7EqaAfrwf6dNd+s=;
X-UUID: bf69c7bedfb046a592b97646768b8065-20191204
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <jerry-ch.chen@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 673285325; Wed, 04 Dec 2019 04:47:47 -0800
Received: from MTKMBS02N1.mediatek.inc (172.21.101.77) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 4 Dec 2019 04:47:57 -0800
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs02n1.mediatek.inc (172.21.101.77) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 4 Dec 2019 20:47:27 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Wed, 4 Dec 2019 20:46:49 +0800
From: Jerry-ch Chen <Jerry-Ch.chen@mediatek.com>
To: <hans.verkuil@cisco.com>, <laurent.pinchart+renesas@ideasonboard.com>,
 <tfiga@chromium.org>, <matthias.bgg@gmail.com>, <mchehab@kernel.org>
Subject: [RFC PATCH V4 2/4] dt-bindings: mt8183: Added FD dt-bindings
Date: Wed, 4 Dec 2019 20:47:30 +0800
Message-ID: <20191204124732.10932-3-Jerry-Ch.chen@mediatek.com>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <20191204124732.10932-1-Jerry-Ch.chen@mediatek.com>
References: <20191204124732.10932-1-Jerry-Ch.chen@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191204_044748_050354_0DAD8031 
X-CRM114-Status: UNSURE (   9.47  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 MIME_BASE64_TEXT       RAW: Message text disguised using base64
 encoding
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 pihsun@chromium.org, srv_heupstream@mediatek.com,
 Jerry-ch Chen <jerry-ch.chen@mediatek.com>, jungo.lin@mediatek.com,
 sj.huang@mediatek.com, yuzhao@chromium.org, linux-mediatek@lists.infradead.org,
 zwisler@chromium.org, christie.yu@mediatek.com, frederic.chen@mediatek.com,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
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
