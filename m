Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 266C513A182
	for <lists+linux-mediatek@lfdr.de>; Tue, 14 Jan 2020 08:17:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TsT1yIERo84As9avAUH77E3FqYllnUnYxb+Q73hhvZI=; b=Gzou6JuDOry97q
	m/TIXHUI73Bm6sZ97NnmU+v8O4gAyO78WoWVoQ16UhCu8rEXAM1e9z9im0oVX5bwjJJ2pjwzJ6pql
	deYs1mk3NC6CpctQR0g7+adWlMJaRt9EKq5uxKIaoePBNt2cRG0wV61keUE6jCVjgcT62bUmegvsQ
	2dTb/G9aLey3mfSbj6UmEvOKvHSjL3HF5qjI22mujk+Ci02e+pR27U1NFaBtyE/8zkmrp0I6PhVk5
	W65QO1xtjLPVNMMe0hXFnSR5V423p+EIoDAC9GOmKXJozicjJrcjBUpXzdfUTl5d86XlPJvfMHZkx
	Tym5mo3zlAdrCAitdhpg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irGSA-000517-3E; Tue, 14 Jan 2020 07:17:30 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irGR4-0003yE-1G
 for linux-mediatek@lists.infradead.org; Tue, 14 Jan 2020 07:16:24 +0000
Received: by mail-pl1-x644.google.com with SMTP id a6so4881726plm.3
 for <linux-mediatek@lists.infradead.org>; Mon, 13 Jan 2020 23:16:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=aLfPCVSIPmuFzsEvFRWITFE6Wzi8RULGPe0z6zRKf5k=;
 b=OaXWhDznHboRO3zEjD8nrdw+NPv7XDmxHexHQ18scUseKp8UXWMnxGYaQfSFy8cFnE
 +Ubbzc9gJeDRMbc5G+6XYetc1Q0c4ODeK1pxl54x9asrntyjC6EY07Svt1G9m8ZrwPkq
 ucF48ITInsC2HX4bRf9zpq+ZC+grBF3fRwtoE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=aLfPCVSIPmuFzsEvFRWITFE6Wzi8RULGPe0z6zRKf5k=;
 b=pBdR/9x2IqaKqpxC+NHZA8/i/NFOWQepRTy4f2AGMWkKr+Imn7ktQzQj10qmbNgCBI
 1W9SXvs9aRlX9CbtPyh6xGaJlyukWf1Fi8kMv2fEfc7x9qNWfUNR3Gr+6KU2hHU25kDF
 NOiaJ+uW9s8MS8TAtVf0FLeAH1Zq/IXTwXyH/McESq/utgn9JAiRWoBlvM83pzQUDPj4
 X03b1wD+w77pRXLme5dz9eFLaQLneMhrNxecS+izLTlnPrN5GdBi30m9M/YSlopBgSpk
 Qi8ByREcAFoDhVGr4/alT/iRPQJmoKZaX5fqWBYbL4Qk/12if/BFGLdH3MtL6k3Palvm
 rHWg==
X-Gm-Message-State: APjAAAUG9SElflf8Ax7zTbd/6wtXPiOoo781y61O/PF7cViKBXOWZ1wB
 UJdPTQQc5h13Y8uYHRX0XwSWog==
X-Google-Smtp-Source: APXvYqxoaFfKjcW7VC6bDMKbEbYjDWj5GXViWzYi47SIsxZBtHqGh0p0/A6VUYpSg16lvWuN86PdnA==
X-Received: by 2002:a17:902:5a85:: with SMTP id
 r5mr18780643pli.222.1578986180443; 
 Mon, 13 Jan 2020 23:16:20 -0800 (PST)
