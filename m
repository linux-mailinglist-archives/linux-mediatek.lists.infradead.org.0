Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D4B712AF01
	for <lists+linux-mediatek@lfdr.de>; Mon, 27 May 2019 08:56:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+WZKGONBlN0+YTH0IeNO3NPTuFSSsrV1kEolt7gHTeg=; b=GlydyvC2SzW50r
	SvIr7qAHKHuDt/22qJWm5Pwgt80QRvIMyRC0JwgMhMuvMby0R0BSGOrZxwocM6s5dH4seygXMfVjP
	cQsxTCAGT/6OYFtujh9fecKVCi9/CNMESzC8S29YfbDrI6EQWa+5tbA06LlAngj+nXCvnVYohjmUx
	c/pfdt0iMtUdeEGsJGIUNdZcU9q6ifCE/vhdswUOWGT7EpvR4eJB4eTUMWyb0MHYcWMLRU2m0UrC3
	xqPaI3yPRjFt0xn1kx31B15pc3LlwLqi0dB2pMNQe/C2mCatjx1uZJatm20No8McyZaafrXNVPVk7
	deYisFpL5+7C5c4hCrGw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hV9YN-0001QB-GL; Mon, 27 May 2019 06:56:15 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hV9YK-0001OH-5o
 for linux-mediatek@lists.infradead.org; Mon, 27 May 2019 06:56:14 +0000
Received: by mail-pf1-x442.google.com with SMTP id u22so1719448pfm.3
 for <linux-mediatek@lists.infradead.org>; Sun, 26 May 2019 23:56:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=GXP8X1L27wbZgV5j2BKjX7dRHd3c48Hr+NTlDkvhu/M=;
 b=S+mQ9UJ4I5ubtMiMdqvmfqWdiSqc74l0Mc9AnXEIOQ20XfNFKiSfalNkNyBOySHAFW
 856VDRK0cw5Lu32ixbA+HHlIIoiMkAd3DoJUalDxpijJR7+NKZfSfod5Z231tSjpknEe
 /WjxtTaLzqRpoLTqI6ZiRct3NHqCVkbTasIiA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=GXP8X1L27wbZgV5j2BKjX7dRHd3c48Hr+NTlDkvhu/M=;
 b=t06l4chuLzTuuxN5b+fr5VkVFOJC2UNe8AysE2axeqrc2XwYw/wXmFqtv14GziQZlY
 dSNhPpbdfHCZC686iiwKW9stSohLfQ+GWtfo/8Hy6J0/nkBb4DYfMhZa2eIp334nljVS
 89PnT02cSh1pGeYULY4iQjCYBoXEdg0eP5DU06oxSmKfDz5XAM7r5OGJzcMrJe7vMnC/
 7pFc46vrvofT72ppvmYGitn6GqJTnzbK3XeRIsNSy9u1sxGjDJZaIrChEU2rEIvQ0n3l
 ZunOI1GIzHCEHTwysSUj0pzZWVC1q5L/N9/eU/5xRBEGwEbeXWXOnf4AM5/sNETsrRTh
 fOHQ==
X-Gm-Message-State: APjAAAXocbZymRQKkHiEGiDvfv8Hvftes+38FpKKDhc2rwEaHH5yhGUj
 KBo9MuLbtLdwtebhP2DKOiOe/A==
X-Google-Smtp-Source: APXvYqw5dGklTTVfU8TQscGL43Q9tu0l4wUXGb1BPxZewZP8p90W5k1RrK1NZ+Np8xVQinhQ+le8kA==
X-Received: by 2002:a17:90a:21a8:: with SMTP id
 q37mr29420363pjc.5.1558940171453; 
 Sun, 26 May 2019 23:56:11 -0700 (PDT)
Received: from localhost ([2401:fa00:1:10:3db2:76bf:938b:be05])
 by smtp.gmail.com with ESMTPSA id o6sm10326995pfo.164.2019.05.26.23.56.09
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 26 May 2019 23:56:10 -0700 (PDT)
From: Claire Chang <tientzu@chromium.org>
To: gregkh@linuxfoundation.org
Subject: [PATCH v2 2/2] uart: mediatek: support Rx in-band wakeup
Date: Mon, 27 May 2019 14:55:59 +0800
Message-Id: <20190527065559.66056-3-tientzu@chromium.org>
X-Mailer: git-send-email 2.22.0.rc1.257.g3120a18244-goog
In-Reply-To: <20190527065559.66056-1-tientzu@chromium.org>
References: <20190527065559.66056-1-tientzu@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190526_235612_529003_EEB0538C 
X-CRM114-Status: GOOD (  12.41  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 drivers/tty/serial/8250/8250_mtk.c | 25 +++++++++++++++++++++++++
 1 file changed, 25 insertions(+)

diff --git a/drivers/tty/serial/8250/8250_mtk.c b/drivers/tty/serial/8250/8250_mtk.c
index 417c7c810df9..b0713d1e07bb 100644
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
 
@@ -572,15 +576,36 @@ static int mtk8250_remove(struct platform_device *pdev)
 static int __maybe_unused mtk8250_suspend(struct device *dev)
 {
 	struct mtk8250_data *data = dev_get_drvdata(dev);
+	struct uart_8250_port *up = serial8250_get_port(data->line);
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
