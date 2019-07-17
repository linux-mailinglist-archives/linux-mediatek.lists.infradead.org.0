Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A04806BCA2
	for <lists+linux-mediatek@lfdr.de>; Wed, 17 Jul 2019 14:55:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=8u/w4j/8Lee531pxJvbh0B2Vlk0r4WhHvuWJ3d+M63E=; b=HPQSvHUzknuP4d
	niP03WTT2PGwdq42u/jJ4PuYBW8cBFh39XNQOdb64ot/7oHnQZnc0PsOZFJhs+o/ng4ZXe4rHbaXA
	MnBy++SFHYDE/ej8v1t19fBfRLb70xfYLPAMD/727KplyKDsDiflYlJoPeV4xUdWoN3dB4RAr0zsn
	cuK4nq5wkB1vcu6UPp+cL675EP+du3h9zPz9XrQFrt55vsY4ThF93Rw7yrN96zYKhHOtzmeVq3mgf
	otNNo0cRuC1B3M1j+r365jXG6F6OO6dGpEG3sWkpEbEtjpKyvBKLCywjVCFuKWiYeaLxeWjgvndsh
	n0FPDSqkSva1pKWyt6hg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnjSi-0000zw-9O; Wed, 17 Jul 2019 12:55:12 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnjSQ-0000Ff-25; Wed, 17 Jul 2019 12:54:55 +0000
X-UUID: 0254a407e1f24d57a939efd4199e7dc3-20190717
X-UUID: 0254a407e1f24d57a939efd4199e7dc3-20190717
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <changqi.hu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 788299521; Wed, 17 Jul 2019 04:54:45 -0800
Received: from mtkmbs07n1.mediatek.inc (172.21.101.16) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 17 Jul 2019 05:54:44 -0700
Received: from mtkcas09.mediatek.inc (172.21.101.178) by
 mtkmbs07n1.mediatek.inc (172.21.101.16) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 17 Jul 2019 20:54:43 +0800
Received: from localhost.localdomain (10.17.3.153) by mtkcas09.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Wed, 17 Jul 2019 20:54:42 +0800
From: Changqi Hu <changqi.hu@mediatek.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Jiri Slaby
 <jslaby@suse.com>, Matthias Brugger <matthias.bgg@gmail.com>
