Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D8E0624AAF
	for <lists+linux-mediatek@lfdr.de>; Tue, 21 May 2019 10:47:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YKuMXYTx29YNS2cLY1QRYuuUiMicO7ZXAUubyNUfWCw=; b=pcHiEKcxAOnJXV
	CUiwH0LBF9grdMq/Y2I39mkHtchYiIfZlKGF0JrXXF/aW4mUeB+WuYai9TX5H5Yq9D4SClP3S0JEU
	aCwroRV/AacFWe81HirUwDff8hiyLc7Vqrk2p62ECoDvoUeDaCc8EnLDXAA/BDVJU2VIqagJvqhhD
	VVluCe7DWMEX9eSs3qdowFkRlbND3mNHBxUXsIXoI7NbwhXcQ6i9s2FWBVq6egWAfg8PTJV0AkvFU
	EQS9zmMM616v4eTWh1+6tObthCY8b0PFQ6Vfa7y7/2hhQjYXyJjrgo3RH/YeGyf7IxAkiMWJWezjG
	e5T7n5IBdIStoDK7WoSg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hT0QY-0000Ou-3S; Tue, 21 May 2019 08:47:18 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hT0QU-0000MH-9b
 for linux-mediatek@lists.infradead.org; Tue, 21 May 2019 08:47:15 +0000
Received: by mail-pl1-x641.google.com with SMTP id g9so8099221plm.6
 for <linux-mediatek@lists.infradead.org>; Tue, 21 May 2019 01:47:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=89bb4fjtj/kIr7qzcMVgqe2OmX6wOnyg4q53NtNpkN0=;
 b=a4k83vGTdv2AkIXZY24HVw5HqlHA1ohlGoeeyIjO1/wGvXZFVuFLUO8jxjsjgdp1Yj
 xWn0Q42VQQ9sUAT0FysRT6GMG0DOKg0PY/5POc0mNmtGlnlILYAGaOvd5sM/1IgKZbAm
 hCvxY3xT4X3OPHGyGhrPqYLKBAlYb7fJn98NM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=89bb4fjtj/kIr7qzcMVgqe2OmX6wOnyg4q53NtNpkN0=;
 b=SfpXtYxBTKlRLw/49jeJPa1qc4nlooqfbG1sLV+7sh0zhdEduXLaqzfeqQxG6+cZj6
 vlXXHM/ju7a7BIPc/wbwwX+YkT25vI/5i6fSaVlQwUpznzR+xDRT6ceKnD1+dAgTWihl
 /O+jUF2VqCajf4TAb8BXeSs7YtOsvJYT3LKbj9DKLp2auvWmQhstfqCDZB59DO/aje2M
 gRWKTDtV1UITu5kSKnMG3MnFjC1q4eceX6ge3bUckCaBTB5Nt2a6gXFV9AJc7k9BTiyh
 8DFHsRITfEPkjYMoCZBkmOKOlt4BG416M2rxD5uN16HIIWNCO9mBXnFigxD4x4XsnAQl
 uB9g==
X-Gm-Message-State: APjAAAV7/I2GCTfXri+M40MPq7ADp3s7IUR3xNwq+ZVSijA18As3RUfr
 ifwcja7QidJHypRhT96Y2T0ubQ==
X-Google-Smtp-Source: APXvYqxoywMpydKI5oVMMvlMk2yqmN7dQYxCwk3n17OXLBgw9/d1xfdo5XxX+YrM2NRWRq09UUSyEA==
X-Received: by 2002:a17:902:581:: with SMTP id
 f1mr28609767plf.343.1558428433730; 
 Tue, 21 May 2019 01:47:13 -0700 (PDT)
Received: from localhost ([2401:fa00:1:10:3db2:76bf:938b:be05])
 by smtp.gmail.com with ESMTPSA id f5sm13690386pgc.7.2019.05.21.01.47.12
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 21 May 2019 01:47:13 -0700 (PDT)
From: Claire Chang <tientzu@chromium.org>
To: gregkh@linuxfoundation.org
Subject: [PATCH 2/2] uart: mediatek: support Rx in-band wakeup
Date: Tue, 21 May 2019 16:47:01 +0800
Message-Id: <20190521084701.100179-3-tientzu@chromium.org>
X-Mailer: git-send-email 2.21.0.1020.gf2820cf01a-goog
In-Reply-To: <20190521084701.100179-1-tientzu@chromium.org>
References: <20190521084701.100179-1-tientzu@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190521_014714_363514_4000D3A5 
X-CRM114-Status: GOOD (  11.82  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Claire Chang <tientzu@chromium.org>, linux-mediatek@lists.infradead.org,
 linux-serial@vger.kernel.org, changqi.hu@mediatek.com
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
 drivers/tty/serial/8250/8250_mtk.c | 33 ++++++++++++++++++++++++++++++
 1 file changed, 33 insertions(+)

diff --git a/drivers/tty/serial/8250/8250_mtk.c b/drivers/tty/serial/8250/8250_mtk.c
index 417c7c810df9..61892abf707d 100644
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
 
@@ -572,15 +576,44 @@ static int mtk8250_remove(struct platform_device *pdev)
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
+	int err;
+
+	if (irq >= 0) {
+		err = disable_irq_wake(irq);
+		if (err) {
+			dev_err(dev,
+				"failed to disable irq wake on IRQ %d: %d\n",
+				irq, err);
+			return err;
+		}
+	}
+	pinctrl_pm_select_default_state(dev);
 
 	serial8250_resume_port(data->line);
 
-- 
2.21.0.1020.gf2820cf01a-goog


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
