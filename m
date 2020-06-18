Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D0EAE1FF1E3
	for <lists+linux-mediatek@lfdr.de>; Thu, 18 Jun 2020 14:33:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=xPYQeg6hfqr72Up4EFXSC1wbDsj3yk01LR50KaeyldI=; b=GwgaQO09Mnxyc0
	p5ergtqdBRJuXK/l7lcWOYHVf+QuaRtKvAhpjWmak8oZ270HqtP5NS0jzeltw2vegywZ+0Q2a6j2I
	nChYc0cZh5Ozngoh6lq3vPXhof1aP08ME6nIB4DCMtTcefrZVVihTyqcU1dWsBNjjbycUQnHH+VNG
	pTcVsZgwYaWgPCCFf3axAX4ohYp5MhFrIeXx14ZqQFCRpOLOQjqlLRCCzyZErAMQSoPPmXQLMe80P
	pJQ4OOIfBu4pDdwO12JO7xlZalRrn3+X0Y98vctJNR7Efi7bExC772YA0cgsX+7BZqserrmoI/WP9
	vSCjh9oH4pPeKuIqiMjA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jltjC-0004EH-Sg; Thu, 18 Jun 2020 12:33:10 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlthf-000382-FH; Thu, 18 Jun 2020 12:31:37 +0000
X-UUID: 3d76f7ef654a40bea90ca393e95844de-20200618
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Message-ID:Date:Subject:CC:To:From;
 bh=IdkUN6cylx03pQG/oDT7DQeFHBUy2IznlAtWG2KPrdE=; 
 b=BHnl+ojvldDF7DGK/g7xfJrozNynqfFSSJ7gwzB6D9OiIdOB8ONbXH6fMWzJ3avt+xTvNbqf4P3r1ujlpJKXXgRjMny0HLPv0peOYq76IsmoRrcKA39dAUJqzal2ws/zU0S0tHOMRtDWsoO5pgeHON2HiJPDL7z7gddj4ZZqMxI=;
X-UUID: 3d76f7ef654a40bea90ca393e95844de-20200618
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw02.mediatek.com
 (envelope-from <hanks.chen@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1929656420; Thu, 18 Jun 2020 04:31:27 -0800
Received: from MTKMBS01N2.mediatek.inc (172.21.101.79) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Thu, 18 Jun 2020 05:31:29 -0700
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 mtkmbs01n2.mediatek.inc (172.21.101.79) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Thu, 18 Jun 2020 20:31:28 +0800
Received: from mtkswgap22.mediatek.inc (172.21.77.33) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via
 Frontend Transport; Thu, 18 Jun 2020 20:31:27 +0800
From: Hanks Chen <hanks.chen@mediatek.com>
To: Thomas Gleixner <tglx@linutronix.de>, Jason Cooper <jason@lakedaemon.net>, 
 Marc Zyngier <maz@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>
Subject: [PATCH 1/1] irqchip: Add config MTK_SYSIRQ and MTK_CIRQ
Date: Thu, 18 Jun 2020 20:31:11 +0800
Message-ID: <1592483471-14806-1-git-send-email-hanks.chen@mediatek.com>
X-Mailer: git-send-email 1.7.9.5
MIME-Version: 1.0
X-TM-SNTS-SMTP: 1395E1B7B1501B6DCA231C05D5DB73483CF77046C33F0D234CB5FF87FD79AA9B2000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200618_053135_702894_21218A1E 
X-CRM114-Status: GOOD (  10.36  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: CC Hwang <cc.hwang@mediatek.com>, wsd_upstream@mediatek.com,
 Hanks Chen <hanks.chen@mediatek.com>, Loda Chou <loda.chou@mediatek.com>,
 linux-kernel@vger.kernel.org, linux-mediatek@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Mediatek sysirq and cirq drivers as-is were bound together to the config
of ARCH_MEDIATEK.  These two drivers should be able to be configured
separately.  For example, on new Mediatek mobile chips such as Dimensity
820, the sysirq driver is not used since the hardware module is removed.

Add two new configs to sysirq and cirq drivers.
- config MTK_SYSIRQ for the interrupt polarity controller driver: sysirq
- config MTK_CIRQ for the low-power interrupt driver: cirq

Signed-off-by: cc.hwang <cc.hwang@mediatek.com>
Signed-off-by: Hanks Chen <hanks.chen@mediatek.com>
---
 drivers/irqchip/Kconfig  |   12 ++++++++++++
 drivers/irqchip/Makefile |    3 ++-
 2 files changed, 14 insertions(+), 1 deletion(-)

diff --git a/drivers/irqchip/Kconfig b/drivers/irqchip/Kconfig
index 29fead2..cc9aa18 100644
--- a/drivers/irqchip/Kconfig
+++ b/drivers/irqchip/Kconfig
@@ -572,4 +572,16 @@ config LOONGSON_PCH_MSI
 	help
 	  Support for the Loongson PCH MSI Controller.
 
+config MTK_SYSIRQ
+	tristate "Mediatek interrupt polarity controller"
+	help
+	  Interrupt polarity controller driver to swap polarity for
+	  interrupts for Mediatek mobile chips.
+
+config MTK_CIRQ
+	bool "Mediatek low-power interrupt controller"
+	help
+	  Low-power interrupt controller driver to monitor IRQS
+	  in the sleep mode for Mediatek mobile chips.
+
 endmenu
diff --git a/drivers/irqchip/Makefile b/drivers/irqchip/Makefile
index 133f9c4..30421d2 100644
--- a/drivers/irqchip/Makefile
+++ b/drivers/irqchip/Makefile
@@ -69,7 +69,8 @@ obj-$(CONFIG_BCM7120_L2_IRQ)		+= irq-bcm7120-l2.o
 obj-$(CONFIG_BRCMSTB_L2_IRQ)		+= irq-brcmstb-l2.o
 obj-$(CONFIG_KEYSTONE_IRQ)		+= irq-keystone.o
 obj-$(CONFIG_MIPS_GIC)			+= irq-mips-gic.o
-obj-$(CONFIG_ARCH_MEDIATEK)		+= irq-mtk-sysirq.o irq-mtk-cirq.o
+obj-$(CONFIG_MTK_SYSIRQ)		+= irq-mtk-sysirq.o
+obj-$(CONFIG_MTK_CIRQ)			+= irq-mtk-cirq.o
 obj-$(CONFIG_ARCH_DIGICOLOR)		+= irq-digicolor.o
 obj-$(CONFIG_RENESAS_H8300H_INTC)	+= irq-renesas-h8300h.o
 obj-$(CONFIG_RENESAS_H8S_INTC)		+= irq-renesas-h8s.o
-- 
1.7.9.5
_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
