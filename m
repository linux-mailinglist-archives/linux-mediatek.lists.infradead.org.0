Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 25D04E5F33
	for <lists+linux-mediatek@lfdr.de>; Sat, 26 Oct 2019 21:25:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=1jrEJrD4/uxpqf8zaTMwb3FRyZzqjPCZDvVXV2+rfrQ=; b=TLa
	D2O7fI7MUUkD7rBEkcib8nJeZL6HNwm/Wr3Bvb/c47hEQvEO59SX5NELWQ6lYmRDNAHJvEgXsluwe
	MgUXkuVmZ50TVCNrqkXu79+yKR45+ocFVGK9IiX2CTcE6NDAylMVNk+bJoOtjVSRh0DGTxtimzmIs
	FJiqqbB024oCQkdE17SkKdC+uH8UyV5YA/F6gw+3yaY3EYd11shi3slA7/s+fTCO+S76hXnR3S+VV
	iVrYWPqTYqN8KwAgk9FjCtNXmovRvN0o7ZTZXm74vItjuZa3GqC933POiVKAlvW2XRpfy1nJnq5UI
	uODEMFOjWvkpROeHTP1hzsxADgQw6bg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iORgZ-00078c-3p; Sat, 26 Oct 2019 19:25:15 +0000
Received: from mxwww.masterlogin.de ([2a03:2900:1:1::b])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iORg8-0005oa-Jb; Sat, 26 Oct 2019 19:24:50 +0000
Received: from mxout1.routing.net (unknown [192.168.10.81])
 by new.mxwww.masterlogin.de (Postfix) with ESMTPS id 3E75396F0D;
 Sat, 26 Oct 2019 19:24:42 +0000 (UTC)
Received: from mxbox2.masterlogin.de (unknown [192.168.10.89])
 by mxout1.routing.net (Postfix) with ESMTP id 93B2243CF3;
 Sat, 26 Oct 2019 19:24:42 +0000 (UTC)
Received: from localhost.localdomain (fttx-pool-80.208.211.177.bambit.de
 [80.208.211.177])
 by mxbox2.masterlogin.de (Postfix) with ESMTPSA id 925A81005F5;
 Sat, 26 Oct 2019 19:24:41 +0000 (UTC)
From: Frank Wunderlich <frank-w@public-files.de>
To: linux-mediatek@lists.infradead.org
Subject: 
Date: Sat, 26 Oct 2019 21:23:59 +0200
Message-Id: <20191026192359.27687-1-frank-w@public-files.de>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191026_122448_796619_9B5D1272 
X-CRM114-Status: UNSURE (   9.63  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.0 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2a03:2900:1:1:0:0:0:b listed in] [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: Frank Wunderlich <frank-w@public-files.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 linux-serial@vger.kernel.org, Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Date: Sat, 26 Oct 2019 20:53:28 +0200
Subject: [PATCH] serial: 8250-mtk: Ask for IRQ-count before request one

at least on bananapi-r2 we have only 1 IRQ and need to
check for IRQ-count to fix following Errors during probe:

[    4.935780] mt6577-uart 11004000.serial: IRQ index 1 not found
[    4.962589] 11002000.serial: ttyS1 at MMIO 0x11002000 (irq = 202, base_baud = 1625000) is a ST16650V2
[    4.972127] mt6577-uart 11002000.serial: IRQ index 1 not found
[    4.998927] 11003000.serial: ttyS2 at MMIO 0x11003000 (irq = 203, base_baud = 1625000) is a ST16650V2
[    5.008474] mt6577-uart 11003000.serial: IRQ index 1 not found

based on Patch from Anson Huang
https://patchwork.ozlabs.org/patch/1164500/

Signed-off-by: Frank Wunderlich <frank-w@public-files.de>
---
 drivers/tty/serial/8250/8250_mtk.c | 11 ++++++++++-
 1 file changed, 10 insertions(+), 1 deletion(-)

diff --git a/drivers/tty/serial/8250/8250_mtk.c b/drivers/tty/serial/8250/8250_mtk.c
index b411ba4eb5e9..bf250187928a 100644
--- a/drivers/tty/serial/8250/8250_mtk.c
+++ b/drivers/tty/serial/8250/8250_mtk.c
@@ -485,6 +485,7 @@ static int mtk8250_probe(struct platform_device *pdev)
 	struct resource *regs = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 	struct resource *irq = platform_get_resource(pdev, IORESOURCE_IRQ, 0);
 	struct mtk8250_data *data;
+	int irq_count;
 	int err;
 
 	if (!regs || !irq) {
@@ -544,7 +545,15 @@ static int mtk8250_probe(struct platform_device *pdev)
 	pm_runtime_set_active(&pdev->dev);
 	pm_runtime_enable(&pdev->dev);
 
-	data->rx_wakeup_irq = platform_get_irq(pdev, 1);
+	irq_count = platform_irq_count(pdev);
+	if (irq_count < 0)
+		return irq_count;
+
+	if (irq_count > 1) {
+		data->rx_wakeup_irq = platform_get_irq(pdev, 1);
+		if (data->rx_wakeup_irq < 0)
+			data->rx_wakeup_irq = 0;
+	}
 
 	return 0;
 }
-- 
2.17.1


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
