Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C573DAC1
	for <lists+linux-mediatek@lfdr.de>; Mon, 29 Apr 2019 05:26:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sXweAlHWK+NEuVGLMRosqJlHq/YY9KSnrsowWdxoLUo=; b=lILMGMGV5VEXJK
	FqGaVrwLzwCeFzuwhk0sghH4O/BxIfIa4LU0adgDpQ6bviN1igbKmB3ERqBZ3B+6k4cjpvFLQVGqx
	Y9ztTTmbe+kM9J1b6LhucHrPN+IGboXGDw53qNtRbfG7emOsiAvMiYc22jQWtYjZ9tln0LPs58cqX
	C6+f3kRgIps85vTswMhWsKYHG6q72KvOh3bgEpKoCXvuTBzDZBl0fNEr5X8ge+A9BVRISciq9Vs/f
	ZV3LJ3txR5qFg4DdFYrC44KGwyIdlUpo7cGqgvDHK1wGIxyqOhDXb+HyVjoa4SdLntvlc13RANQ3s
	eerm2YAGiYRC5mP6f/YA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hKwvs-0004wO-Jk; Mon, 29 Apr 2019 03:26:20 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hKwvh-0004mf-Pj
 for linux-mediatek@lists.infradead.org; Mon, 29 Apr 2019 03:26:12 +0000
Received: by mail-pg1-x542.google.com with SMTP id z16so4455618pgv.11
 for <linux-mediatek@lists.infradead.org>; Sun, 28 Apr 2019 20:26:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=1t5XlT2MKDWHi6woYas868Il32PJ2FqSyI3/eucTk+M=;
 b=Y/5zs/kxPAO6IznP7l9z6tSm542jICmYfTeptX9Pgu6+SP/6pjsy+VlsKri0qNx3bW
 3CrDEh7MGVazLDHxtLnppmWeGBNx5qs9SjyrF8BGyDBmD5eGDy17qcfeFqswBBmiUIRW
 V78BmDvy9QIwm+aC9Xbe4TSHCO48cVQpBNwI4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=1t5XlT2MKDWHi6woYas868Il32PJ2FqSyI3/eucTk+M=;
 b=en+pznqa1UxmTvyqiNfRFd8Du/Sl+MLfu3aopudHvG40r0mnBbhIuwei4gwvERVv+m
 aVT1CAKtAN9YqCp9rKLueQVh4U5dsScJ8Ij7SxkTR7pbS8CDVAN9S/WILlr7mHZ7Dw7C
 QWulyEzobNz4hwmKwLUVrfJYLT0BTYReWpJbXvHZZfwTUYR0eLxq5h0+Z+gBI2qm//Kc
 qRoO0ZGJw45gPU47Wtt8F0VaU8pT1dAoJRQlhiLwAzLwj6UbY1H85/t+OL2IwR4qsNvA
 dDLPCKiMm2nbpLDaesMSzy0dsgnMGFddEoUX/03832AR0I/yNl8PE8xryjgvBu3tS9dM
 bhtQ==
X-Gm-Message-State: APjAAAXBwf8kvMEmZQyHBfJTlwFnhaY8Zpstj9N3PyoTMv3Dm31h7Tls
 C44he1wWJMFCJEieHX156p1yeLlR2Jg=
X-Google-Smtp-Source: APXvYqwcxJtRHeC+jJ4mkhX0VVM0VpONliBoEORgL2cg9CA+k0cwGAgIX09ALZvOAb8IaI6sFJjyLw==
X-Received: by 2002:a63:161d:: with SMTP id w29mr33985281pgl.395.1556508369048; 
 Sun, 28 Apr 2019 20:26:09 -0700 (PDT)
Received: from drinkcat2.tpe.corp.google.com
 ([2401:fa00:1:b:d8b7:33af:adcb:b648])
 by smtp.gmail.com with ESMTPSA id a10sm41364938pfc.21.2019.04.28.20.26.06
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 28 Apr 2019 20:26:08 -0700 (PDT)
From: Nicolas Boichat <drinkcat@chromium.org>
To: linux-mediatek@lists.infradead.org
Subject: [PATCH 1/2] pinctrl: mediatek: Add mtk_eint_pm_ops to common-v2
Date: Mon, 29 Apr 2019 11:25:50 +0800
Message-Id: <20190429032551.65975-2-drinkcat@chromium.org>
X-Mailer: git-send-email 2.21.0.593.g511ec345e18-goog
In-Reply-To: <20190429032551.65975-1-drinkcat@chromium.org>
References: <20190429032551.65975-1-drinkcat@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190428_202609_831320_8CCAD0FB 
X-CRM114-Status: GOOD (  10.69  )
X-Spam-Score: -0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
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

pinctrl variants that include pinctrl-mtk-common-v2.h (and not
pinctrl-mtk-common.h) also need to use mtk_eint_pm_ops to setup
wake mask properly, so copy over the pm_ops to v2.

It is not easy to merge the 2 copies (or move
mtk_eint_suspend/resume to mtk-eint.c), as we need to
dereference pctrl->eint, and struct mtk_pinctrl *pctl has a
different structure definition for v1 and v2.

Signed-off-by: Nicolas Boichat <drinkcat@chromium.org>
Reviewed-by: Chuanjia Liu <Chuanjia.Liu@mediatek.com>
---
 .../pinctrl/mediatek/pinctrl-mtk-common-v2.c  | 19 +++++++++++++++++++
 .../pinctrl/mediatek/pinctrl-mtk-common-v2.h  |  1 +
 2 files changed, 20 insertions(+)

diff --git a/drivers/pinctrl/mediatek/pinctrl-mtk-common-v2.c b/drivers/pinctrl/mediatek/pinctrl-mtk-common-v2.c
index 20e1c890e73b30c..7e19b5a4748eafe 100644
--- a/drivers/pinctrl/mediatek/pinctrl-mtk-common-v2.c
+++ b/drivers/pinctrl/mediatek/pinctrl-mtk-common-v2.c
@@ -723,3 +723,22 @@ int mtk_pinconf_adv_drive_get(struct mtk_pinctrl *hw,
 
 	return 0;
 }
+
+static int mtk_eint_suspend(struct device *device)
+{
+	struct mtk_pinctrl *pctl = dev_get_drvdata(device);
+
+	return mtk_eint_do_suspend(pctl->eint);
+}
+
+static int mtk_eint_resume(struct device *device)
+{
+	struct mtk_pinctrl *pctl = dev_get_drvdata(device);
+
+	return mtk_eint_do_resume(pctl->eint);
+}
+
+const struct dev_pm_ops mtk_eint_pm_ops = {
+	.suspend_noirq = mtk_eint_suspend,
+	.resume_noirq = mtk_eint_resume,
+};
diff --git a/drivers/pinctrl/mediatek/pinctrl-mtk-common-v2.h b/drivers/pinctrl/mediatek/pinctrl-mtk-common-v2.h
index 1b7da42aa1d53e4..e2048db5bb16671 100644
--- a/drivers/pinctrl/mediatek/pinctrl-mtk-common-v2.h
+++ b/drivers/pinctrl/mediatek/pinctrl-mtk-common-v2.h
@@ -299,4 +299,5 @@ int mtk_pinconf_adv_drive_set(struct mtk_pinctrl *hw,
 int mtk_pinconf_adv_drive_get(struct mtk_pinctrl *hw,
 			      const struct mtk_pin_desc *desc, u32 *val);
 
+extern const struct dev_pm_ops mtk_eint_pm_ops;
 #endif /* __PINCTRL_MTK_COMMON_V2_H */
-- 
2.21.0.593.g511ec345e18-goog


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
