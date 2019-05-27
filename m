Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E1FA2B045
	for <lists+linux-mediatek@lfdr.de>; Mon, 27 May 2019 10:32:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TI2qN+lAe0oVM1uxtSpiE0uuvvJ2+jE+gh3TGOK6EBU=; b=JYLq/SeptnxnLS
	5Xj+t9CL9/b+xpU1bZQyop1ud2+m/GpMA8+z7MSzbQ2YT1cuMZ7Uog9LF+I2B/5j4LrcJYX++9iyG
	oeS0PW7u3geEGCgj0enPxLxkj7i7sWFilGosS4P3Z/gfg7haZoJh7fevRnIU+QRmKFBZT540UH4ft
	L8T7CBWR1FOPMtfGs8om0Ag/2FiREpw+Qeo1jOP/7W+WJHIk/2qiSJRRdzb8wbQLVxIRireTUFYSV
	DXh1TTvbO1pRkKIxmIFK2CDOpgJVWauCNgEN3AwAOzl9L7dfwffLofEsMt2mrtaaj2WWf6tnLuFwg
	aM16LGDfM/0pd5dPOmvg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVB39-0006jL-Ol; Mon, 27 May 2019 08:32:07 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVB33-0006gG-90
 for linux-mediatek@lists.infradead.org; Mon, 27 May 2019 08:32:03 +0000
Received: by mail-pg1-x544.google.com with SMTP id n2so8687322pgp.11
 for <linux-mediatek@lists.infradead.org>; Mon, 27 May 2019 01:32:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=LqoCn9Xhl56Gl3+VvLRbq2L1F7zbqoVOBwyCwaTUpoM=;
 b=O+YQVkHQNN/p5LUAtWx+Tnj9GQq88I6z6fhkAa9LVS5XiwVAGzLe3C9XXGeCmG7koh
 mvXhcoSURd6jFjMGLpL1uRe/boOy8vAhM+2cW2hnh7uPeewWk8ORIVEG/8xUMD90b+70
 ryS2Fi+Fqxs1otmya2No2gkmuFcSN64bikuuk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=LqoCn9Xhl56Gl3+VvLRbq2L1F7zbqoVOBwyCwaTUpoM=;
 b=Tiks2ahsnN2p3hLK/lHmk06FxWeiOK2Vr8y2kyOzOPlxS2mJzk5IFFetn4x/p+7U2H
 TIXovuuM+P9o8NBd/47IILnqDcy9MLehECmWWFUWyfa5SCJVvdSKWY+Q87hc2xvcIZ4Z
 o9baJvO+gew4NdVMQ+ZEWo7Fe6Iwpbsbt9wwirOTQn7PEaSixiHm6jVhlhLY1cermMXF
 lrKAVHM/ucbbeF8PUNuaZg9xS4PZiSZDJZb9d3KSP4ls0+/vZ6daeTrti6w/ccIkezuw
 4h/Moni3FnDu0qHf069SzCGmNuMjC0UZkSUnofeb45JqgqpFJBssDaEPZf1BFKmFhbnN
 eztA==
X-Gm-Message-State: APjAAAUuME4tbwlX8wfNLuLUuvA9wV0Z8MMu/2fkqDuyw96FdWQfVcqy
 Okx5zhrBFSKmkoF6Q0YAcBjjBYQdXfdY1A==
X-Google-Smtp-Source: APXvYqwjlREo18YcQPzD0JN8hZ/tFQ9UzO6kb3YZgMEKdPeOdh+Hinr68gQDfNLo8vVcF+ciOR1Dbw==
X-Received: by 2002:a17:90a:5d09:: with SMTP id
 s9mr28893570pji.120.1558945920357; 
 Mon, 27 May 2019 01:32:00 -0700 (PDT)
