Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 390421177F
	for <lists+linux-mediatek@lfdr.de>; Thu,  2 May 2019 12:45:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3SBxy2DGUtn3/henUR+EXrqvXYxM75eBgzdojxSaWzs=; b=SdHxPECW7nTRuz
	hk2QyDse8mhigQdWQEp/gvP4V+TOB94bOv6eK4t2wujpE6GLGmBZGuvOgyI7u0emBnUJ8vopx2GZa
	uDzYCEUpdVSwA0gYQNe6v9KK7Ggyy4ijaordBfuMIj+1ssW8qp8Wq04SBN9HtXZAeWSPa+yo4F7w+
	myM+VmT8wqDUH73qvC90GtSTP/LGTNQxL5dvn8dfA3BWXQlgTf09/PPymXIidZDg2v0q3boYOYzc+
	Kj9Hyvg8zYI09z5QEcH/of4YwrxcBvQD6USV169JNmpqvBz6qSaDdhaizYuyMRCiLMsPGiyecEXSt
	M13eGt4paKurlRKFudlQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hM9Dm-0003f4-4z; Thu, 02 May 2019 10:45:46 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hM9Di-0003ea-Vj; Thu, 02 May 2019 10:45:44 +0000
X-UUID: 3bb05b43b0dd4e2098134ef1b1b4374f-20190502
X-UUID: 3bb05b43b0dd4e2098134ef1b1b4374f-20190502
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <michael.kao@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1797226956; Thu, 02 May 2019 02:43:28 -0800
Received: from MTKMBS01N1.mediatek.inc (172.21.101.68) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 2 May 2019 03:43:27 -0700
Received: from mtkcas09.mediatek.inc (172.21.101.178) by
 mtkmbs01n1.mediatek.inc (172.21.101.68) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 2 May 2019 18:43:19 +0800
Received: from mtksdccf07.mediatek.inc (172.21.84.99) by mtkcas09.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Thu, 2 May 2019 18:43:19 +0800
From: michael.kao <michael.kao@mediatek.com>
To: <michael.kao@mediatek.com>, <fan.chen@mediatek.com>,
 <jamesjj.liao@mediatek.com>, <dawei.chien@mediatek.com>,
 <louis.yu@mediatek.com>, <roger.lu@mediatek.com>, Zhang Rui
 <rui.zhang@intel.com>, Eduardo Valentin <edubezval@gmail.com>, Daniel Lezcano
 <daniel.lezcano@linaro.org>, Rob Herring <robh+dt@kernel.org>, Mark Rutland
 <mark.rutland@arm.com>, Matthias Brugger <matthias.bgg@gmail.com>
Subject: [PATCH 7/8] thermal: mediatek: add another get_temp ops for thermal
 sensors
