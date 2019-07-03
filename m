Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F37A5E9BA
	for <lists+linux-mediatek@lfdr.de>; Wed,  3 Jul 2019 18:51:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=qaoZqBvMn5YaZiWSU7eEupgnBgojvlqrxxoS0rpxbHY=; b=ktDNZtI+6aOGVN6bF0LXKCAS+E
	sY6yAIcDZzL5PaYK/JqHoygMn0BEQ+9zf+bwKt7dec7t7KGZ00egWx4XXOXwELuoxfm8gkINOEzT3
	0nLzzVqndN2dRUxmoFLaKcr4kX5DpgYca5JTh1N/MA8sNJNM/D3FokzuCUm7WLu2NQr52sMO9JHH6
	y1WaNd76Zu6k+CQO+e+eWKVFo/XBRTPDz5By8p2Q5ybo5jVVvZWg7Y2PZE9COXuM9XX4ZB8F22Qzu
	bVScXXXBI76FkMn9G0bk7bzGDu18lBPlVtgc81YjiR+HQq1VVmgw2WvneTL/Gz/EMX5BSsIAIIf97
	jQQnfJTw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hiiTi-0003rf-FD; Wed, 03 Jul 2019 16:51:30 +0000
Received: from mout.gmx.net ([212.227.15.19])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hiiRq-0001CS-Bt; Wed, 03 Jul 2019 16:49:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1562172516;
 bh=M6PWi+AqvzIHnI2kv34DphxxV8F7xx3ycFGzciNTHis=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
 b=bTC6pznWnKuM2Q7ikYhEDEtVB6XrMQF7C4D3fmIQN5OPnhNjXYqhISarRoFWzzyJr
 nEO4RH6SMtjdWb90eSUniAUT6Qeagsf/SPn8grFddGBfDgaXgriQOZrTPjf9Hw4bno
 SHQ16P83037cSeXYO0ANMgqtI/zfdFvKIAs3c42I=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from localhost.localdomain ([217.61.158.204]) by mail.gmx.com
 (mrgmx004 [212.227.17.190]) with ESMTPSA (Nemesis) id
 1N9MpS-1iccR545rg-015Lm9; Wed, 03 Jul 2019 18:48:36 +0200
From: Frank Wunderlich <frank-w@public-files.de>
To: Lee Jones <lee.jones@linaro.org>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Sean Wang <sean.wang@mediatek.com>, Sebastian Reichel <sre@kernel.org>,
 Alessandro Zummo <a.zummo@towertech.it>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-mediatek@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-pm@vger.kernel.org, linux-rtc@vger.kernel.org,
 Eddie Huang <eddie.huang@mediatek.com>,
 Thomas Gleixner <tglx@linutronix.de>,
 Richard Fontana <rfontana@redhat.com>,
 Allison Randal <allison@lohutok.net>,
 "David S . Miller" <davem@davemloft.net>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Rob Herring <robh@kernel.org>, Linus Walleij <linus.walleij@linaro.org>,
 Nicolas Ferre <nicolas.ferre@microchip.com>,
 "Paul E . McKenney" <paulmck@linux.ibm.com>
Subject: [PATCH v2 4/7] mfd: mt6323: some improvements of mt6397-core
Date: Wed,  3 Jul 2019 18:48:19 +0200
Message-Id: <20190703164822.17924-5-frank-w@public-files.de>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190703164822.17924-1-frank-w@public-files.de>
References: <20190703164822.17924-1-frank-w@public-files.de>
X-Provags-ID: V03:K1:kuKrBJnTtq4b2/NjZPE2sfV/tuwmiaGxoDx1uz7jDmUZFdXJVqu
 E4J9a9ArB0XhOnjqVPn9Cu6pWThn9Rc4Ycy9O/xTrDtTUbdjiP6n3jveMUnYXxd/LZoUaHC
 icVc9kVck5MVdwiejAlltqlLU4JXl/0y71LTFKNGIBY6HUo8mbA+IAYxC0dnEYrwYWuCT0G
 jeD99AauMluP8+kc1Xv8Q==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:4y2AIBRbDu8=:pkbnQbe2JaaQmEjD1zX2hU
 +fISZlmmLjLuHjAe/k+og7KqE72m4C11dZwxNHNmzlNQChXlOsWgmhEcJfdJFKKb9+Zef4PMs
 fIQ1wa9Ce7miKBDE+8SzGAI9G+IrLDItZsihBUu0RfbNFk93kb98az9yvjL1gpX4gt0EoGueI
 SptkfiDCO4mc9UF9YMFnckzibtyDEU5/Z+V2T2vck3duPxHx23YIzet6ms/zeFSbE4VcrkwIF
 zwfwIlmfE5TJzlQYIxNGfgqnruP//rXCJUiMKWwra92M9+2RBjkHCU/E10MhSuGIjustYcPR2
 8f7t5Wr8CGA93gDSp55ZawCLT1/fHLqfCrPuHQcNZ+Izzs9A7gN7T663ATT1ZSJuZA9FdYxjv
 8uD7JWovO9+Tp76rNqhoEmXeHIugmcdy2j+Vbm/6sIwfIeXxtEyqi+NRNOLLuGtZnsloyesGd
 bEqyYtf89JOccjcwYvU/5MqY4rDTq3YvrZ4ZJBLMb7vCd/SujVPMR2AedI6WFXwgO7HiLyv4b
 6Gb2TM8DOBZ6TK5ctswVnukVAzc8ZUe86QZ8a+vu702qsoceLahkTvnE28ETw0ZzIfYdJgtiO
 4Q5zQdzGZgekbKsF7LCBwrLrzsOt3Vod+NeQiK1f1L/nbdjZ8WQFIpPBXJ4nGJfR8E4w7K3Rv
 /JjRf8ZsH4ef1iptYd5agp1zQO6uQZK6DP+0TGZLpRN/JvO1Lg3okL2ShQQtJFHw1Nk1GCTgu
 02NeYOJOZb3xhZn3KeSN4p2VbZrrnWj0s9TQon0C6wJywiTYCDtO9MXp5nFVwFeNIeho+k5WL
 LioKrfN+Suic2pv3IN6TMqcM2r5iVjcC468O7wmv/aV/bKeqNYO5T4FspIcLlZ1tYHQlLiSAU
 iOJkbPLUhGeiq7JoCdiVHxLq548UdL9MVl0ICMunu89tc2oPm0mjwCzrkxVOO9oGheruWFJr7
 O5t3EaJR1WwF/+PMPtjIaMsHcx9TdjcE58OcRxGrnv+jRwmroHSI1cME9wDv/kweyIseNK8v3
 XXhSPUus/34aUQRfIqnyrsUERQdU9Mm3g8ttDbgeJSdm20NHgT0FzXuZ6Qi5sPqikl0L6hVga
 FEsTdQsGIxFBs0=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190703_094934_723702_2236D278 
