Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D3D5343CA
	for <lists+linux-mediatek@lfdr.de>; Tue,  4 Jun 2019 12:12:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JkOEPqX6+hKwCahQzrbZ9qJ2WMt7hbvJ0RWGOAt+xX4=; b=aDdCOTOoXblBAp
	TKabe1ZjuaRgJORiF9cBRKbX2Not2I4nxM/6IusKKNtr4Qjd36mCDXWXfa303S0kokIo0gk4v1apj
	5VsmVUTxuGrM8BFNuQVciPE/z0dEmS+n4M5+9j9d3mKkfbRYb/ssiGJc90nEabrdrH/qSjmUwnIRj
	cZXXoKW/7pjfw3kpWZSy6FPxRCbt1fHKYsTxDNLbyJ8pw0+PzCyWcCYt8zDAbppa135VwJOeN+EcE
	sV3zjXEIE13hKWd5c5SLP+5/2Fn2OXdj5pGAdShf0ZneeV3gufMiuUmzxrFmoxhBGQ09uI0M+RAkI
	wGR03MwnMk87CE3LQJPg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hY6QR-0006PD-3n; Tue, 04 Jun 2019 10:12:15 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hY6QG-0006FW-MU; Tue, 04 Jun 2019 10:12:05 +0000
X-UUID: 86f4954edbc24d5c8bdee0edc97d511b-20190604
X-UUID: 86f4954edbc24d5c8bdee0edc97d511b-20190604
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw01.mediatek.com
 (envelope-from <stu.hsieh@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1279079004; Tue, 04 Jun 2019 02:12:02 -0800
Received: from mtkmbs07n1.mediatek.inc (172.21.101.16) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 4 Jun 2019 03:12:00 -0700
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs07n1.mediatek.inc (172.21.101.16) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 4 Jun 2019 18:11:59 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Tue, 4 Jun 2019 18:11:59 +0800
From: Stu Hsieh <stu.hsieh@mediatek.com>
To: Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring
 <robh+dt@kernel.org>, CK Hu <ck.hu@mediatek.com>
Subject: [PATCH v4 02/14] dt-bindings: media: Add mipicsi common node binding
 for MT2712 MIPI-CSI2
Date: Tue, 4 Jun 2019 18:11:43 +0800
Message-ID: <1559643115-15124-3-git-send-email-stu.hsieh@mediatek.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1559643115-15124-1-git-send-email-stu.hsieh@mediatek.com>
References: <1559643115-15124-1-git-send-email-stu.hsieh@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190604_031204_734043_713B4DB3 
X-CRM114-Status: GOOD (  11.16  )
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 srv_heupstream@mediatek.com, linux-kernel@vger.kernel.org,
 linux-mediatek@lists.infradead.org, Stu Hsieh <stu.hsieh@mediatek.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Add mipicsi common node binding for MT2712 MIPI-CSI2

Signed-off-by: Stu Hsieh <stu.hsieh@mediatek.com>
---
 .../media/mediatek-mipicsi-common.txt         | 19 +++++++++++++++++++
 1 file changed, 19 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/media/mediatek-mipicsi-common.txt

diff --git a/Documentation/devicetree/bindings/media/mediatek-mipicsi-common.txt b/Documentation/devicetree/bindings/media/mediatek-mipicsi-common.txt
new file mode 100644
index 000000000000..a67c744b75f0
--- /dev/null
+++ b/Documentation/devicetree/bindings/media/mediatek-mipicsi-common.txt
@@ -0,0 +1,19 @@
+* Mediatek MIPI-CSI2 receiver common
+
+Mediatek MIPI-CSI2 receiver is the MIPI Signal capture hardware present in Mediatek SoCs
+
+Required properties:
+- compatible: should be "mediatek,mt2712-mipicsi-common"
+- reg : physical base address of the mipicsi receiver registers and length of
+  memory mapped region.
+- clocks: device clocks, see
+  Documentation/devicetree/bindings/clock/clock-bindings.txt for details.
+
+
+Example:
+	mipicsi: mipicsi@15002000 {
+		compatible = "mediatek,mt2712-mipicsi-common", "syscon";
+		reg = <0 0x15002000 0 0x10>;
+		clocks = <&imgsys CLK_IMG_SENINF_CAM_EN>,
+			 <&imgsys CLK_IMG_SENINF_SCAM_EN>;
+	};
-- 
2.18.0


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
