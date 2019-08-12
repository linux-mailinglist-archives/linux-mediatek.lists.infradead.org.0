Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F9F789DD4
	for <lists+linux-mediatek@lfdr.de>; Mon, 12 Aug 2019 14:16:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=zQKF08PemTDHdoBx+cGMJa3qB/kahisPQdi7u1PNLSw=; b=X4tepgdds2KKcFv8W0NMCsBwaB
	cQHtbTuKU/ERZZDoztJW1Y8vNQAJD1g+b5M5Ckp4i6Uzgmwh+H5NKt5N0drzC8UawO4GdyYzC5nnl
	c0B07C3hOIc1lh2izomKRaisALvIUbXZLmUoWK5dBEZsHDh3xASuqhPvc49hITo1cCcRKkuPpeqTH
	GFYH+Ayp7sBs2YhxocUKmHR8YAtq4eQzQG0M5Tu+Vmd/Rk1BU5Zsrq5TX44YCatkJxskjOpWq+7du
	FcZ+99UwQJRsMC93d+DGsG1h68cA91kpnmO81xEbb9z0BSoYPpuLXB4e+SSMmORWvLN/p7lew4bAv
	DXyc+MvA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hx9FL-00034d-Sz; Mon, 12 Aug 2019 12:16:20 +0000
Received: from mxwww.masterlogin.de ([95.129.51.220])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hx9Ea-0002ZE-Vx; Mon, 12 Aug 2019 12:15:34 +0000
Received: from mxout2.routing.net (unknown [192.168.10.82])
 by new.mxwww.masterlogin.de (Postfix) with ESMTPS id 67BAA96D7A;
 Mon, 12 Aug 2019 12:15:29 +0000 (UTC)
Received: from mxbox2.masterlogin.de (unknown [192.168.10.253])
 by mxout2.routing.net (Postfix) with ESMTP id A21DA647BC;
 Mon, 12 Aug 2019 12:15:29 +0000 (UTC)
Received: from localhost.localdomain (fttx-pool-217.61.152.193.bambit.de
 [217.61.152.193])
 by mxbox2.masterlogin.de (Postfix) with ESMTPSA id DD8EC100D06;
 Mon, 12 Aug 2019 14:15:26 +0200 (CEST)
From: Frank Wunderlich <frank-w@public-files.de>
To: Alessandro Zummo <a.zummo@towertech.it>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Allison Randal <allison@lohutok.net>,
 "David S. Miller" <davem@davemloft.net>, devicetree@vger.kernel.org,
 Eddie Huang <eddie.huang@mediatek.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Jonathan Cameron <Jonathan.Cameron@huawei.com>,
 Kate Stewart <kstewart@linuxfoundation.org>,
 Lee Jones <lee.jones@linaro.org>, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-mediatek@lists.infradead.org,
 linux-pm@vger.kernel.org, linux-rtc@vger.kernel.org,
 Mark Rutland <mark.rutland@arm.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 Nicolas Ferre <nicolas.ferre@microchip.com>,
 Richard Fontana <rfontana@redhat.com>, Rob Herring <robh+dt@kernel.org>,
 Sean Wang <sean.wang@mediatek.com>, Sebastian Reichel <sre@kernel.org>,
 Thomas Gleixner <tglx@linutronix.de>,
 "Tianping . Fang" <tianping.fang@mediatek.com>
