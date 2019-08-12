Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B5A3989DD5
	for <lists+linux-mediatek@lfdr.de>; Mon, 12 Aug 2019 14:16:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=9zWqX1d8EnGrcgv1rIRkIyFcuWftzJquo9wFOPhdyRE=; b=ELQlw7I2R6X7FlSqIzcy1W4jaW
	rzHB4aAqyBRbfKbNOKgPnk6LKMF7696UwPUS5l4Qm42KacqXgbT6O7KEXaXyfPDaXrYBaMIxsB18b
	prsfImWf1vZLJtZkH6yRaUxm1UxmlHTWIzOL5z35njlOF67hkjfTZsJE2djZuILNwCcqiQAR/SuDV
	oBB+O0jaAZnYOJc/0PEuUKu35uxNv8fpM1p5/TVziNZEi2Ixm4MJgycjPjyI86BDulVHNB71H0IAi
	yDgHYhuZE63G2BqtT2Kq2RQmx9ikUAoRKPDeouzIp9qiWBQxXFgu637i32E1O2swM9Uo9Mg/LW7uc
	l9+PWVuw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hx9Fm-0003Pt-1k; Mon, 12 Aug 2019 12:16:46 +0000
Received: from mxwww.masterlogin.de ([95.129.51.220])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hx9Eb-0002ZF-LM; Mon, 12 Aug 2019 12:15:36 +0000
Received: from mxout2.routing.net (unknown [192.168.10.82])
 by new.mxwww.masterlogin.de (Postfix) with ESMTPS id 7729A96D5E;
 Mon, 12 Aug 2019 12:15:30 +0000 (UTC)
Received: from mxbox2.masterlogin.de (unknown [192.168.10.253])
 by mxout2.routing.net (Postfix) with ESMTP id C7876647BC;
 Mon, 12 Aug 2019 12:15:30 +0000 (UTC)
Received: from localhost.localdomain (fttx-pool-217.61.152.193.bambit.de
 [217.61.152.193])
 by mxbox2.masterlogin.de (Postfix) with ESMTPSA id 7BDD1100D0A;
 Mon, 12 Aug 2019 14:15:29 +0200 (CEST)
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
Subject: [PATCH v5 02/10] dt-bindings: add missing mt6397 rtc
Date: Mon, 12 Aug 2019 14:15:03 +0200
Message-Id: <20190812121511.4169-3-frank-w@public-files.de>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190812121511.4169-1-frank-w@public-files.de>
References: <20190812121511.4169-1-frank-w@public-files.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190812_051533_848866_894F6BFC 
X-CRM114-Status: GOOD (  12.31  )
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

add missing devicetree-binding document for mt6397 rtc
in later patch driver is extended with mt6323 chip

Suggested-By: Alexandre Belloni <alexandre.belloni@bootlin.com>
Signed-off-by: Josef Friedl <josef.friedl@speed.at>
Signed-off-by: Frank Wunderlich <frank-w@public-files.de>
---
changes since v4: use relative path
changes since v3: moved SOB
changes since v2: splitted rtc-mt6397.txt from first patch
---
 .../devicetree/bindings/rtc/rtc-mt6397.txt    | 29 +++++++++++++++++++
 1 file changed, 29 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/rtc/rtc-mt6397.txt

diff --git a/Documentation/devicetree/bindings/rtc/rtc-mt6397.txt b/Documentation/devicetree/bindings/rtc/rtc-mt6397.txt
new file mode 100644
index 000000000000..4d2d8317e16b
--- /dev/null
+++ b/Documentation/devicetree/bindings/rtc/rtc-mt6397.txt
@@ -0,0 +1,29 @@
+Device-Tree bindings for MediaTek PMIC based RTC
+
+MediaTek PMIC based RTC is an independent function of MediaTek PMIC that works
+as a type of multi-function device (MFD). The RTC can be configured and set up
+with PMIC wrapper bus which is a common resource shared with the other
+functions found on the same PMIC.
+
+For MediaTek PMIC MFD bindings, see:
+../../bindings/mfd/mt6397.txt
+
+For MediaTek PMIC wrapper bus bindings, see:
+../../bindings/soc/mediatek/pwrap.txt
+
+Required properties:
+- compatible: Should be one of follows
+       "mediatek,mt6323-rtc": for MT6323 PMIC
+       "mediatek,mt6397-rtc": for MT6397 PMIC
+
+Example:
+
+       pmic {
+               compatible = "mediatek,mt6323";
+
+               ...
+
+               rtc {
+                       compatible = "mediatek,mt6323-rtc";
+               };
+       };
-- 
2.17.1


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
