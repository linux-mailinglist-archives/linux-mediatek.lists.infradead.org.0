Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 726CCDAEB
	for <lists+linux-mediatek@lfdr.de>; Mon, 29 Apr 2019 05:56:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MOgz71vP2mNkOlkO9WShYBjuks5wWTwrU5/mQuazbMQ=; b=uqxrQQY1rKd0yA
	IGMXyicGXjXyaTRb8YY0MiVLtvKoINbHNyANdtGuW0qMWOHL3sydN5wRRY0ZEiHYIkIqOh936XmOw
	vGDQEXwZz0YFd+nIhw7OeoSdBKhQ3XiDS1lqdOIZEf5i1oRePIZwMPWW4EBzip2ky6yRG1hTIj4AQ
	YyeR983HdfmHGaXx/VavSczaD7FX83G+vvyPVxh11IUyTwyfA+NXYEcif6AhKytXqh7kdzxwmS+aa
	/nE5MgAxvQ1MTfu2tpERP7bsIAojlm2Vo19Vba5W2G5r1XjKN6d26Ano9kyhP0Q/Zvnd0GLBmz8yu
	SYfsTVZPv7I1Dh8dHcuQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hKxOU-0006Um-I6; Mon, 29 Apr 2019 03:55:54 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hKxO6-00065E-Hd
 for linux-mediatek@lists.infradead.org; Mon, 29 Apr 2019 03:55:32 +0000
Received: by mail-pf1-x444.google.com with SMTP id e24so4627319pfi.12
 for <linux-mediatek@lists.infradead.org>; Sun, 28 Apr 2019 20:55:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=7lsB7l68Q2QXqBhtOyTwuTtF7RZuXTpMIg50jCRbpi0=;
 b=e6r9RTINdTkzBfmhCn0Zd/uS9VD+tKpBrRTZLnWJRhIaRQGsTalHikdiV1rFz9XJwT
 YG3UGzwrhVYHjCSpiCl9rA2tJ6OfZ4pgofHmyQ36rynN9F8Rqzjt+iFzzoZfg2lklROm
 8z/efRXO4gc+tbSEyy5VY+144Yd6nv2H+fBoM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=7lsB7l68Q2QXqBhtOyTwuTtF7RZuXTpMIg50jCRbpi0=;
 b=fujndNyUiGs+zNkM5yFsRfOjih3+/oGAOwBUU34kxLs/C9BlChhQa46BNJhT3C46Vh
 cswEO+sg+thAoy9IdlKm4TRQ5LJSPgKxienlYJ48PvId1ey5HJ9yY0gddADLWoBnNCMt
 xR4+jARG1hNo3vCjbs+BQnjN4arDAeQi+vvAtwRpxHFJJA+Iql3SZYGaduUmWnlndDh4
 SEDBL1Qy4JXb7HMJUD/148d4ZbRlCD3Wc6tj7KwRXPZwVkYAA4cPXDKhTtovKB+ACvCD
 rUOXX+a/5qCSSYbO1qd+3SeH+7dhcUn2Z5abeGBUbfw25XSL0sqLWRoi5wtM5Rh5sdKH
 bibw==
X-Gm-Message-State: APjAAAUra/f/GkEY3YqF6llhOb8QmdlAcEyl2qmOeo1leLNVLQcQy2aZ
 9mbPblVzJcg2b/JPEoAdFTUn6mC8X3Q=
X-Google-Smtp-Source: APXvYqwtzrtpO7ganaV1Gc2uDvzrWfkie1Ma+Bpr6cXgpqNo8hY6cYwwk1o8w1b/+Ox9y8r8j8wwBw==
X-Received: by 2002:aa7:9116:: with SMTP id 22mr53588470pfh.165.1556510129598; 
 Sun, 28 Apr 2019 20:55:29 -0700 (PDT)
