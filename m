Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 50B2456105
	for <lists+linux-mediatek@lfdr.de>; Wed, 26 Jun 2019 05:55:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=6RA79UGX2JLUrjOGeomR0wCTmgWmVn1KCfUGHJsoG0k=; b=E4EiqA68ECKzZ3
	Y6ho9ORVHGPcSTtHqKGPqq+hsl1tBvEjHvapcFkEVbDz7ymg+R9cI37/ZJk7lOJt4hg6vXMealOFB
	+9sC3HlcWUZeZpMxO3KX7HuL3rcgOxt1NTjPcg6CGBPBvcI4oz6brORjcIKK8ZK44akI2rOVsSpQA
	NCknsbLFvTt/nFn0sbe1bBeyO1tfSZfsvMo+nUJcKxxVxNmw9seoGrIPmAjeq1TaCl9m91hRuzGM8
	xrgMPsE8pKhJJYmkgmupATcwhAy/MwKVt16au8gBlfHOPLUbKugv/mPfzPzwEFP73HVA0Bxmh6YPs
	8qNu2E9ofqpEFex41EQw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfz1q-0002PY-2e; Wed, 26 Jun 2019 03:55:26 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfz1L-000124-M8
 for linux-mediatek@lists.infradead.org; Wed, 26 Jun 2019 03:54:58 +0000
Received: by mail-pg1-x542.google.com with SMTP id p10so516252pgn.1
 for <linux-mediatek@lists.infradead.org>; Tue, 25 Jun 2019 20:54:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=719FaO+aWRnw4XYLOoRXM4pdoeDNZsMJ0pALAIoQ1Wo=;
 b=lA6OWLRPXyboTpNjyNCaECY2SHWENw5Pj9/nFMod/706hmcpKd+bkwMZUWfmQvemq3
 8eUVJaZwJr9DNvZSnAN0EJBKihi3EV7t2PWPc50kfQA/rKpwEfmZ+GJ741fN06ComEEH
 Hsgxo1XaNrWg1Mx+02QItB0Ft2JXCa2VdPriA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=719FaO+aWRnw4XYLOoRXM4pdoeDNZsMJ0pALAIoQ1Wo=;
 b=na/IUL+LYMdI4Vgy7kK3Kuy/j/Of8VJVDseHOQaui8J0IgJiZelnQt9v4jW+/VppXP
 TI1s5eVE/CrjWj35vkRhn6Y9Wq1/J5yvHczfJmJHuZASb/nicS3UxbJ8TI1kvCko/1sA
 sTQoTMqReSmwMXlc9XY8WGKmZwifKMAPER4c3aiBe7eeill91MD8N7yUu9tV7la8t81f
 ln7j3pbgNUQFKB15A56ifmk1K3hfrg3//PA/SMzLZwC/EgFn/BfZyp3ga9HYR/UnWszz
 2XtwIjDV1hVva6XwgFcrRBHqtoEcJSq2j0LQ+KSUo+pkwxWJcy79LC2vt/VZZ0Jrla6f
 YEZQ==
X-Gm-Message-State: APjAAAUpA5gSpKfGUB2xnp1CRV/SkVi3mrRP1kCELFxxryQxSr0KuDS2
 f6AZaS7QxjAy3tbOnhQkfZWwHg==
X-Google-Smtp-Source: APXvYqzEr4WarL5EQWcWiyFDaW7OQxJFmSAIRXLv347QjxmkHy1Yf6fmqfZUNLYsCAeo4B8P7muyMw==
X-Received: by 2002:a17:90a:37ac:: with SMTP id
 v41mr1815513pjb.6.1561521294178; 
 Tue, 25 Jun 2019 20:54:54 -0700 (PDT)
