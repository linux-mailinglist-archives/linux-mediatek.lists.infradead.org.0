Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 947305E9A0
	for <lists+linux-mediatek@lfdr.de>; Wed,  3 Jul 2019 18:50:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=aebfXZYZeE7QWXisz/TQTqLnf5Nz+skjlz8LoD+7QBQ=; b=fyt+1CxXou31sJ2Nece2zOK2b6
	CWPCPUc0MytEDFpRfmBS+yS95pRU+InOOM4IOdWnU1U75xbWVp6/oD4wZe0ftU75VX+bH9na2mGUx
	VudrnXvMMCd5pJAgIiQjiCsjQwyBDUtFYC7kwlvffIa7etV6QvaerfJrh2Si+nGzj1UR0jk+MmvZp
	5hYIMOJToYqHp4R6Xp66K+eReHQoP0VymQBv4oT75ZCzraZgO6r0fi7UjV7YZy8esYQerhurwI4gZ
	Lq9RZqWBKHWRRzXWC/Ve5Gp9qPUuWWORLbr/UXHw5VS3YK0nGhLuzBneNY9kIWQmqtEffb90qUt61
	v03t7QJg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hiiSF-0001Ts-2q; Wed, 03 Jul 2019 16:49:59 +0000
Received: from mout.gmx.net ([212.227.15.15])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hiiRo-0001CK-PI; Wed, 03 Jul 2019 16:49:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1562172515;
 bh=Q4SNzBfUgmUaXEsp2/EkbHDrGPVnZzLCOAAZMoTbLHU=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
 b=dUAq2zu8k0rxZvBIT5mcoE2t0sC3jCT+ju9g6JRkYtSp4RB6PavjpCfVuJ3uQRRag
 PtBvoecXZuNbglZNIfhDtks5YMtnk0+OSSOMgQzm+6QDyPXudrub7GdWqXzZqIxp28
 vaAJLRKY6+Bm2vyaA7kTXQhbVzwli2iBr3QLmayg=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from localhost.localdomain ([217.61.158.204]) by mail.gmx.com
 (mrgmx004 [212.227.17.190]) with ESMTPSA (Nemesis) id
 1MbirE-1iF1363taI-00dD2d; Wed, 03 Jul 2019 18:48:35 +0200
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
Subject: [PATCH v2 3/7] rtc: mt6397: improvements of rtc driver
Date: Wed,  3 Jul 2019 18:48:18 +0200
Message-Id: <20190703164822.17924-4-frank-w@public-files.de>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190703164822.17924-1-frank-w@public-files.de>
References: <20190703164822.17924-1-frank-w@public-files.de>
X-Provags-ID: V03:K1:Doz5m2szHD54xebFCDZtFG1jkMhZkLcvMGXvCyriCBWcdSKa3Po
 9pNHVGegXnLoqrAeDO7HXgCEhNeUReGWchhh3UVvXcsL6dD65KFzYJ1tAzs8YKkI2gMYAJW
 LC9Evz9eFQO1eF3akk3EL0bT7PfbiTi5oaw4VaP8f9vPXewf09C2JHPqAcdg9iEdYErjHpu
 1VcNABzfFOtmGkWQ3WBeA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:XzjbtNDDVBI=:6fPDOhc3ib1mIDPeODXkCM
 sGi1yA24Th45Cti4r6Y/VVlK7UWP/BLhd4poItsbr+IxQhAowvs6NNYsbHW3GH455oJZvioNF
 Iz9au5ndpJA27wKgIKRuGvhb+0p59VDjdfiVFTfduF+yiu4c+G+S7rrqVatiaGL1nAucT4yel
 1JiS4o0cD/oOP58flHAPTxmJkMw0e93hr94qBZRn9BCNdG69zTFZkd7xpHZsp5uNOq7L3uKIU
 yHj60ZWItxffMb4qH/X7ERxbLhEQwIY02T+NQtnZg4v2259rR5do7Upvh1RRUcolMeM7vGTYH
 mgCAy2IOu53hldt6Q3fRSXGaI3OqMbu3WeoBN/RK1DPRzEDEdIYwAYr9BOdAr5VoUSQhzOjvj
 qSjwMlr4ryLFhTrnOEqtJ6X0Xop8NoGrWRlf1jnVB9CTiqe3716CRqhlsNdaEVhghXX3dQjol
 CGpdKc6iw9xvxM0zJz9l6x7g7GxkistvOnle7SMPISNaZwZER8Rza8QR9K1ZEfCGrSgVwihbE
 e9Czk22vy05sRHcKC5Ke8nYPvGyskoGRZREhurmrTgSJBvVVymfKkSVH+FRux18hLEN25W0zA
 47AKfruN7OYXdawFTDu43VqZgGSe9KllIEO3TbTgAS3Idocr9sBaBWxDj7Hh9ALIi0qpMnjIR
 o48+7naGWINRsknUz/s/qsc7S3ZEObFHqWKMKE8PHSCCOWLskDGq9tnr111598PVD7bldVS4F
 mAAuPrrA+wagXuvlmZ5ZlYv13TTbALqZkA7i6sn+Pd1AMWo+FJfdpIUs9LUWBhnn9Lhp0uDI9
 zodNRadZvE4BtssJmsUzNk3dfiD9vJssjxxPSrRx9P3DYOxchAu6Q1MbvuSSuFRES+fw2bgrn
 7wzeLS0IVG4/PofxgGy6FXVLzjjhnWUXj32h+vCPDiLKKMz/xZKW8CpWawz/b61VF+RAmqcRg
 MsZPvcSJ4LR/1YfWdlAh7cX9Gwv6OzpVyFO3ZpiPobgO76SIKO4GKVKkiqEywfTOsnfZ+TOhc
 ICjiGClrvXeiYyaHpfKONdnWyaH04Bbd0pCM/LW68c68SC8JSKo/kekPE6uBRNiLMkzjrYJyS
 sfAoazhD4roxRs=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190703_094933_121628_B9774E1E 
