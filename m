Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FB4220D27
	for <lists+linux-mediatek@lfdr.de>; Thu, 16 May 2019 18:37:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=9GNYcE7q0F+1u9CJ4wmVCbiTuD4ODtUulA8TkiM2Jhg=; b=orV
	CDgVUuJAzGjxAwPd6IqFqUUMAWLIfbI1T4koKjjLnaHqB5aQZJ8lIO6E4yjqA+uxbUg2PUW12EzzR
	uiplQwZcJiATx96+vStFYVj7ED+wmCEJdP/hPC5W3auGcdbG13HxgO60orNLvECElA+K9uH4zvVRg
	0AoRpGRsHq4H2tAnw/luU4GSOXd4mrNkkPVy7EFXXtTzJVOy3cJcl+gziJeBsNM2+bcKPGKOY7Y/B
	O9+Exlm5+uNyhB/A41epguaKdiqpobHuUkqb9Aam9ccC0NIpgr2QirFpYTKsRvJrcj8bzOvbtE+3Z
	vG9AwHLpffjiJXN4aCR310sJY8iAZfA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRJNn-0004QM-07; Thu, 16 May 2019 16:37:27 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRJNb-0004EG-0Y
 for linux-mediatek@lists.infradead.org; Thu, 16 May 2019 16:37:17 +0000
Received: by mail-wm1-x344.google.com with SMTP id j187so4151060wmj.1
 for <linux-mediatek@lists.infradead.org>; Thu, 16 May 2019 09:37:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id;
 bh=ThsUgCnRiH2xV7RaQ5eyyKQF0jGHePi2XouhM2DCtVc=;
 b=qi6MyDpzUBi/YhH3EIVRa9In2VP4i8/Rqo8r4u+l2ILm5g/G2aH1ZkO2/tkZJzAz+4
 fP3htptmdBLOK1x23VJVUHtY2KnUbze/RsIZyaDFGvx7uSAOWifUSoQUrBeEOo6Z9JEx
 UJBXkkffA169xraI5y96uDyl+P+i1AqTKrqfqcXDZeVKHP44f4+RfHrbVPDj2EzMhBij
 bZCJ7Po/trm6o16eQHuuiwHfXslowAzpx7CsB1A1XWwMYZo348VaoFUGdTxC8RnlSsB+
 /iCrhFXuRYx21k05rd3DgNt4GDVe4/Huxf5QAxwLlbuPQbm74I5EsNkyp3ap1yJF/89E
 OY7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=ThsUgCnRiH2xV7RaQ5eyyKQF0jGHePi2XouhM2DCtVc=;
 b=qxUF60t46yYNXBfkfBiOguNujH3/VvkDsq1xhtpGVCaIT+BRR8LlElGfRbn196TGi3
 U2poFOVGNwrIRZLpycBMPomGY3pHdzax7VhIG+sT9xqMDI6YjcYb2wj0iXZrk908KRT7
 daudDkcD+4wMlWLLLXu6hBwxVY7cWgfR8vv3Ah86Pw/a0CXrzdkT3t4OWulP94wvRtrK
 lh29zxwIPVZ8RSUhWg3uFj9NYnSab7wKI46zj8DKCDbqGUklqB3cJ+dlNS9MdR3m4Sro
 HIv7nQ7pc9t7TgydyTTo/F/7j2MCyK7Xd6A3Sg2A+rLuv4tgXEbgM2T4j3L5Jk7+rTHe
 WVBQ==
X-Gm-Message-State: APjAAAUdzT/Q5IuPf4DMzHsTnCv0SlBvFgkxDELeU/3JQEpRop44rzpr
 G+HeQnxhdTyQA77FlZq8tVdC+A==
X-Google-Smtp-Source: APXvYqybn3Y6301Af98XjzaiHZSg4KGov0qU7mWWN97Wd731o4jzd/edN9W3fJ1YKaXz9qJGZniWPg==
X-Received: by 2002:a1c:1f47:: with SMTP id f68mr18234178wmf.57.1558024632927; 
 Thu, 16 May 2019 09:37:12 -0700 (PDT)
