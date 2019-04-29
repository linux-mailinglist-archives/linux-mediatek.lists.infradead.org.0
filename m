Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 638ADDAEE
	for <lists+linux-mediatek@lfdr.de>; Mon, 29 Apr 2019 05:56:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ufAR4ruHY4wde/19vgLX2Qxm/15w9hm1B/GmbVGROI4=; b=KbcxomCi1OLL4c
	wwjOnDD8swdg/RGr3Mi4hUVo+OQshlxXklbDwA2GcaX0WXP7ReGSGFnwDKlBW6o5qEU+47+CeJLyM
	BbVq/BApkNJIO3FLdKTCXRFJ23nQWDEBnu7glUDgBOG7ZrRDz5JPRCki4K2VXh+Qk39h1vXr1F52t
	6xMv6fCfHpCCXqH0HEJbpn32u3FYW7l9SGHNxgZVFnZAqyRkBbuPKGG/o4ByRaLGtfRly2KK7URDo
	XTi0O9CkiLh1T8c9MJbvJr3O+xVj1n5b1dejVFq1O2aKYYr2voQ+SWDoN36nT90BPadPjjc0BivjG
	wPVyHfbz3/WSep+Kpqgg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hKxOf-0006lA-Dr; Mon, 29 Apr 2019 03:56:05 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hKxO8-00067a-Mf
 for linux-mediatek@lists.infradead.org; Mon, 29 Apr 2019 03:55:37 +0000
Received: by mail-pf1-x444.google.com with SMTP id v80so49261pfa.3
 for <linux-mediatek@lists.infradead.org>; Sun, 28 Apr 2019 20:55:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=WAZlyDzGKVIdVMC388n6S7o0DOasFYjgOEfAKf4uteY=;
 b=nSEa1MJ4YGhP7t6ZTTKWFurbopRUMivjdQCEUKmamdRbDSTbxUQbmsdw/JeTlHj47P
 e9Rjsu7YKOeUFG6lZbHcj2EFQJ2rW7yuNvBuXJVi0gyadnS0GlwtOvda8IRiGsZRqzsr
 tU5oaOTdgfubtwUJH0ZWA4QUdgzfJLmwUBugM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=WAZlyDzGKVIdVMC388n6S7o0DOasFYjgOEfAKf4uteY=;
 b=Exa8kiMICxQ4wVmCJpYA53ndyBrZSeu19IKOPx8tNzlT0vcog+IHGqXhY2OeinpeCZ
 QwmMsbSLR8/l3XFXt50pwkWutL4aPhwz3SVDt+kzQhGSS+ltFkF0fBVxjeJ/w0XmE6PK
 sR7rPtGJN5+uhy/4jHr1MEnJp3jcgdoSOjQMhAz+Kvo8Ar0bZ+fQHLU3CzHxlZuwJb7a
 FMcZYQN1poJn8P8h5Ppg/futjx2SQ1Q2GFTX+qXI78hVBGH6k9mYvrJZkHhuGRY4WgmT
 uZKCNg5+UN1r6KFOzDUVdkNCVLSiefJhDMoQwimTdHnGMLAyFE2TxtMGAxgI4LGiEgJu
 0DdQ==
X-Gm-Message-State: APjAAAUxt1z0SCgejtYO+9tCRPiffyOtYbsGTKydqiFS9eUII/lVHCsl
 nvIg63hRTClROJAjEaN6aOhVkyAOwec=
X-Google-Smtp-Source: APXvYqx3TFhPNmuhW9pXjaa8z9fORbLQnXGmeqzBi0NVBXmBzyMccsPh3dh+KK5grUYlUW8sKt9sow==
X-Received: by 2002:a62:a219:: with SMTP id m25mr60974348pff.197.1556510131833; 
 Sun, 28 Apr 2019 20:55:31 -0700 (PDT)
Received: from drinkcat2.tpe.corp.google.com
 ([2401:fa00:1:b:d8b7:33af:adcb:b648])
 by smtp.gmail.com with ESMTPSA id x128sm55433585pfx.103.2019.04.28.20.55.29
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 28 Apr 2019 20:55:31 -0700 (PDT)
From: Nicolas Boichat <drinkcat@chromium.org>
To: linux-mediatek@lists.infradead.org
Subject: [PATCH 2/2] pinctrl: mediatek: Update cur_mask in mask/mask ops
Date: Mon, 29 Apr 2019 11:55:15 +0800
Message-Id: <20190429035515.73611-3-drinkcat@chromium.org>
X-Mailer: git-send-email 2.21.0.593.g511ec345e18-goog
In-Reply-To: <20190429035515.73611-1-drinkcat@chromium.org>
References: <20190429035515.73611-1-drinkcat@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190428_205533_084264_78934947 
X-CRM114-Status: GOOD (  12.10  )
X-Spam-Score: -0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Chuanjia Liu <Chuanjia.Liu@mediatek.com>,
 Linus Walleij <linus.walleij@linaro.org>, Sean Wang <sean.wang@kernel.org>,
 linux-kernel@vger.kernel.org, evgreen@chromium.org, swboyd@chromium.org,
 linux-gpio@vger.kernel.org, Matthias Brugger <matthias.bgg@gmail.com>,
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

Instead, we just record mask/unmask changes in cur_mask. This
also avoids the need to read the current mask in eint_do_suspend,
and we can remove mtk_eint_chip_read_mask function.

Signed-off-by: Nicolas Boichat <drinkcat@chromium.org>
---
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
2.21.0.593.g511ec345e18-goog


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