Received: from drinkcat2.tpe.corp.google.com
 ([2401:fa00:1:b:d8b7:33af:adcb:b648])
 by smtp.gmail.com with ESMTPSA id x128sm55433585pfx.103.2019.04.28.20.55.27
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 28 Apr 2019 20:55:29 -0700 (PDT)
From: Nicolas Boichat <drinkcat@chromium.org>
To: linux-mediatek@lists.infradead.org
Subject: [PATCH 1/2] pinctrl: mediatek: Ignore interrupts that are wake only
 during resume
Date: Mon, 29 Apr 2019 11:55:14 +0800
Message-Id: <20190429035515.73611-2-drinkcat@chromium.org>
X-Mailer: git-send-email 2.21.0.593.g511ec345e18-goog
In-Reply-To: <20190429035515.73611-1-drinkcat@chromium.org>
References: <20190429035515.73611-1-drinkcat@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190428_205530_581779_3D13C488 
X-CRM114-Status: GOOD (  14.42  )
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

Before suspending, mtk-eint would set the interrupt mask to the
one in wake_mask. However, some of these interrupts may not have a
corresponding interrupt handler, or the interrupt may be disabled.

On resume, the eint irq handler would trigger nevertheless,
and irq/pm.c:irq_pm_check_wakeup would be called, which would
try to call irq_disable. However, if the interrupt is not enabled
(irqd_irq_disabled(&desc->irq_data) is true), the call does nothing,
and the interrupt is left enabled in the eint driver.

Especially for level-sensitive interrupts, this will lead to an
interrupt storm on resume.

If we detect that an interrupt is only in wake_mask, but not in
cur_mask, we can just mask it out immediately (as mtk_eint_resume
would do anyway at a later stage in the resume sequence, when
restoring cur_mask).

Fixes: bf22ff45bed ("genirq: Avoid unnecessary low level irq function calls")
Signed-off-by: Nicolas Boichat <drinkcat@chromium.org>
---
 drivers/pinctrl/mediatek/mtk-eint.c | 16 +++++++++++++++-
 1 file changed, 15 insertions(+), 1 deletion(-)

diff --git a/drivers/pinctrl/mediatek/mtk-eint.c b/drivers/pinctrl/mediatek/mtk-eint.c
index f464f8cd274b75c..737385e86beb807 100644
--- a/drivers/pinctrl/mediatek/mtk-eint.c
+++ b/drivers/pinctrl/mediatek/mtk-eint.c
@@ -318,7 +318,7 @@ static void mtk_eint_irq_handler(struct irq_desc *desc)
 	struct irq_chip *chip = irq_desc_get_chip(desc);
 	struct mtk_eint *eint = irq_desc_get_handler_data(desc);
 	unsigned int status, eint_num;
-	int offset, index, virq;
+	int offset, mask_offset, index, virq;
 	void __iomem *reg =  mtk_eint_get_offset(eint, 0, eint->regs->stat);
 	int dual_edge, start_level, curr_level;
 
@@ -328,10 +328,24 @@ static void mtk_eint_irq_handler(struct irq_desc *desc)
 		status = readl(reg);
 		while (status) {
 			offset = __ffs(status);
+			mask_offset = eint_num >> 5;
 			index = eint_num + offset;
 			virq = irq_find_mapping(eint->domain, index);
 			status &= ~BIT(offset);
 
+			/*
+			 * If we get an interrupt on pin that was only required
+			 * for wake (but no real interrupt requested), mask the
+			 * interrupt (as would mtk_eint_resume do anyway later
+			 * in the resume sequence).
+			 */
+			if (eint->wake_mask[mask_offset] & BIT(offset) &&
+			    !(eint->cur_mask[mask_offset] & BIT(offset))) {
+				writel_relaxed(BIT(offset), reg -
+					eint->regs->stat +
+					eint->regs->mask_set);
+			}
+
 			dual_edge = eint->dual_edge[index];
 			if (dual_edge) {
 				/*
-- 
2.21.0.593.g511ec345e18-goog


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