Received: from loys-ubuntu-BY1835A49200471.thefacebook.com
 ([2620:10d:c092:180::1:e504])
 by smtp.googlemail.com with ESMTPSA id x68sm2112515wmf.13.2019.05.16.09.37.10
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Thu, 16 May 2019 09:37:12 -0700 (PDT)
From: Loys Ollivier <lollivier@baylibre.com>
To: Johan Hovold <johan@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>
Subject: [PATCH v2] gnss: get serial speed from subdrivers
Date: Thu, 16 May 2019 18:37:06 +0200
Message-Id: <1558024626-19395-1-git-send-email-lollivier@baylibre.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190516_093715_204259_07A01803 
X-CRM114-Status: GOOD (  14.80  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: baylibre-upstreaming@groups.io, Loys Ollivier <lollivier@baylibre.com>,
 linux-kernel@vger.kernel.org, Corentin Labbe <clabbe.montjoie@gmail.com>,
 linux-mediatek@lists.infradead.org, Colin Ian King <colin.king@canonical.com>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

The default serial speed was hardcoded in the code.
Rename current-speed to default-speed.
Add a function parameter that lets the subdrivers specify their
default speed.
If not specified fallback to the device-tree default-speed.

Signed-off-by: Loys Ollivier <lollivier@baylibre.com>
---
Hello,

This patch moves the currently hardcoded, default serial speed
to the subdrivers.
If the default speed is not specified by the subdriver then it is read
from the device tree.

Changes since v1[0]
- Use u32 data types instead of uint

[0]: https://lore.kernel.org/lkml/1557322788-10403-1-git-send-email-lollivier@baylibre.com/

Cheers,
Loys

 drivers/gnss/mtk.c    |  7 ++++++-
 drivers/gnss/serial.c | 21 +++++++++++++--------
 drivers/gnss/serial.h |  3 ++-
 drivers/gnss/ubx.c    |  3 ++-
 4 files changed, 23 insertions(+), 11 deletions(-)

diff --git a/drivers/gnss/mtk.c b/drivers/gnss/mtk.c
index d1fc55560daf..1d35bcb52072 100644
--- a/drivers/gnss/mtk.c
+++ b/drivers/gnss/mtk.c
@@ -16,6 +16,10 @@
 
 #include "serial.h"
 
+static uint serial_speed = 9600; /* Serial speed (baud rate) */
+module_param(serial_speed, uint, 0644);
+MODULE_PARM_DESC(serial_speed, "Serial baud rate (bit/s), (default = 9600)");
+
 struct mtk_data {
 	struct regulator *vbackup;
 	struct regulator *vcc;
@@ -69,7 +73,8 @@ static int mtk_probe(struct serdev_device *serdev)
 	struct mtk_data *data;
 	int ret;
 
-	gserial = gnss_serial_allocate(serdev, sizeof(*data));
+	gserial = gnss_serial_allocate(serdev, sizeof(*data),
+				       (u32)serial_speed);
 	if (IS_ERR(gserial)) {
 		ret = PTR_ERR(gserial);
 		return ret;
diff --git a/drivers/gnss/serial.c b/drivers/gnss/serial.c
index def64b36d994..3be799702291 100644
--- a/drivers/gnss/serial.c
+++ b/drivers/gnss/serial.c
@@ -103,17 +103,13 @@ static int gnss_serial_set_power(struct gnss_serial *gserial,
 	return gserial->ops->set_power(gserial, state);
 }
 
-/*
- * FIXME: need to provide subdriver defaults or separate dt parsing from
- * allocation.
- */
 static int gnss_serial_parse_dt(struct serdev_device *serdev)
 {
 	struct gnss_serial *gserial = serdev_device_get_drvdata(serdev);
 	struct device_node *node = serdev->dev.of_node;
-	u32 speed = 4800;
+	u32 speed;
 
-	of_property_read_u32(node, "current-speed", &speed);
+	of_property_read_u32(node, "default-speed", &speed);
 
 	gserial->speed = speed;
 
@@ -121,7 +117,8 @@ static int gnss_serial_parse_dt(struct serdev_device *serdev)
 }
 
 struct gnss_serial *gnss_serial_allocate(struct serdev_device *serdev,
-						size_t data_size)
+					 size_t data_size,
+					 u32 serial_speed)
 {
 	struct gnss_serial *gserial;
 	struct gnss_device *gdev;
@@ -146,10 +143,18 @@ struct gnss_serial *gnss_serial_allocate(struct serdev_device *serdev,
 	serdev_device_set_drvdata(serdev, gserial);
 	serdev_device_set_client_ops(serdev, &gnss_serial_serdev_ops);
 
-	ret = gnss_serial_parse_dt(serdev);
+	/* Serial speed provided by subdriver takes precedence over dt*/
+	if (!serial_speed)
+		ret = gnss_serial_parse_dt(serdev);
+	else
+		gserial->speed = serial_speed;
+
 	if (ret)
 		goto err_put_device;
 
+	if (!gserial->speed)
+		return -EINVAL;
+
 	return gserial;
 
 err_put_device:
diff --git a/drivers/gnss/serial.h b/drivers/gnss/serial.h
index 980ffdc86c2a..17df61e399e6 100644
--- a/drivers/gnss/serial.h
+++ b/drivers/gnss/serial.h
@@ -33,7 +33,8 @@ struct gnss_serial_ops {
 extern const struct dev_pm_ops gnss_serial_pm_ops;
 
 struct gnss_serial *gnss_serial_allocate(struct serdev_device *gserial,
-						size_t data_size);
+					 size_t data_size,
+					 u32 serial_speed);
 void gnss_serial_free(struct gnss_serial *gserial);
 
 int gnss_serial_register(struct gnss_serial *gserial);
diff --git a/drivers/gnss/ubx.c b/drivers/gnss/ubx.c
index 7b05bc40532e..52ae6e4987e0 100644
--- a/drivers/gnss/ubx.c
+++ b/drivers/gnss/ubx.c
@@ -68,8 +68,9 @@ static int ubx_probe(struct serdev_device *serdev)
 	struct gnss_serial *gserial;
 	struct ubx_data *data;
 	int ret;
+	u32 speed = 4800;
 
-	gserial = gnss_serial_allocate(serdev, sizeof(*data));
+	gserial = gnss_serial_allocate(serdev, sizeof(*data), speed);
 	if (IS_ERR(gserial)) {
 		ret = PTR_ERR(gserial);
 		return ret;
-- 
2.7.4


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
