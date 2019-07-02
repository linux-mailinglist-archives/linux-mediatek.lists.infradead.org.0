Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 834125C7C0
	for <lists+linux-mediatek@lfdr.de>; Tue,  2 Jul 2019 05:22:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1MutPoYrd70lOOWv8TwZuwsHX+64Jn7Xk/WmCD8O4ag=; b=bSj3aGH8pvZP5/
	g+6yZDKSITC3/MCyr8CbrjMm8qZlG7xvjDEisk38AtczvzMXZRgkWncvGWbMXVo4mZp/2P87twSFL
	VxqQKby6ZclNiRLDv9gfM/RdcT1L7z8YuDTmH+jH1gcBKo7aNCcYCSD+GOm9uTCCbCRyBYW7EG0iL
	Vo5iVzC6NkclledTl89tHlpL9zOIHPsmZyiyN5gUFBmy3SJiZkYdJ10HelfUwmqtZIKAiauUokgD+
	AjSE/0D/cKLAd2skiEhqCrHUWnMbSTlt+NppC6XLjlM3Yx/eek6XasiQHqenZTNYztgI1eO2Ph3ts
	pyXOs9FaS5A1P/CIoSMw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hi9NR-00052N-R9; Tue, 02 Jul 2019 03:22:41 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hi9N0-0004iV-P3; Tue, 02 Jul 2019 03:22:17 +0000
X-UUID: 3bfe4423e1844ab7a772ae0aec7c8015-20190701
X-UUID: 3bfe4423e1844ab7a772ae0aec7c8015-20190701
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw02.mediatek.com
 (envelope-from <ran.bi@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 445461977; Mon, 01 Jul 2019 19:21:45 -0800
Received: from mtkmbs08n2.mediatek.inc (172.21.101.56) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 1 Jul 2019 20:21:44 -0700
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs08n2.mediatek.inc (172.21.101.56) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 2 Jul 2019 11:21:42 +0800
Received: from localhost.localdomain (10.17.3.153) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Tue, 2 Jul 2019 11:21:41 +0800
From: Ran Bi <ran.bi@mediatek.com>
To: Alexandre Belloni <alexandre.belloni@bootlin.com>, Rob Herring
 <robh+dt@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>
Subject: [PATCH 1/3] bindings: rtc: add bindings for MT2712 RTC
Date: Tue, 2 Jul 2019 11:21:18 +0800
Message-ID: <20190702032120.16539-2-ran.bi@mediatek.com>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <20190702032120.16539-1-ran.bi@mediatek.com>
References: <20190702032120.16539-1-ran.bi@mediatek.com>
MIME-Version: 1.0
X-TM-SNTS-SMTP: 15D28A6D47DF99A9B36FAB162231E77F1B3E3C020637A024360F043E500940522000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190701_202214_817690_C6AA8B85 
X-CRM114-Status: UNSURE (   9.57  )
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

Document the binding for MT2712 RTC implemented by rtc-mt2712.

Signed-off-by: Ran Bi <ran.bi@mediatek.com>
---
 .../devicetree/bindings/rtc/rtc-mt2712.txt         | 14 ++++++++++++++
 1 file changed, 14 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/rtc/rtc-mt2712.txt

diff --git a/Documentation/devicetree/bindings/rtc/rtc-mt2712.txt b/Documentation/devicetree/bindings/rtc/rtc-mt2712.txt
new file mode 100644
index 000000000000..c33d87e5e753
--- /dev/null
+++ b/Documentation/devicetree/bindings/rtc/rtc-mt2712.txt
@@ -0,0 +1,14 @@
+Device-Tree bindings for MediaTek SoC based RTC
+
+Required properties:
+- compatible	    : Should be "mediatek,mt2712-rtc" : for MT2712 SoC
+- reg 		    : Specifies base physical address and size of the registers;
+- interrupts	    : Should contain the interrupt for RTC alarm;
+
+Example:
+
+rtc: rtc@10011000 {
+	compatible = "mediatek,mt2712-rtc";
+	reg = <0 0x10011000 0 0x1000>;
+	interrupts = <GIC_SPI 239 IRQ_TYPE_LEVEL_LOW>;
+};
-- 
2.18.0


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
