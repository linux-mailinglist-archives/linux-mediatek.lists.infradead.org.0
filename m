Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 379B68117E
	for <lists+linux-mediatek@lfdr.de>; Mon,  5 Aug 2019 07:23:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=y74RCnC7fEx8urmVdGuO2zKwQLU42LGYethloU+KCk0=; b=JyvHsXdTtgudER
	lCp9wK5t2pjQouauBaioyGoHUGve1yPmTiuO4wchx5nzS+aQKakantFEpP2J8806DV/mNGh9N3ROG
	tK8JOQsMwsTgx0F5JFLFWpgZ1EUcJcGZRXVflf3bQ+9gJj6hKRfzvvesmuMDXHA3dZ7W0TTSzFhtG
	ZPDGhrceElUvDMlMFeGDP+CTL7033YNbTVZa887TRTDRrR/3KOwj45kasZqSbL5eXHdgvIa/4VFvG
	LmSzRRnolHPrulgzXfxwwCWPVr9l5ujlm4iyq3Zo666965vxWDRaNBQ5k/6dTvSbbD457jvA8dDI3
	InTy9rh4uujr7jTRQPUA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1huVT7-0007XG-Cb; Mon, 05 Aug 2019 05:23:37 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1huVSU-00070O-IF; Mon, 05 Aug 2019 05:23:00 +0000
X-UUID: ec87b78fe13543109ce130f5c417cb5d-20190804
X-UUID: ec87b78fe13543109ce130f5c417cb5d-20190804
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw01.mediatek.com
 (envelope-from <hsin-hsiung.wang@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1138628257; Sun, 04 Aug 2019 21:22:54 -0800
Received: from MTKMBS01N1.mediatek.inc (172.21.101.68) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Sun, 4 Aug 2019 22:22:52 -0700
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 mtkmbs01n1.mediatek.inc (172.21.101.68) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 5 Aug 2019 13:22:43 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Mon, 5 Aug 2019 13:22:43 +0800
From: Hsin-Hsiung Wang <hsin-hsiung.wang@mediatek.com>
To: Lee Jones <lee.jones@linaro.org>, Rob Herring <robh+dt@kernel.org>,
 Matthias Brugger <matthias.bgg@gmail.com>, Mark Brown <broonie@kernel.org>
Subject: [PATCH v4 09/10] rtc: mt6397: fix alarm register overwrite
Date: Mon, 5 Aug 2019 13:21:57 +0800
Message-ID: <1564982518-32163-10-git-send-email-hsin-hsiung.wang@mediatek.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1564982518-32163-1-git-send-email-hsin-hsiung.wang@mediatek.com>
References: <1564982518-32163-1-git-send-email-hsin-hsiung.wang@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190804_222258_616533_33AC28B1 
X-CRM114-Status: GOOD (  11.86  )
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Alessandro Zummo <a.zummo@towertech.it>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>, srv_heupstream@mediatek.com,
 devicetree@vger.kernel.org, Kate Stewart <kstewart@linuxfoundation.org>,
 Sean Wang <sean.wang@mediatek.com>, Liam Girdwood <lgirdwood@gmail.com>,
 linux-kernel@vger.kernel.org, Richard Fontana <rfontana@redhat.com>,
 linux-mediatek@lists.infradead.org, Allison Randal <allison@lohutok.net>,
 linux-rtc@vger.kernel.org, Thomas Gleixner <tglx@linutronix.de>,
 Eddie Huang <eddie.huang@mediatek.com>, Ran Bi <ran.bi@mediatek.com>,
 Hsin-Hsiung Wang <hsin-hsiung.wang@mediatek.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

From: Ran Bi <ran.bi@mediatek.com>

Alarm registers high byte was reserved for other functions.
This add mask in alarm registers operation functions.
This also fix error condition in interrupt handler.

Fixes: fc2979118f3f ("rtc: mediatek: Add MT6397 RTC driver")

Signed-off-by: Ran Bi <ran.bi@mediatek.com>
---
 drivers/rtc/rtc-mt6397.c | 47 +++++++++++++++++++++++++++++++++--------------
 1 file changed, 33 insertions(+), 14 deletions(-)

diff --git a/drivers/rtc/rtc-mt6397.c b/drivers/rtc/rtc-mt6397.c
index b46ed4d..828def7 100644
--- a/drivers/rtc/rtc-mt6397.c
+++ b/drivers/rtc/rtc-mt6397.c
@@ -47,6 +47,14 @@
 
 #define RTC_AL_SEC		0x0018
 
+#define RTC_AL_SEC_MASK		0x003f
+#define RTC_AL_MIN_MASK		0x003f
+#define RTC_AL_HOU_MASK		0x001f
+#define RTC_AL_DOM_MASK		0x001f
+#define RTC_AL_DOW_MASK		0x0007
+#define RTC_AL_MTH_MASK		0x000f
+#define RTC_AL_YEA_MASK		0x007f
+
 #define RTC_PDN2		0x002e
 #define RTC_PDN2_PWRON_ALARM	BIT(4)
 
@@ -103,7 +111,7 @@ static irqreturn_t mtk_rtc_irq_handler_thread(int irq, void *data)
 		irqen = irqsta & ~RTC_IRQ_EN_AL;
 		mutex_lock(&rtc->lock);
 		if (regmap_write(rtc->regmap, rtc->addr_base + RTC_IRQ_EN,
-				 irqen) < 0)
+				 irqen) == 0)
 			mtk_rtc_write_trigger(rtc);
 		mutex_unlock(&rtc->lock);
 