Received: from drinkcat2.tpe.corp.google.com
 ([2401:fa00:1:b:d8b7:33af:adcb:b648])
 by smtp.gmail.com with ESMTPSA id b4sm17092976pfd.18.2020.01.13.23.16.17
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 13 Jan 2020 23:16:19 -0800 (PST)
From: Nicolas Boichat <drinkcat@chromium.org>
To: Rob Herring <robh+dt@kernel.org>
Subject: [PATCH v3 4/7] drm/panfrost: Add support for multiple regulators
Date: Tue, 14 Jan 2020 15:15:59 +0800
Message-Id: <20200114071602.47627-5-drinkcat@chromium.org>
X-Mailer: git-send-email 2.25.0.rc1.283.g88dfdc4193-goog
In-Reply-To: <20200114071602.47627-1-drinkcat@chromium.org>
References: <20200114071602.47627-1-drinkcat@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200113_231622_223178_0E24585A 
X-CRM114-Status: GOOD (  22.12  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Tomeu Vizoso <tomeu.vizoso@collabora.com>, David Airlie <airlied@linux.ie>,
 linux-kernel@vger.kernel.org, Liam Girdwood <lgirdwood@gmail.com>,
 dri-devel@lists.freedesktop.org, Steven Price <steven.price@arm.com>,
 Mark Brown <broonie@kernel.org>, linux-mediatek@lists.infradead.org,
 Alyssa Rosenzweig <alyssa.rosenzweig@collabora.com>,
 Daniel Vetter <daniel@ffwll.ch>, hsinyi@chromium.org,
 Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Some GPUs, namely, the bifrost/g72 part on MT8183, have a second
regulator for their SRAM, let's add support for that.

We extend the framework in a generic manner so that we could
support more than 2 regulators, if required.

Signed-off-by: Nicolas Boichat <drinkcat@chromium.org>

---

v3:
 - Make this more generic, by allowing any number of regulators
   (in practice we fix the maximum number of regulators to 2, but
   this could be increased easily).
 - We only probe the second regulator if the device tree matching
   data asks for it.
 - I couldn't find a way to detect the number of regulators in the
   device tree, if we wanted to refuse to probe the device if there
   are too many regulators, which might be required for safety, see
   the thread on v2 [1].
 - The discussion also included the idea of a separate device tree
   entry for a "soft PDC", or at least a separate driver. I'm not
   sure to understand the full picture, and how different vendors
   implement this, so I'm still integrating everything in the main
   driver. I'd be happy to try to make mt8183 fit into such a
   framework after it's created, but I don't think I'm best placed
   to implement (and again, the main purpose of this was to test
   if the binding is correct).

[1] https://patchwork.kernel.org/patch/11322839/

 drivers/gpu/drm/panfrost/panfrost_device.c | 25 ++++++++++++-------
 drivers/gpu/drm/panfrost/panfrost_device.h | 15 +++++++++++-
 drivers/gpu/drm/panfrost/panfrost_drv.c    | 28 +++++++++++++++-------
 3 files changed, 50 insertions(+), 18 deletions(-)

diff --git a/drivers/gpu/drm/panfrost/panfrost_device.c b/drivers/gpu/drm/panfrost/panfrost_device.c
index 238fb6d54df4732..c30e0a3772a4f57 100644
--- a/drivers/gpu/drm/panfrost/panfrost_device.c
+++ b/drivers/gpu/drm/panfrost/panfrost_device.c
@@ -87,18 +87,26 @@ static void panfrost_clk_fini(struct panfrost_device *pfdev)
 
 static int panfrost_regulator_init(struct panfrost_device *pfdev)
 {
-	int ret;
+	int ret, i;
 
-	pfdev->regulator = devm_regulator_get(pfdev->dev, "mali");
-	if (IS_ERR(pfdev->regulator)) {
-		ret = PTR_ERR(pfdev->regulator);
-		dev_err(pfdev->dev, "failed to get regulator: %d\n", ret);
+	BUG_ON(pfdev->comp->num_supplies > ARRAY_SIZE(pfdev->regulators));
+
+	for (i = 0; i < pfdev->comp->num_supplies; i++) {
+		pfdev->regulators[i].supply = pfdev->comp->supply_names[i];
+	}
+
+	ret = devm_regulator_bulk_get(pfdev->dev,
+				      pfdev->comp->num_supplies,
+				      pfdev->regulators);
+	if (ret < 0) {
+		dev_err(pfdev->dev, "failed to get regulators: %d\n", ret);
 		return ret;
 	}
 
-	ret = regulator_enable(pfdev->regulator);
+	ret = regulator_bulk_enable(pfdev->comp->num_supplies,
+				    pfdev->regulators);
 	if (ret < 0) {
-		dev_err(pfdev->dev, "failed to enable regulator: %d\n", ret);
+		dev_err(pfdev->dev, "failed to enable regulators: %d\n", ret);
 		return ret;
 	}
 
@@ -107,7 +115,8 @@ static int panfrost_regulator_init(struct panfrost_device *pfdev)
 
 static void panfrost_regulator_fini(struct panfrost_device *pfdev)
 {
-	regulator_disable(pfdev->regulator);
+	regulator_bulk_disable(pfdev->comp->num_supplies,
+			pfdev->regulators);
 }
 
 int panfrost_device_init(struct panfrost_device *pfdev)
diff --git a/drivers/gpu/drm/panfrost/panfrost_device.h b/drivers/gpu/drm/panfrost/panfrost_device.h
index 06713811b92cdf7..021f063ffb3747f 100644
--- a/drivers/gpu/drm/panfrost/panfrost_device.h
+++ b/drivers/gpu/drm/panfrost/panfrost_device.h
@@ -7,6 +7,7 @@
 
 #include <linux/atomic.h>
 #include <linux/io-pgtable.h>
+#include <linux/regulator/consumer.h>
 #include <linux/spinlock.h>
 #include <drm/drm_device.h>
 #include <drm/drm_mm.h>
@@ -19,6 +20,7 @@ struct panfrost_job;
 struct panfrost_perfcnt;
 
 #define NUM_JOB_SLOTS 3
+#define MAX_REGULATORS 2
 
 struct panfrost_features {
 	u16 id;
@@ -51,6 +53,16 @@ struct panfrost_features {
 	unsigned long hw_issues[64 / BITS_PER_LONG];
 };
 
+/*
+ * Features that cannot be automatically detected and need matching using the
+ * compatible string, typically SoC-specific.
+ */
+struct panfrost_compatible {
+	/* Supplies count and names. */
+	int num_supplies;
+	const char * const *supply_names;
+};
+
 struct panfrost_device {
 	struct device *dev;
 	struct drm_device *ddev;
@@ -59,10 +71,11 @@ struct panfrost_device {
 	void __iomem *iomem;
 	struct clk *clock;
 	struct clk *bus_clock;
-	struct regulator *regulator;
+	struct regulator_bulk_data regulators[MAX_REGULATORS];
 	struct reset_control *rstc;
 
 	struct panfrost_features features;
+	const struct panfrost_compatible* comp;
 
 	spinlock_t as_lock;
 	unsigned long as_in_use_mask;
diff --git a/drivers/gpu/drm/panfrost/panfrost_drv.c b/drivers/gpu/drm/panfrost/panfrost_drv.c
index 48e3c4165247cea..db3563b80150c9d 100644
--- a/drivers/gpu/drm/panfrost/panfrost_drv.c
+++ b/drivers/gpu/drm/panfrost/panfrost_drv.c
@@ -510,6 +510,10 @@ static int panfrost_probe(struct platform_device *pdev)
 
 	platform_set_drvdata(pdev, pfdev);
 
+	pfdev->comp = of_device_get_match_data(&pdev->dev);
+	if (!pfdev->comp)
+		return -ENODEV;
+
 	/* Allocate and initialze the DRM device. */
 	ddev = drm_dev_alloc(&panfrost_drm_driver, &pdev->dev);
 	if (IS_ERR(ddev))
@@ -581,16 +585,22 @@ static int panfrost_remove(struct platform_device *pdev)
 	return 0;
 }
 
+const char * const default_supplies[] = { "mali" };
+static const struct panfrost_compatible default_data = {
+	.num_supplies = ARRAY_SIZE(default_supplies),
+	.supply_names = default_supplies,
+};
+
 static const struct of_device_id dt_match[] = {
-	{ .compatible = "arm,mali-t604" },
-	{ .compatible = "arm,mali-t624" },
-	{ .compatible = "arm,mali-t628" },
-	{ .compatible = "arm,mali-t720" },
-	{ .compatible = "arm,mali-t760" },
-	{ .compatible = "arm,mali-t820" },
-	{ .compatible = "arm,mali-t830" },
-	{ .compatible = "arm,mali-t860" },
-	{ .compatible = "arm,mali-t880" },
+	{ .compatible = "arm,mali-t604", .data = &default_data, },
+	{ .compatible = "arm,mali-t624", .data = &default_data, },
+	{ .compatible = "arm,mali-t628", .data = &default_data, },
+	{ .compatible = "arm,mali-t720", .data = &default_data, },
+	{ .compatible = "arm,mali-t760", .data = &default_data, },
+	{ .compatible = "arm,mali-t820", .data = &default_data, },
+	{ .compatible = "arm,mali-t830", .data = &default_data, },
+	{ .compatible = "arm,mali-t860", .data = &default_data, },
+	{ .compatible = "arm,mali-t880", .data = &default_data, },
 	{}
 };
 MODULE_DEVICE_TABLE(of, dt_match);
-- 
2.25.0.rc1.283.g88dfdc4193-goog


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
