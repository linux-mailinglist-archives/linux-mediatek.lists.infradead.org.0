Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0AA481B1C71
	for <lists+linux-mediatek@lfdr.de>; Tue, 21 Apr 2020 05:11:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5r4/4DYerT3apnsslWfcgeHqRDb9aTAqy8Yu9bxz0Xw=; b=D50oULveVncpKy
	WswIZo+ovJzR2qV/K3PVBz1R8g4QEBn8ZWCOuDJrUvLAheDA1M9UJXOfb680eSNvLPxLW2bJyIzLx
	TOouHJoHT9y9Z2Ckn8LKCUZpg0nYkyO17VkiIg/2moD9FN4gTFv0E/e+PdjIyzgLdVAgJP3SCEaHC
	gNYBfg3FEMGIbuCSIG9PqK4MtedQq70WvGO6U3zAleQ4eVgy5JQKr6GuH8ipWl3+FSPO3VmUimHqj
	VhQoHZ5HrNjVeU09I0VNWewZiWUbsA2WIpyHscc6RPLkYa9n4eC1NEJ/H7V7Z/0wsv7R6j6W2c+7V
	qxMUSYdayMpilPMI7Uzg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQjK5-0003XD-0g; Tue, 21 Apr 2020 03:11:45 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQjIl-00029O-OV; Tue, 21 Apr 2020 03:10:25 +0000
X-UUID: bbf2005d08ed4fc58be1b95bf225cd78-20200420
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From;
 bh=99oh6N8mdr4ZmH3MgX6Bmt28F3Ip4r6y2UmH1UwY2G4=; 
 b=T0sGSnFwHhnzDthzBDYtnmL1TYEJc0ULXWkcGww5xalThqYxSVAKW6WUdC5yiKRmGiHzBybhkr3hpMbiEnzlM0FLflEjf/EYsVefstooriZ9zMYXsFlvv7l9p9F4KWM7nWnUrRkGTphZOJEDV4I7/N+c2bmjEk1htRmM4D6pEdw=;
X-UUID: bbf2005d08ed4fc58be1b95bf225cd78-20200420
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <hsin-hsiung.wang@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 211401381; Mon, 20 Apr 2020 19:10:09 -0800
Received: from mtkmbs05n2.mediatek.inc (172.21.101.140) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Mon, 20 Apr 2020 20:00:16 -0700
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs05n2.mediatek.inc (172.21.101.140) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Tue, 21 Apr 2020 11:00:14 +0800
Received: from mtksdaap41.mediatek.inc (172.21.77.4) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via
 Frontend Transport; Tue, 21 Apr 2020 11:00:12 +0800
From: Hsin-Hsiung Wang <hsin-hsiung.wang@mediatek.com>
To: Lee Jones <lee.jones@linaro.org>, Rob Herring <robh+dt@kernel.org>,
 Matthias Brugger <matthias.bgg@gmail.com>, Alexandre Belloni
 <alexandre.belloni@bootlin.com>
Subject: [PATCH v13 2/6] mfd: mt6397: Trim probe function to support different
 chips more cleanly
