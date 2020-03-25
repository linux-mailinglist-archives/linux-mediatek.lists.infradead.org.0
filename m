Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B3F8D191F33
	for <lists+linux-mediatek@lfdr.de>; Wed, 25 Mar 2020 03:34:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Subject:Message-ID:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EA1Mt/+15cP1J4Z8TsCToCtg+bi0ZS/l5yWxfaX8riE=; b=f3/dBP2KFROpn3
	o9fh8ypFDVDeKtbHKSP7V3amoGWXax2SRHoQrDx1lKl6s3TJcYN1FJMcdmCtFOErcSqXfsa0m56DW
	tmmqtG3NC3/usKPHGygc/Oq87uBlxUx6zyqqq2xNa/Cby9ssHWt7y8X2XfsdOo+1u37C7dVFtriqS
	KytpmcGOqBALj38YzIjfzZNv64kRoDZFzwBKrtJukPQQe5RZUGz3Nwf5/BzqUYTl3qHL10ScrP/cq
	oRdMZZHLZQDrcX+JoDHfZTlmGQD+IdB4Np6vz4OjGC0Wv1c67jOjEWHEa1RBmvUo8h2Wr94231qtx
	gLkFaZMt77aEmK4Umh5g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGvsN-00052A-4t; Wed, 25 Mar 2020 02:34:39 +0000
Received: from sender3-op-o12.zoho.com.cn ([124.251.121.243])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGvsB-0004sb-7m; Wed, 25 Mar 2020 02:34:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1585103520; 
 s=mail; d=flygoat.com; i=jiaxun.yang@flygoat.com;
 h=From:To:Cc:Message-ID:Subject:Date:In-Reply-To:References:MIME-Version:Content-Transfer-Encoding:Content-Type;
 bh=ptczmo4zdH5SitmdgLb31uq0UnwEPiyg4NeT2CVppvU=;
 b=U3fLccN5PpEN49FIfATzRjJH80dFiWVFbyS9eIHRHxNtbZ3rggAtvKp3FwKs8mAG
 q94WljlhqdA05aYmCnLeye4R9VeNNfC8rIUJCz1DVLO3TjEnKUr+4lqC1fmktHctRVd
 uDRtf6qVragd+LeKaRrQvbOMick44tJkpo0Qj5Yk=
Received: from localhost.localdomain (39.155.141.144 [39.155.141.144]) by
 mx.zoho.com.cn with SMTPS id 1585103517027656.9551692102889;
 Wed, 25 Mar 2020 10:31:57 +0800 (CST)
From: Jiaxun Yang <jiaxun.yang@flygoat.com>
To: linux-mips@vger.kernel.org
Message-ID: <20200325022916.106641-4-jiaxun.yang@flygoat.com>
Subject: [PATCH v7 02/12] irqchip: loongson-liointc: Workaround LPC IRQ Errata
Date: Wed, 25 Mar 2020 10:28:19 +0800
X-Mailer: git-send-email 2.26.0.rc2
In-Reply-To: <20200325022916.106641-1-jiaxun.yang@flygoat.com>
References: <20200325022916.106641-1-jiaxun.yang@flygoat.com>
MIME-Version: 1.0
X-ZohoCNMailClient: External
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200324_193427_739992_55235F65 
X-CRM114-Status: GOOD (  11.00  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [124.251.121.243 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Geert Uytterhoeven <geert+renesas@glider.be>, linux-doc@vger.kernel.org,
 "H. Nikolaus Schaller" <hns@goldelico.com>, John Crispin <john@phrozen.org>,
 Jiaxun Yang <jiaxun.yang@flygoat.com>, Paul Cercueil <paul@crapouillou.net>,
 linux-ide@vger.kernel.org, Miquel Raynal <miquel.raynal@bootlin.com>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 Huacai Chen <chenhc@lemote.com>, Tiezhu Yang <yangtiezhu@loongson.cn>,
 Kees Cook <keescook@chromium.org>, Andi Kleen <ak@linux.intel.com>,
 Paul Burton <paulburton@kernel.org>, Jonathan Corbet <corbet@lwn.net>,
 Marc Zyngier <maz@kernel.org>, Krzysztof Kozlowski <krzk@kernel.org>,
 Yinglu Yang <yangyinglu@loongson.cn>, devicetree@vger.kernel.org,
 Jean Delvare <jdelvare@suse.com>, Jason Cooper <jason@lakedaemon.net>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 Rob Herring <robh+dt@kernel.org>, linux-mediatek@lists.infradead.org,
 Jonathan Cameron <Jonathan.Cameron@huawei.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Thomas Gleixner <tglx@linutronix.de>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Allison Randal <allison@lohutok.net>, linux-arm-kernel@lists.infradead.org,
 Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
 Matt Redfearn <matt.redfearn@mips.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Serge Semin <fancer.lancer@gmail.com>,
 "Eric W. Biederman" <ebiederm@xmission.com>,
 Manuel Lauss <manuel.lauss@gmail.com>, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

The 1.0 version of that controller has a bug that status bit
of LPC IRQ sometimes doesn't get set correctly.

So we can always blame LPC IRQ when spurious interrupt happens
at the parent interrupt line which LPC IRQ supposed to route
to.

Signed-off-by: Jiaxun Yang <jiaxun.yang@flygoat.com>
Co-developed-by: Huacai Chen <chenhc@lemote.com>
Signed-off-by: Huacai Chen <chenhc@lemote.com>
Reviewed-by: Marc Zyngier <maz@kernel.org>
---
 drivers/irqchip/irq-loongson-liointc.c | 14 ++++++++++++--
 1 file changed, 12 insertions(+), 2 deletions(-)

diff --git a/drivers/irqchip/irq-loongson-liointc.c b/drivers/irqchip/irq-loongson-liointc.c
index 18de2c09ece4..7d2339e638db 100644
--- a/drivers/irqchip/irq-loongson-liointc.c
+++ b/drivers/irqchip/irq-loongson-liointc.c
@@ -32,6 +32,8 @@
 
 #define LIOINTC_SHIFT_INTx	4
 
+#define LIOINTC_ERRATA_IRQ	10
+
 struct liointc_handler_data {
 	struct liointc_priv	*priv;
 	u32			parent_int_map;
@@ -41,6 +43,7 @@ struct liointc_priv {
 	struct irq_chip_generic		*gc;
 	struct liointc_handler_data	handler[LIOINTC_NUM_PARENT];
 	u8				map_cache[LIOINTC_CHIP_IRQ];
+	bool				have_lpc_irq_errata;
 };
 
 static void liointc_chained_handle_irq(struct irq_desc *desc)
@@ -54,8 +57,15 @@ static void liointc_chained_handle_irq(struct irq_desc *desc)
 
 	pending = readl(gc->reg_base + LIOINTC_REG_INTC_STATUS);
 
-	if (!pending)
-		spurious_interrupt();
+	if (!pending) {
+		/* Always blame LPC IRQ if we have that bug */
+		if (handler->priv->have_lpc_irq_errata &&
+			(handler->parent_int_map & ~gc->mask_cache &
+			BIT(LIOINTC_ERRATA_IRQ)))
+			pending = BIT(LIOINTC_ERRATA_IRQ);
+		else
+			spurious_interrupt();
+	}
 
 	while (pending) {
 		int bit = __ffs(pending);
-- 
2.26.0.rc2



_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
