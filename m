Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D2E932165
	for <lists+linux-mediatek@lfdr.de>; Sun,  2 Jun 2019 03:05:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=39n8sOVVk+fNjtZ7iHpRGKsOP5KUMzGhdSvo/vRrjlQ=; b=uqCPMSSyoBcodd
	dRgOIumjG2GD7AoVJg4UEoNDHjHvhiVb4Z392bTi539Aoy0hOx/nj5Mp6w4UKiwhyb7w9qNycsFIE
	SRnuDJ2K+FxNxefazW525D2dHfnhENer3CQ57CAH5biqfJv7rdXBOu1aGscdczsXheJHdIgPZz3jL
	s2G/C61zWU/yaoX98aDvMQ5BWO9LqhclqanmuNTEqO3sZxLOzv4kTEg2BhC0pq7Izt6LrCug2gKlW
	azDJ0l700sqTlVdiScnh2WiW3CkAUIFJ4oAunwYxrX8IAt/67gabcwnK46MmOh6GbSrzeUI8vlknF
	jnafB1bJLUHhdMOG5ZPw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXEwA-0002T4-Ea; Sun, 02 Jun 2019 01:05:26 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXEvj-0000in-TK; Sun, 02 Jun 2019 01:05:01 +0000
X-UUID: 4544d383a6f64735af25352dceaa0b0f-20190601
X-UUID: 4544d383a6f64735af25352dceaa0b0f-20190601
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw02.mediatek.com
 (envelope-from <sean.wang@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 800003856; Sat, 01 Jun 2019 17:04:26 -0800
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Sat, 1 Jun 2019 18:04:24 -0700
Received: from mtkswgap22.mediatek.inc (172.21.77.33) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Sun, 2 Jun 2019 09:04:23 +0800
From: <sean.wang@mediatek.com>
To: <robh+dt@kernel.org>, <mark.rutland@arm.com>, <marcel@holtmann.org>,
 <johan.hedberg@gmail.com>
Subject: [PATCH v1 3/4] Bluetooth: btmtkuart: add an implementation for
 boot-gpios property
Date: Sun, 2 Jun 2019 09:04:16 +0800
Message-ID: <1559437457-26766-4-git-send-email-sean.wang@mediatek.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <1559437457-26766-1-git-send-email-sean.wang@mediatek.com>
References: <1559437457-26766-1-git-send-email-sean.wang@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190601_180459_951125_EF8034D6 
X-CRM114-Status: GOOD (  14.89  )
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
Cc: devicetree@vger.kernel.org, Sean Wang <sean.wang@mediatek.com>,
 linux-kernel@vger.kernel.org, linux-bluetooth@vger.kernel.org,
 linux-mediatek@lists.infradead.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

From: Sean Wang <sean.wang@mediatek.com>

Not every platform has the pinctrl device integrates the GPIO the function
such as MT7621 whose pinctrl and GPIO are separate hardware so the driver
adds additional boot-gpios to let the MT766[3,8]U can enter the proper boot
mode by gpiod for such platform.

Signed-off-by: Sean Wang <sean.wang@mediatek.com>
---
 drivers/bluetooth/btmtkuart.c | 34 +++++++++++++++++++++++++---------
 1 file changed, 25 insertions(+), 9 deletions(-)

diff --git a/drivers/bluetooth/btmtkuart.c b/drivers/bluetooth/btmtkuart.c
index f5dbeec8e274..1257149cfdc4 100644
--- a/drivers/bluetooth/btmtkuart.c
+++ b/drivers/bluetooth/btmtkuart.c
@@ -119,6 +119,7 @@ struct btmtkuart_dev {
 
 	struct regulator *vcc;
 	struct gpio_desc *reset;
+	struct gpio_desc *boot;
 	struct pinctrl *pinctrl;
 	struct pinctrl_state *pins_runtime;
 	struct pinctrl_state *pins_boot;
@@ -911,6 +912,13 @@ static int btmtkuart_parse_dt(struct serdev_device *serdev)
 			return err;
 		}
 
+		bdev->boot = devm_gpiod_get_optional(&serdev->dev, "boot",
+						     GPIOD_OUT_LOW);
+		if (IS_ERR(bdev->boot)) {
+			err = PTR_ERR(bdev->boot);
+			return err;
+		}
+
 		bdev->pinctrl = devm_pinctrl_get(&serdev->dev);
 		if (IS_ERR(bdev->pinctrl)) {
 			err = PTR_ERR(bdev->pinctrl);
@@ -919,8 +927,10 @@ static int btmtkuart_parse_dt(struct serdev_device *serdev)
 
 		bdev->pins_boot = pinctrl_lookup_state(bdev->pinctrl,
 						       "default");
-		if (IS_ERR(bdev->pins_boot)) {
+		if (IS_ERR(bdev->pins_boot) && !bdev->boot) {
 			err = PTR_ERR(bdev->pins_boot);
+			dev_err(&serdev->dev,
+				"Should assign RXD to LOW at boot stage\n");
 			return err;
 		}
 
@@ -996,8 +1006,14 @@ static int btmtkuart_probe(struct serdev_device *serdev)
 	set_bit(HCI_QUIRK_NON_PERSISTENT_SETUP, &hdev->quirks);
 
 	if (btmtkuart_is_standalone(bdev)) {
-		/* Switch to the specific pin state for the booting requires */
-		pinctrl_select_state(bdev->pinctrl, bdev->pins_boot);
+		if (bdev->boot) {
+			gpiod_set_value_cansleep(bdev->boot, 1);
+		} else {
+			/* Switch to the specific pin state for the booting
+			 * requires.
+			 */
+			pinctrl_select_state(bdev->pinctrl, bdev->pins_boot);
+		}
 
 		/* Power on */
 		err = regulator_enable(bdev->vcc);
@@ -1017,6 +1033,10 @@ static int btmtkuart_probe(struct serdev_device *serdev)
 		 * mode the device requires for UART transfers.
 		 */
 		msleep(50);
+
+		if (bdev->boot)
+			devm_gpiod_put(&serdev->dev, bdev->boot);
+
 		pinctrl_select_state(bdev->pinctrl, bdev->pins_runtime);
 
 		/* A standalone device doesn't depends on power domain on SoC,
@@ -1037,10 +1057,8 @@ static int btmtkuart_probe(struct serdev_device *serdev)
 	return 0;
 
 err_regulator_disable:
-	if (btmtkuart_is_standalone(bdev))  {
-		pinctrl_select_state(bdev->pinctrl, bdev->pins_boot);
+	if (btmtkuart_is_standalone(bdev))
 		regulator_disable(bdev->vcc);
-	}
 
 	return err;
 }
@@ -1050,10 +1068,8 @@ static void btmtkuart_remove(struct serdev_device *serdev)
 	struct btmtkuart_dev *bdev = serdev_device_get_drvdata(serdev);
 	struct hci_dev *hdev = bdev->hdev;
 
-	if (btmtkuart_is_standalone(bdev))  {
-		pinctrl_select_state(bdev->pinctrl, bdev->pins_boot);
+	if (btmtkuart_is_standalone(bdev))
 		regulator_disable(bdev->vcc);
-	}
 
 	hci_unregister_dev(hdev);
 	hci_free_dev(hdev);
-- 
2.17.1


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