X-CRM114-Status: GOOD (  16.46  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.15.15 listed in list.dnswl.org]
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

- use regmap_read_poll_timeout to drop while-loop
- use devm-api to drop remove-callback
- add new compatible for mt6323

Signed-off-by: Frank Wunderlich <frank-w@public-files.de>
---
 drivers/rtc/rtc-mt6397.c | 55 ++++++++++++++++------------------------
 1 file changed, 22 insertions(+), 33 deletions(-)

diff --git a/drivers/rtc/rtc-mt6397.c b/drivers/rtc/rtc-mt6397.c
index c08ee5edf865..e5ddf0d0b6f1 100644
--- a/drivers/rtc/rtc-mt6397.c
+++ b/drivers/rtc/rtc-mt6397.c
@@ -4,16 +4,19 @@
 * Author: Tianping.Fang <tianping.fang@mediatek.com>
 */

-#include <linux/delay.h>
-#include <linux/init.h>
+#include <linux/err.h>
+#include <linux/interrupt.h>
+#include <linux/mfd/mt6397/core.h>
 #include <linux/module.h>
+#include <linux/mutex.h>
+#include <linux/platform_device.h>
 #include <linux/regmap.h>
 #include <linux/rtc.h>
 #include <linux/mfd/mt6397/rtc.h>
+#include <linux/mod_devicetable.h>

 static int mtk_rtc_write_trigger(struct mt6397_rtc *rtc)
 {
-	unsigned long timeout = jiffies + HZ;
 	int ret;
 	u32 data;

@@ -21,19 +24,13 @@ static int mtk_rtc_write_trigger(struct mt6397_rtc *rtc)
 	if (ret < 0)
 		return ret;

-	while (1) {
-		ret = regmap_read(rtc->regmap, rtc->addr_base + RTC_BBPU,
-				  &data);
-		if (ret < 0)
-			break;
-		if (!(data & RTC_BBPU_CBUSY))
-			break;
-		if (time_after(jiffies, timeout)) {
-			ret = -ETIMEDOUT;
-			break;
-		}
-		cpu_relax();
-	}
+	ret = regmap_read_poll_timeout(rtc->regmap,
+					rtc->addr_base + RTC_BBPU, data,
+					!(data & RTC_BBPU_CBUSY),
+					MTK_RTC_POLL_DELAY_US,
+					MTK_RTC_POLL_TIMEOUT);
+	if (ret < 0)
+		dev_err(rtc->dev, "failed to write WRTGE: %d\n", ret);

 	return ret;
 }
@@ -271,14 +268,11 @@ static int mtk_rtc_probe(struct platform_device *pdev)

 	platform_set_drvdata(pdev, rtc);

-	rtc->rtc_dev = devm_rtc_allocate_device(rtc->dev);
-	if (IS_ERR(rtc->rtc_dev))
-		return PTR_ERR(rtc->rtc_dev);
+	ret = devm_request_threaded_irq(&pdev->dev, rtc->irq, NULL,
+					mtk_rtc_irq_handler_thread,
+					IRQF_ONESHOT | IRQF_TRIGGER_HIGH,
+					"mt6397-rtc", rtc);

-	ret = request_threaded_irq(rtc->irq, NULL,
-				   mtk_rtc_irq_handler_thread,
-				   IRQF_ONESHOT | IRQF_TRIGGER_HIGH,
-				   "mt6397-rtc", rtc);
 	if (ret) {
 		dev_err(&pdev->dev, "Failed to request alarm IRQ: %d: %d\n",
 			rtc->irq, ret);
@@ -287,6 +281,10 @@ static int mtk_rtc_probe(struct platform_device *pdev)

 	device_init_wakeup(&pdev->dev, 1);

+	rtc->rtc_dev = devm_rtc_allocate_device(&pdev->dev);
+	if (IS_ERR(rtc->rtc_dev))
+		return PTR_ERR(rtc->rtc_dev);
+
 	rtc->rtc_dev->ops = &mtk_rtc_ops;

 	ret = rtc_register_device(rtc->rtc_dev);
@@ -302,15 +300,6 @@ static int mtk_rtc_probe(struct platform_device *pdev)
 	return ret;
 }

-static int mtk_rtc_remove(struct platform_device *pdev)
-{
-	struct mt6397_rtc *rtc = platform_get_drvdata(pdev);
-
-	free_irq(rtc->irq, rtc);
-
-	return 0;
-}
-
 #ifdef CONFIG_PM_SLEEP
 static int mt6397_rtc_suspend(struct device *dev)
 {
@@ -337,6 +326,7 @@ static SIMPLE_DEV_PM_OPS(mt6397_pm_ops, mt6397_rtc_suspend,
 			mt6397_rtc_resume);

 static const struct of_device_id mt6397_rtc_of_match[] = {
+	{ .compatible = "mediatek,mt6323-rtc", },
 	{ .compatible = "mediatek,mt6397-rtc", },
 	{ }
 };
@@ -349,7 +339,6 @@ static struct platform_driver mtk_rtc_driver = {
 		.pm = &mt6397_pm_ops,
 	},
 	.probe	= mtk_rtc_probe,
-	.remove = mtk_rtc_remove,
 };

 module_platform_driver(mtk_rtc_driver);
--
2.17.1


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