Date: Thu, 2 May 2019 18:43:14 +0800
Message-ID: <1556793795-25204-8-git-send-email-michael.kao@mediatek.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1556793795-25204-1-git-send-email-michael.kao@mediatek.com>
References: <1556793795-25204-1-git-send-email-michael.kao@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190502_034543_019717_8C2CBE2B 
X-CRM114-Status: GOOD (  16.24  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: devicetree@vger.kernel.org, linux-mediatek@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-pm@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

From: Michael Kao <michael.kao@mediatek.com>

Provide thermal zone to read thermal sensor
in the SoC. We can read all the thermal sensors
value in the SoC by the node /sys/class/thermal/

Signed-off-by: Michael Kao <michael.kao@mediatek.com>
---
 drivers/thermal/mtk_thermal.c | 68 ++++++++++++++++++++++++++++++++++++++-----
 1 file changed, 60 insertions(+), 8 deletions(-)

diff --git a/drivers/thermal/mtk_thermal.c b/drivers/thermal/mtk_thermal.c
index cb41e46..d5c78b0 100644
--- a/drivers/thermal/mtk_thermal.c
+++ b/drivers/thermal/mtk_thermal.c
@@ -230,6 +230,11 @@ enum {
 
 struct mtk_thermal;
 
+struct mtk_thermal_zone {
+	struct mtk_thermal *mt;
+	int id;
+};
+
 struct thermal_bank_cfg {
 	unsigned int num_sensors;
 	const int *sensors;
@@ -612,7 +617,7 @@ static int mtk_thermal_bank_temperature(struct mtk_thermal_bank *bank)
 		 * not immediately shut down.
 		 */
 		if (temp > 200000)
-			temp = 0;
+			temp = -EACCES;
 
 		if (temp > max)
 			max = temp;
@@ -623,7 +628,8 @@ static int mtk_thermal_bank_temperature(struct mtk_thermal_bank *bank)
 
 static int mtk_read_temp(void *data, int *temperature)
 {
-	struct mtk_thermal *mt = data;
+	struct mtk_thermal_zone *tz = data;
+	struct mtk_thermal *mt = tz->mt;
 	int i;
 	int tempmax = INT_MIN;
 
@@ -636,16 +642,48 @@ static int mtk_read_temp(void *data, int *temperature)
 
 		mtk_thermal_put_bank(bank);
 	}
-
 	*temperature = tempmax;
 
 	return 0;
 }
 
+static int mtk_read_sensor_temp(void *data, int *temperature)
+{
+	struct mtk_thermal_zone *tz = data;
+	struct mtk_thermal *mt = tz->mt;
+	const struct mtk_thermal_data *conf = mt->conf;
+	int id = tz->id - 1;
+	int temp = INT_MIN;
+	u32 raw;
+
+	if (id < 0)
+		return  -EACCES;
+
+	raw = readl(mt->thermal_base + conf->msr[id]);
+
+	temp = raw_to_mcelsius(mt, id, raw);
+
+	/*
+	 * The first read of a sensor often contains very high bogus
+	 * temperature value. Filter these out so that the system does
+	 * not immediately shut down.
+	 */
+
+	if (temp > 200000)
+		return  -EACCES;
+
+	*temperature = temp;
+	return 0;
+}
+
 static const struct thermal_zone_of_device_ops mtk_thermal_ops = {
 	.get_temp = mtk_read_temp,
 };
 
+static const struct thermal_zone_of_device_ops mtk_thermal_sensor_ops = {
+	.get_temp = mtk_read_sensor_temp,
+};
+
 static void mtk_thermal_init_bank(struct mtk_thermal *mt, int num,
 				  u32 apmixed_phys_base, u32 auxadc_phys_base,
 				  int ctrl_id)
@@ -878,6 +916,7 @@ static int mtk_thermal_probe(struct platform_device *pdev)
 	struct resource *res;
 	u64 auxadc_phys_base, apmixed_phys_base;
 	struct thermal_zone_device *tzdev;
+	struct mtk_thermal_zone *tz;
 
 	mt = devm_kzalloc(&pdev->dev, sizeof(*mt), GFP_KERNEL);
 	if (!mt)
@@ -959,11 +998,24 @@ static int mtk_thermal_probe(struct platform_device *pdev)
 
 	platform_set_drvdata(pdev, mt);
 
-	tzdev = devm_thermal_zone_of_sensor_register(&pdev->dev, 0, mt,
-						     &mtk_thermal_ops);
-	if (IS_ERR(tzdev)) {
-		ret = PTR_ERR(tzdev);
-		goto err_disable_clk_peri_therm;
+	for (i = 0; i < mt->conf->num_sensors + 1; i++) {
+		tz = kmalloc(sizeof(*tz), GFP_KERNEL);
+		if (!tz)
+			return -ENOMEM;
+
+		tz->mt = mt;
+		tz->id = i;
+
+		tzdev = devm_thermal_zone_of_sensor_register(&pdev->dev, i,
+				tz, (i == 0) ?
+				&mtk_thermal_ops : &mtk_thermal_sensor_ops);
+
+		if (IS_ERR(tzdev)) {
+			if (IS_ERR(tzdev) != -EACCES) {
+				ret = PTR_ERR(tzdev);
+				goto err_disable_clk_peri_therm;
+			}
+		}
 	}
 
 	return 0;
-- 
1.9.1


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