X-CRM114-Status: GOOD (  12.31  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.15.19 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

- simplyfications (resource definitions my DEFINE_RES_* macros)
- add mt6323 rtc+pwrc

Signed-off-by: Frank Wunderlich <frank-w@public-files.de>
---
 drivers/mfd/mt6397-core.c | 40 ++++++++++++++++++++++++++++-----------
 1 file changed, 29 insertions(+), 11 deletions(-)

diff --git a/drivers/mfd/mt6397-core.c b/drivers/mfd/mt6397-core.c
index 337bcccdb914..a4abce00f156 100644
--- a/drivers/mfd/mt6397-core.c
+++ b/drivers/mfd/mt6397-core.c
@@ -1,10 +1,11 @@
 // SPDX-License-Identifier: GPL-2.0-only
 /*
- * Copyright (c) 2014 MediaTek Inc.
+ * Copyright (c) 2014-2018 MediaTek Inc.
  * Author: Flora Fu, MediaTek
  */

 #include <linux/interrupt.h>
+#include <linux/ioport.h>
 #include <linux/module.h>
 #include <linux/of_device.h>
 #include <linux/of_irq.h>
@@ -15,24 +16,27 @@
 #include <linux/mfd/mt6397/registers.h>
 #include <linux/mfd/mt6323/registers.h>

+#define MT6323_RTC_BASE		0x8000
+#define MT6323_RTC_SIZE		0x40
+
 #define MT6397_RTC_BASE		0xe000
 #define MT6397_RTC_SIZE		0x3e

+#define MT6323_PWRC_BASE	0x8000
+#define MT6323_PWRC_SIZE	0x40
+
 #define MT6323_CID_CODE		0x23
 #define MT6391_CID_CODE		0x91
 #define MT6397_CID_CODE		0x97

+static const struct resource mt6323_rtc_resources[] = {
+	DEFINE_RES_MEM(MT6323_RTC_BASE, MT6323_RTC_SIZE),
+	DEFINE_RES_IRQ(MT6323_IRQ_STATUS_RTC),
+};
+
 static const struct resource mt6397_rtc_resources[] = {
-	{
-		.start = MT6397_RTC_BASE,
-		.end   = MT6397_RTC_BASE + MT6397_RTC_SIZE,
-		.flags = IORESOURCE_MEM,
-	},
-	{
-		.start = MT6397_IRQ_RTC,
-		.end   = MT6397_IRQ_RTC,
-		.flags = IORESOURCE_IRQ,
-	},
+	DEFINE_RES_MEM(MT6397_RTC_BASE, MT6397_RTC_SIZE),
+	DEFINE_RES_IRQ(MT6397_IRQ_RTC),
 };

 static const struct resource mt6323_keys_resources[] = {
@@ -45,8 +49,17 @@ static const struct resource mt6397_keys_resources[] = {
 	DEFINE_RES_IRQ(MT6397_IRQ_HOMEKEY),
 };

+static const struct resource mt6323_pwrc_resources[] = {
+	DEFINE_RES_MEM(MT6323_PWRC_BASE, MT6323_PWRC_SIZE),
+};
+
 static const struct mfd_cell mt6323_devs[] = {
 	{
+		.name = "mt6323-rtc",
+		.num_resources = ARRAY_SIZE(mt6323_rtc_resources),
+		.resources = mt6323_rtc_resources,
+		.of_compatible = "mediatek,mt6323-rtc",
+	}, {
 		.name = "mt6323-regulator",
 		.of_compatible = "mediatek,mt6323-regulator"
 	}, {
@@ -57,6 +70,11 @@ static const struct mfd_cell mt6323_devs[] = {
 		.num_resources = ARRAY_SIZE(mt6323_keys_resources),
 		.resources = mt6323_keys_resources,
 		.of_compatible = "mediatek,mt6323-keys"
+	}, {
+		.name = "mt6323-pwrc",
+		.num_resources = ARRAY_SIZE(mt6323_pwrc_resources),
+		.resources = mt6323_pwrc_resources,
+		.of_compatible = "mediatek,mt6323-pwrc"
 	},
 };

--
2.17.1


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