Subject: [PATCH] modify mtk uart power and clock management
Date: Wed, 17 Jul 2019 20:54:39 +0800
Message-ID: <1563368079-29684-1-git-send-email-changqi.hu@mediatek.com>
X-Mailer: git-send-email 1.8.1.1.dirty
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190717_055454_110490_360EC486 
X-CRM114-Status: GOOD (  13.92  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Peter Shih <pihsun@chromium.org>, Changqi Hu <changqi.hu@mediatek.com>,
 "Gustavo A. R. Silva" <gustavo@embeddedor.com>, linux-kernel@vger.kernel.org,
 srv_heupstream@mediatek.com, linux-mediatek@lists.infradead.org,
 linux-serial@vger.kernel.org, Yingjoe Chen <yingjoe.chen@mediatek.com>,
 Eddie Huang <eddie.huang@mediatek.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

modify mtk uart runtime interface, add uart clock use count.

Signed-off-by: Changqi Hu <changqi.hu@mediatek.com>
---
 drivers/tty/serial/8250/8250_mtk.c | 65 ++++++++++++++++++++++++--------------
 1 file changed, 42 insertions(+), 23 deletions(-)

diff --git a/drivers/tty/serial/8250/8250_mtk.c b/drivers/tty/serial/8250/8250_mtk.c
index f470ded..b0113d1 100644
--- a/drivers/tty/serial/8250/8250_mtk.c
+++ b/drivers/tty/serial/8250/8250_mtk.c
@@ -31,6 +31,7 @@
 #define MTK_UART_RXTRI_AD	0x14	/* RX Trigger address */
 #define MTK_UART_FRACDIV_L	0x15	/* Fractional divider LSB address */
 #define MTK_UART_FRACDIV_M	0x16	/* Fractional divider MSB address */
+#define MTK_UART_DEBUG0	0x18
 #define MTK_UART_IER_XOFFI	0x20	/* Enable XOFF character interrupt */
 #define MTK_UART_IER_RTSI	0x40	/* Enable RTS Modem status interrupt */
 #define MTK_UART_IER_CTSI	0x80	/* Enable CTS Modem status interrupt */
@@ -386,9 +387,18 @@ static void mtk8250_set_flow_ctrl(struct uart_8250_port *up, int mode)
 static int __maybe_unused mtk8250_runtime_suspend(struct device *dev)
 {
 	struct mtk8250_data *data = dev_get_drvdata(dev);
+	struct uart_8250_port *up = serial8250_get_port(data->line);
 
-	clk_disable_unprepare(data->uart_clk);
-	clk_disable_unprepare(data->bus_clk);
+	/*wait until UART in idle status*/
+	while
+		(serial_in(up, MTK_UART_DEBUG0));
+
+	if (data->clk_count == 0U) {
+		dev_dbg(dev, "%s clock count is 0\n", __func__);
+	} else {
+		clk_disable_unprepare(data->bus_clk);
+		data->clk_count--;
+	}
 
 	return 0;
 }
@@ -398,16 +408,16 @@ static int __maybe_unused mtk8250_runtime_resume(struct device *dev)
 	struct mtk8250_data *data = dev_get_drvdata(dev);
 	int err;
 
-	err = clk_prepare_enable(data->uart_clk);
-	if (err) {
-		dev_warn(dev, "Can't enable clock\n");
-		return err;
-	}
-
-	err = clk_prepare_enable(data->bus_clk);
-	if (err) {
-		dev_warn(dev, "Can't enable bus clock\n");
-		return err;
+	if (data->clk_count > 0U) {
+		dev_dbg(dev, "%s clock count is %d\n", __func__,
+			data->clk_count);
+	} else {
+		err = clk_prepare_enable(data->bus_clk);
+		if (err) {
+			dev_warn(dev, "Can't enable bus clock\n");
+			return err;
+		}
+		data->clk_count++;
 	}
 
 	return 0;
@@ -416,13 +426,23 @@ static int __maybe_unused mtk8250_runtime_resume(struct device *dev)
 static void
 mtk8250_do_pm(struct uart_port *port, unsigned int state, unsigned int old)
 {
-	if (!state)
-		pm_runtime_get_sync(port->dev);
+	struct uart_8250_port *up = up_to_u8250p(port);
+
+	if (!state) {
+		if (!(up->capabilities & UART_CAP_RPM))
+			mtk8250_runtime_resume(port->dev);
+		else
+			pm_runtime_get_sync(port->dev);
+	}
 
 	serial8250_do_pm(port, state, old);
 
-	if (state)
-		pm_runtime_put_sync_suspend(port->dev);
+	if (state) {
+		if (!(up->capabilities & UART_CAP_RPM))
+			mtk8250_runtime_suspend(port->dev);
+		else
+			pm_runtime_put_sync_suspend(port->dev);
+	}
 }
 
 #ifdef CONFIG_SERIAL_8250_DMA
@@ -499,6 +519,8 @@ static int mtk8250_probe(struct platform_device *pdev)
 	if (!data)
 		return -ENOMEM;
 
+	data->clk_count = 0;
+
 	if (pdev->dev.of_node) {
 		err = mtk8250_probe_of(pdev, &uart.port, data);
 		if (err)
@@ -531,17 +553,12 @@ static int mtk8250_probe(struct platform_device *pdev)
 
 	platform_set_drvdata(pdev, data);
 
-	err = mtk8250_runtime_resume(&pdev->dev);
-	if (err)
-		return err;
+	pm_runtime_enable(&pdev->dev);
 
 	data->line = serial8250_register_8250_port(&uart);
 	if (data->line < 0)
 		return data->line;
 
-	pm_runtime_set_active(&pdev->dev);
-	pm_runtime_enable(&pdev->dev);
-
 	return 0;
 }
 
@@ -552,11 +569,13 @@ static int mtk8250_remove(struct platform_device *pdev)
 	pm_runtime_get_sync(&pdev->dev);
 
 	serial8250_unregister_port(data->line);
-	mtk8250_runtime_suspend(&pdev->dev);
 
 	pm_runtime_disable(&pdev->dev);
 	pm_runtime_put_noidle(&pdev->dev);
 
+	if (!pm_runtime_status_suspended(&pdev->dev))
+		mtk8250_runtime_suspend(&pdev->dev);
+
 	return 0;
 }
 
-- 
1.8.1.1.dirty


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
