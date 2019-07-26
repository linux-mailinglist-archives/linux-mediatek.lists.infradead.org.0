Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 08EF4760AA
	for <lists+linux-mediatek@lfdr.de>; Fri, 26 Jul 2019 10:26:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DCub0rrP4E6X2JnAWpllp8uGRVEWFBwJsR+A/E7caq0=; b=MmFi7eJJx5PDhU
	iCPMJ3ERWhLxRSSp7dJUdFmvTB+rdukwXR4N+X+mqg+iOhtOjinS2e/eB2QLsxhHMFIeDa+zkfFiF
	kFkA+PREzk0rQ7J0UR9yHfvOjwr+S3H025a0UaBCSwlnQ5r3kyf/X10hsfWcwag7bRyqykCCS2e/s
	ET1CjWbmX8uBpAGHkBEdxoLVrrtZ23YlLYwLuFwml//dBJMUtYIzOfRRf7+e5WrM51dAz9o7Vpk8D
	9bRGcTXyp3wSk0Mo36UZnNzk5tIr0ulB/EjKC+24RbgjIgDvwNhmtKwpGScdD7J+g7DVO+fZv382h
	GIvqLBbHyfGI0bqwgQiw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqvYa-0006ve-LR; Fri, 26 Jul 2019 08:26:28 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqvYT-0006vD-Uw
 for linux-mediatek@lists.infradead.org; Fri, 26 Jul 2019 08:26:25 +0000
X-UUID: 87667cfa2f0a4a1da246a66fe2c109f3-20190726
X-UUID: 87667cfa2f0a4a1da246a66fe2c109f3-20190726
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw02.mediatek.com
 (envelope-from <xixi.chen@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 451697870; Fri, 26 Jul 2019 00:25:51 -0800
Received: from MTKMBS31N2.mediatek.inc (172.27.4.87) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 26 Jul 2019 01:25:49 -0700
Received: from MTKCAS32.mediatek.inc (172.27.4.184) by MTKMBS31N2.mediatek.inc
 (172.27.4.87) with Microsoft SMTP Server (TLS) id 15.0.1395.4;
 Fri, 26 Jul 2019 16:25:46 +0800
Received: from localhost.localdomain (172.27.4.253) by MTKCAS32.mediatek.inc
 (172.27.4.170) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Fri, 26 Jul 2019 16:25:46 +0800
From: Xi Chen <xixi.chen@mediatek.com>
To: <matthias.bgg@gmail.com>, <robh+dt@kernel.org>, <mark.rutland@arm.com>
Subject: [PATCH v4 2/3] arm64: dts: mt8183: add emi node
Date: Fri, 26 Jul 2019 16:23:51 +0800
Message-ID: <1564129432-15214-3-git-send-email-xixi.chen@mediatek.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1564129432-15214-1-git-send-email-xixi.chen@mediatek.com>
References: <1564129432-15214-1-git-send-email-xixi.chen@mediatek.com>
MIME-Version: 1.0
X-TM-SNTS-SMTP: EEAF25955D2905D53A225AE00B4A2EABDE64D55271AE95B2365A2682CF6B06A92000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190726_012624_765105_7850B457 
X-CRM114-Status: UNSURE (   7.75  )
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
Cc: linux-mediatek@lists.infradead.org, Xi
 Chen <xixi.chen@mediatek.com>, srv_heupstream@mediatek.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Add emi dts node.

Signed-off-by: Xi Chen <xixi.chen@mediatek.com>
---
 arch/arm64/boot/dts/mediatek/mt8183.dtsi | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/arch/arm64/boot/dts/mediatek/mt8183.dtsi b/arch/arm64/boot/dts/mediatek/mt8183.dtsi
index 75c4881..cb6fd18 100644
--- a/arch/arm64/boot/dts/mediatek/mt8183.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8183.dtsi
@@ -269,6 +269,11 @@
 			clock-names = "spi", "wrap";
 		};
 
+		emi@10219000 {
+			compatible = "mediatek,mt8183-emi";
+			reg = <0 0x10219000 0 0x1000>; /* CEN EMI */
+		};
+
 		uart0: serial@11002000 {
 			compatible = "mediatek,mt8183-uart",
 				     "mediatek,mt6577-uart";
-- 
1.9.1


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