Date: Tue, 21 Apr 2020 11:00:08 +0800
Message-ID: <1587438012-24832-3-git-send-email-hsin-hsiung.wang@mediatek.com>
X-Mailer: git-send-email 2.6.4
In-Reply-To: <1587438012-24832-1-git-send-email-hsin-hsiung.wang@mediatek.com>
References: <1587438012-24832-1-git-send-email-hsin-hsiung.wang@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200420_201023_801380_6CC8B805 
X-CRM114-Status: GOOD (  10.17  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 MIME_BASE64_TEXT       RAW: Message text disguised using base64
 encoding
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-rtc@vger.kernel.org, Alessandro Zummo <a.zummo@towertech.it>,
 Josef Friedl <josef.friedl@speed.at>, drinkcat@chromium.org,
 srv_heupstream@mediatek.com, Frank Wunderlich <frank-w@public-files.de>,
 Ran Bi <ran.bi@mediatek.com>, Sean Wang <sean.wang@mediatek.com>, Sebastian
 Reichel <sre@kernel.org>, linux-kernel@vger.kernel.org,
 Richard Fontana <rfontana@redhat.com>, devicetree@vger.kernel.org,
 linux-mediatek@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-pm@vger.kernel.org, Thomas Gleixner <tglx@linutronix.de>,
 Eddie Huang <eddie.huang@mediatek.com>,
 Hsin-Hsiung Wang <hsin-hsiung.wang@mediatek.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Add new struct members for mfd-cells and irq initial function, so we can
call devm_mfd_add_devices() only once.

Signed-off-by: Hsin-Hsiung Wang <hsin-hsiung.wang@mediatek.com>
Acked-for-MFD-by: Lee Jones <lee.jones@linaro.org>
---
 drivers/mfd/mt6397-core.c | 35 ++++++++++++++---------------------
 1 file changed, 14 insertions(+), 21 deletions(-)

diff --git a/drivers/mfd/mt6397-core.c b/drivers/mfd/mt6397-core.c
index d2e70d8..a313a72 100644
--- a/drivers/mfd/mt6397-core.c
+++ b/drivers/mfd/mt6397-core.c
@@ -103,22 +103,31 @@ static const struct mfd_cell mt6397_devs[] = {
 struct chip_data {
 	u32 cid_addr;
 	u32 cid_shift;
+	const struct mfd_cell *cells;
+	int cell_size;
+	int (*irq_init)(struct mt6397_chip *chip);
 };
 
 static const struct chip_data mt6323_core = {
 	.cid_addr = MT6323_CID,
 	.cid_shift = 0,
+	.cells = mt6323_devs,
+	.cell_size = ARRAY_SIZE(mt6323_devs),
+	.irq_init = mt6397_irq_init,
 };
 
 static const struct chip_data mt6397_core = {
 	.cid_addr = MT6397_CID,
 	.cid_shift = 0,
+	.cells = mt6397_devs,
+	.cell_size = ARRAY_SIZE(mt6397_devs),
+	.irq_init = mt6397_irq_init,
 };
 
 static int mt6397_probe(struct platform_device *pdev)
 {
 	int ret;
-	unsigned int id;
+	unsigned int id = 0;
 	struct mt6397_chip *pmic;
 	const struct chip_data *pmic_core;
 
@@ -154,29 +163,13 @@ static int mt6397_probe(struct platform_device *pdev)
 	if (pmic->irq <= 0)
 		return pmic->irq;
 
-	ret = mt6397_irq_init(pmic);
+	ret = pmic_core->irq_init(pmic);
 	if (ret)
 		return ret;
 
-	switch (pmic->chip_id) {
-	case MT6323_CHIP_ID:
-		ret = devm_mfd_add_devices(&pdev->dev, PLATFORM_DEVID_NONE,
-					   mt6323_devs, ARRAY_SIZE(mt6323_devs),
-					   NULL, 0, pmic->irq_domain);
-		break;
-
-	case MT6391_CHIP_ID:
-	case MT6397_CHIP_ID:
-		ret = devm_mfd_add_devices(&pdev->dev, PLATFORM_DEVID_NONE,
-					   mt6397_devs, ARRAY_SIZE(mt6397_devs),
-					   NULL, 0, pmic->irq_domain);
-		break;
-
-	default:
-		dev_err(&pdev->dev, "unsupported chip: %d\n", pmic->chip_id);
-		return -ENODEV;
-	}
-
+	ret = devm_mfd_add_devices(&pdev->dev, PLATFORM_DEVID_NONE,
+				   pmic_core->cells, pmic_core->cell_size,
+				   NULL, 0, pmic->irq_domain);
 	if (ret) {
 		irq_domain_remove(pmic->irq_domain);
 		dev_err(&pdev->dev, "failed to add child devices: %d\n", ret);
-- 
2.6.4
_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