@@ -225,12 +233,12 @@ static int mtk_rtc_read_alarm(struct device *dev, struct rtc_wkalrm *alm)
 	alm->pending = !!(pdn2 & RTC_PDN2_PWRON_ALARM);
 	mutex_unlock(&rtc->lock);
 
-	tm->tm_sec = data[RTC_OFFSET_SEC];
-	tm->tm_min = data[RTC_OFFSET_MIN];
-	tm->tm_hour = data[RTC_OFFSET_HOUR];
-	tm->tm_mday = data[RTC_OFFSET_DOM];
-	tm->tm_mon = data[RTC_OFFSET_MTH];
-	tm->tm_year = data[RTC_OFFSET_YEAR];
+	tm->tm_sec = data[RTC_OFFSET_SEC] & RTC_AL_SEC_MASK;
+	tm->tm_min = data[RTC_OFFSET_MIN] & RTC_AL_MIN_MASK;
+	tm->tm_hour = data[RTC_OFFSET_HOUR] & RTC_AL_HOU_MASK;
+	tm->tm_mday = data[RTC_OFFSET_DOM] & RTC_AL_DOM_MASK;
+	tm->tm_mon = data[RTC_OFFSET_MTH] & RTC_AL_MTH_MASK;
+	tm->tm_year = data[RTC_OFFSET_YEAR] & RTC_AL_YEA_MASK;
 
 	tm->tm_year += RTC_MIN_YEAR_OFFSET;
 	tm->tm_mon--;
@@ -251,14 +259,25 @@ static int mtk_rtc_set_alarm(struct device *dev, struct rtc_wkalrm *alm)
 	tm->tm_year -= RTC_MIN_YEAR_OFFSET;
 	tm->tm_mon++;
 
-	data[RTC_OFFSET_SEC] = tm->tm_sec;
-	data[RTC_OFFSET_MIN] = tm->tm_min;
-	data[RTC_OFFSET_HOUR] = tm->tm_hour;
-	data[RTC_OFFSET_DOM] = tm->tm_mday;
-	data[RTC_OFFSET_MTH] = tm->tm_mon;
-	data[RTC_OFFSET_YEAR] = tm->tm_year;
-
 	mutex_lock(&rtc->lock);
+	ret = regmap_bulk_read(rtc->regmap, rtc->addr_base + RTC_AL_SEC,
+			       data, RTC_OFFSET_COUNT);
+	if (ret < 0)
+		goto exit;
+
+	data[RTC_OFFSET_SEC] = ((data[RTC_OFFSET_SEC] & ~(RTC_AL_SEC_MASK)) |
+				(tm->tm_sec & RTC_AL_SEC_MASK));
+	data[RTC_OFFSET_MIN] = ((data[RTC_OFFSET_MIN] & ~(RTC_AL_MIN_MASK)) |
+				(tm->tm_min & RTC_AL_MIN_MASK));
+	data[RTC_OFFSET_HOUR] = ((data[RTC_OFFSET_HOUR] & ~(RTC_AL_HOU_MASK)) |
+				(tm->tm_hour & RTC_AL_HOU_MASK));
+	data[RTC_OFFSET_DOM] = ((data[RTC_OFFSET_DOM] & ~(RTC_AL_DOM_MASK)) |
+				(tm->tm_mday & RTC_AL_DOM_MASK));
+	data[RTC_OFFSET_MTH] = ((data[RTC_OFFSET_MTH] & ~(RTC_AL_MTH_MASK)) |
+				(tm->tm_mon & RTC_AL_MTH_MASK));
+	data[RTC_OFFSET_YEAR] = ((data[RTC_OFFSET_YEAR] & ~(RTC_AL_YEA_MASK)) |
+				(tm->tm_year & RTC_AL_YEA_MASK));
+
 	if (alm->enabled) {
 		ret = regmap_bulk_write(rtc->regmap,
 					rtc->addr_base + RTC_AL_SEC,
-- 
2.6.4


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