Subject: [PATCH v5 01/10] dt-bindings: add powercontroller
Date: Mon, 12 Aug 2019 14:15:02 +0200
Message-Id: <20190812121511.4169-2-frank-w@public-files.de>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190812121511.4169-1-frank-w@public-files.de>
References: <20190812121511.4169-1-frank-w@public-files.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190812_051533_351774_AA6B7BFA 
X-CRM114-Status: GOOD (  14.63  )
X-Spam-Score: -0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [95.129.51.220 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Josef Friedl <josef.friedl@speed.at>,
 Frank Wunderlich <frank-w@public-files.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

From: Josef Friedl <josef.friedl@speed.at>

add mt6323-rtc and mt6323-pwrc to mt6397 mfd DT bindings
an example is shown in mt6323-poweroff.txt

Suggested-by: Frank Wunderlich <frank-w@public-files.de>
Signed-off-by: Josef Friedl <josef.friedl@speed.at>
Signed-off-by: Frank Wunderlich <frank-w@public-files.de>
Acked-for-MFD-by: Lee Jones <lee.jones@linaro.org>
---
changes since v4: use relative path
changes since v3: none
changes since v2: separated rtc-mt6397.txt to part 2
---
 .../devicetree/bindings/mfd/mt6397.txt        | 20 +++++++++++++------
 .../bindings/power/reset/mt6323-poweroff.txt  | 20 +++++++++++++++++++
 2 files changed, 34 insertions(+), 6 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/power/reset/mt6323-poweroff.txt

diff --git a/Documentation/devicetree/bindings/mfd/mt6397.txt b/Documentation/devicetree/bindings/mfd/mt6397.txt
index 0ebd08af777d..063f5fe1cace 100644
--- a/Documentation/devicetree/bindings/mfd/mt6397.txt
+++ b/Documentation/devicetree/bindings/mfd/mt6397.txt
@@ -8,11 +8,12 @@ MT6397/MT6323 is a multifunction device with the following sub modules:
 - Clock
 - LED
 - Keys
+- Power controller
 
 It is interfaced to host controller using SPI interface by a proprietary hardware
 called PMIC wrapper or pwrap. MT6397/MT6323 MFD is a child device of pwrap.
 See the following for pwarp node definitions:
-Documentation/devicetree/bindings/soc/mediatek/pwrap.txt
+../../bindings/soc/mediatek/pwrap.txt
 
 This document describes the binding for MFD device and its sub module.
 
@@ -22,14 +23,16 @@ compatible: "mediatek,mt6397" or "mediatek,mt6323"
 Optional subnodes:
 
 - rtc
-	Required properties:
+	Required properties: Should be one of follows
+		- compatible: "mediatek,mt6323-rtc"
 		- compatible: "mediatek,mt6397-rtc"
+	For details, see ../../bindings/rtc/rtc-mt6397.txt
 - regulators
 	Required properties:
 		- compatible: "mediatek,mt6397-regulator"
-	see Documentation/devicetree/bindings/regulator/mt6397-regulator.txt
+	see ../../bindings/regulator/mt6397-regulator.txt
 		- compatible: "mediatek,mt6323-regulator"
-	see Documentation/devicetree/bindings/regulator/mt6323-regulator.txt
+	see ../../bindings/regulator/mt6323-regulator.txt
 - codec
 	Required properties:
 		- compatible: "mediatek,mt6397-codec"
@@ -39,12 +42,17 @@ Optional subnodes:
 - led
 	Required properties:
 		- compatible: "mediatek,mt6323-led"
-	see Documentation/devicetree/bindings/leds/leds-mt6323.txt
+	see ../../bindings/leds/leds-mt6323.txt
 
 - keys
 	Required properties:
 		- compatible: "mediatek,mt6397-keys" or "mediatek,mt6323-keys"
-	see Documentation/devicetree/bindings/input/mtk-pmic-keys.txt
+	see ../../bindings/input/mtk-pmic-keys.txt
+
+- power-controller
+	Required properties:
+		- compatible: "mediatek,mt6323-pwrc"
+	For details, see ../../bindings/power/reset/mt6323-poweroff.txt
 
 Example:
 	pwrap: pwrap@1000f000 {
diff --git a/Documentation/devicetree/bindings/power/reset/mt6323-poweroff.txt b/Documentation/devicetree/bindings/power/reset/mt6323-poweroff.txt
new file mode 100644
index 000000000000..933f0c48e887
--- /dev/null
+++ b/Documentation/devicetree/bindings/power/reset/mt6323-poweroff.txt
@@ -0,0 +1,20 @@
+Device Tree Bindings for Power Controller on MediaTek PMIC
+
+The power controller which could be found on PMIC is responsible for externally
+powering off or on the remote MediaTek SoC through the circuit BBPU.
+
+Required properties:
+- compatible: Should be one of follows
+       "mediatek,mt6323-pwrc": for MT6323 PMIC
+
+Example:
+
+       pmic {
+               compatible = "mediatek,mt6323";
+
+               ...
+
+               power-controller {
+                       compatible = "mediatek,mt6323-pwrc";
+               };
+       }
-- 
2.17.1


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