Received: from drinkcat2.tpe.corp.google.com
 ([2401:fa00:1:b:d8b7:33af:adcb:b648])
 by smtp.gmail.com with ESMTPSA id b17sm19000599pgk.85.2019.06.25.20.54.51
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 25 Jun 2019 20:54:53 -0700 (PDT)
From: Nicolas Boichat <drinkcat@chromium.org>
To: Linus Walleij <linus.walleij@linaro.org>
Subject: [PATCH v2] pinctrl: mediatek: Update cur_mask in mask/mask ops
Date: Wed, 26 Jun 2019 11:54:45 +0800
Message-Id: <20190626035445.236406-1-drinkcat@chromium.org>
X-Mailer: git-send-email 2.22.0.410.gd8fdbe21b5-goog
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_205455_995839_9730B9FE 
X-CRM114-Status: GOOD (  14.75  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Chuanjia Liu <Chuanjia.Liu@mediatek.com>, Sean Wang <sean.wang@kernel.org>,
 linux-kernel@vger.kernel.org, evgreen@chromium.org, swboyd@chromium.org,
 linux-gpio@vger.kernel.org, linux-mediatek@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

During suspend/resume, mtk_eint_mask may be called while
wake_mask is active. For example, this happens if a wake-source
with an active interrupt handler wakes the system:
irq/pm.c:irq_pm_check_wakeup would disable the interrupt, so
that it can be handled later on in the resume flow.

However, this may happen before mtk_eint_do_resume is called:
in this case, wake_mask is loaded, and cur_mask is restored
from an older copy, re-enabling the interrupt, and causing
an interrupt storm (especially for level interrupts).

Step by step, for a line that has both wake and interrupt enabled:
 1. cur_mask[irq] = 1; wake_mask[irq] = 1; EINT_EN[irq] = 1 (interrupt
    enabled at hardware level)
 2. System suspends, resumes due to that line (at this stage EINT_EN
    == wake_mask)
 3. irq_pm_check_wakeup is called, and disables the interrupt =>
    EINT_EN[irq] = 0, but we still have cur_mask[irq] = 1
 4. mtk_eint_do_resume is called, and restores EINT_EN = cur_mask, so
    it reenables EINT_EN[irq] = 1 => interrupt storm as the driver
    is not yet ready to handle the interrupt.

This patch fixes the issue in step 3, by recording all mask/unmask
changes in cur_mask. This also avoids the need to read the current
mask in eint_do_suspend, and we can remove mtk_eint_chip_read_mask
function.

The interrupt will be re-enabled properly later on, sometimes after
mtk_eint_do_resume, when the driver is ready to handle it.

Fixes: 58a5e1b64b ("pinctrl: mediatek: Implement wake handler and suspend resume")
Signed-off-by: Nicolas Boichat <drinkcat@chromium.org>
Acked-by: Sean Wang <sean.wang@kernel.org>

---

Applies on top of linux-pinctrl.git/fixes.

Changes from v2:
 - Added Fixes tag
 - Reworded the commit message, added an example. Sean: I hope
   that's what you had in mind, I can reword further, if needed.

Note that IRQCHIP_MASK_ON_SUSPEND does not work here, as it does
not handle lines that are enabled as a wake source, but without
interrupt enabled (e.g. cros_ec driver does that), which we do want
to support.

Also, Stephen Boyd suggested refactoring the genirq layer to make
it aware of such IRQ controllers. I may try to look at this in the
future, but don't have the cycles right now ,-(

 drivers/pinctrl/mediatek/mtk-eint.c | 18 ++++--------------
 1 file changed, 4 insertions(+), 14 deletions(-)

diff --git a/drivers/pinctrl/mediatek/mtk-eint.c b/drivers/pinctrl/mediatek/mtk-eint.c
index 737385e86beb807..7e526bcf5e0b55c 100644
--- a/drivers/pinctrl/mediatek/mtk-eint.c
+++ b/drivers/pinctrl/mediatek/mtk-eint.c
@@ -113,6 +113,8 @@ static void mtk_eint_mask(struct irq_data *d)
 	void __iomem *reg = mtk_eint_get_offset(eint, d->hwirq,
 						eint->regs->mask_set);
 
+	eint->cur_mask[d->hwirq >> 5] &= ~mask;
+
 	writel(mask, reg);
 }
 
@@ -123,6 +125,8 @@ static void mtk_eint_unmask(struct irq_data *d)
 	void __iomem *reg = mtk_eint_get_offset(eint, d->hwirq,
 						eint->regs->mask_clr);
 
+	eint->cur_mask[d->hwirq >> 5] |= mask;
+
 	writel(mask, reg);
 
 	if (eint->dual_edge[d->hwirq])
@@ -217,19 +221,6 @@ static void mtk_eint_chip_write_mask(const struct mtk_eint *eint,
 	}
 }
 
-static void mtk_eint_chip_read_mask(const struct mtk_eint *eint,
-				    void __iomem *base, u32 *buf)
-{
-	int port;
-	void __iomem *reg;
-
-	for (port = 0; port < eint->hw->ports; port++) {
-		reg = base + eint->regs->mask + (port << 2);
-		buf[port] = ~readl_relaxed(reg);
-		/* Mask is 0 when irq is enabled, and 1 when disabled. */
-	}
-}
-
 static int mtk_eint_irq_request_resources(struct irq_data *d)
 {
 	struct mtk_eint *eint = irq_data_get_irq_chip_data(d);
@@ -384,7 +375,6 @@ static void mtk_eint_irq_handler(struct irq_desc *desc)
 
 int mtk_eint_do_suspend(struct mtk_eint *eint)
 {
-	mtk_eint_chip_read_mask(eint, eint->base, eint->cur_mask);
 	mtk_eint_chip_write_mask(eint, eint->base, eint->wake_mask);
 
 	return 0;
-- 
2.22.0.410.gd8fdbe21b5-goog


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