Received: from localhost ([2401:fa00:1:10:3db2:76bf:938b:be05])
 by smtp.gmail.com with ESMTPSA id n35sm9517453pgl.44.2019.05.27.01.31.58
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 27 May 2019 01:31:59 -0700 (PDT)
From: Claire Chang <tientzu@chromium.org>
To: gregkh@linuxfoundation.org
Subject: [PATCH v3 2/2] uart: mediatek: support Rx in-band wakeup
Date: Mon, 27 May 2019 16:31:50 +0800
Message-Id: <20190527083150.220194-3-tientzu@chromium.org>
X-Mailer: git-send-email 2.22.0.rc1.257.g3120a18244-goog
In-Reply-To: <20190527083150.220194-1-tientzu@chromium.org>
References: <20190527083150.220194-1-tientzu@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190527_013201_313037_A9B19BA3 
X-CRM114-Status: GOOD (  12.69  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
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
Cc: Claire Chang <tientzu@chromium.org>, drinkcat@chromium.org,
 linux-mediatek@lists.infradead.org, linux-serial@vger.kernel.org,
 changqi.hu@mediatek.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

In order to support Rx in-band wakeup, we need to enable irq wake on an
edge sensitive interrupt of Rx pin before suspend and disable it when
resuming.

This interrupt is used only as wake source to resume the system when
suspended. Note that the sent character will be lost as the controller is
actually suspended.

We use this to support wakeup on bluetooth. Bluetooth will repeatedly send
0xFD to wakeup host. Once host detects Rx falling, an interrupt is
triggered, and the system leaves sleep state. Then, the bluetooth driver
will send 0xFC to bluetooth and bluetooth can start to send normal HCI
packets.

Signed-off-by: Claire Chang <tientzu@chromium.org>
---
 drivers/tty/serial/8250/8250_mtk.c | 24 ++++++++++++++++++++++++
 1 file changed, 24 insertions(+)

diff --git a/drivers/tty/serial/8250/8250_mtk.c b/drivers/tty/serial/8250/8250_mtk.c
index 417c7c810df9..5b94b853387d 100644
--- a/drivers/tty/serial/8250/8250_mtk.c
+++ b/drivers/tty/serial/8250/8250_mtk.c
@@ -10,6 +10,7 @@
 #include <linux/module.h>
 #include <linux/of_irq.h>
 #include <linux/of_platform.h>
+#include <linux/pinctrl/consumer.h>
 #include <linux/platform_device.h>
 #include <linux/pm_runtime.h>
 #include <linux/serial_8250.h>
@@ -70,6 +71,7 @@ struct mtk8250_data {
 #ifdef CONFIG_SERIAL_8250_DMA
 	enum dma_rx_status	rx_status;
 #endif
+	int			rx_wakeup_irq;
 };
 
 /* flow control mode */
@@ -551,6 +553,8 @@ static int mtk8250_probe(struct platform_device *pdev)
 	pm_runtime_set_active(&pdev->dev);
 	pm_runtime_enable(&pdev->dev);
 
+	data->rx_wakeup_irq = platform_get_irq(pdev, 1);
+
 	return 0;
 }
 
@@ -572,15 +576,35 @@ static int mtk8250_remove(struct platform_device *pdev)
 static int __maybe_unused mtk8250_suspend(struct device *dev)
 {
 	struct mtk8250_data *data = dev_get_drvdata(dev);
+	int irq = data->rx_wakeup_irq;
+	int err;
 
 	serial8250_suspend_port(data->line);
 
+	pinctrl_pm_select_sleep_state(dev);
+	if (irq >= 0) {
+		err = enable_irq_wake(irq);
+		if (err) {
+			dev_err(dev,
+				"failed to enable irq wake on IRQ %d: %d\n",
+				irq, err);
+			pinctrl_pm_select_default_state(dev);
+			serial8250_resume_port(data->line);
+			return err;
+		}
+	}
+
 	return 0;
 }
 
 static int __maybe_unused mtk8250_resume(struct device *dev)
 {
 	struct mtk8250_data *data = dev_get_drvdata(dev);
+	int irq = data->rx_wakeup_irq;
+
+	if (irq >= 0)
+		disable_irq_wake(irq);
+	pinctrl_pm_select_default_state(dev);
 
 	serial8250_resume_port(data->line);
 
-- 
2.22.0.rc1.257.g3120a18244-goog


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
