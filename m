Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1807F133B0F
	for <lists+linux-mediatek@lfdr.de>; Wed,  8 Jan 2020 06:25:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RYHrSYgOt/4dT3wOydBU1/HDruCatZdUJXu47z/vxIM=; b=KQm6oh10zGG4GC
	tfELDQEU0y5AeH3iAh86DbEIlbJFZs5FWQ5qiY4Nm/1LzXUQL0dzcrCB2RtNuYJZsksDDppBq9fWH
	UV7UCTjyQYGwCBXxVyA/8LZrAbN9fmU1o0jfMIBLnjRZROV970AdJM/gmlHpqLudNEDRh4xxOF+Li
	+zH0QzRsjkY8c49EYnuFYqrVv4gSeWSDipJeCT6KCY9PgShv8my9qlAIlQzvlkm43CwwulRvnSHzu
	89sdMf7RAkKsm9CKXHsvfpXdKkn3xbTOm+U/4r8lb8zZlm/ocLAJvA3y/gIJg7RiRKv+HADPz0vPk
	dtjE0mS0U4Has37PZ+oA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ip3qF-0006sI-QM; Wed, 08 Jan 2020 05:25:15 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ip3pA-0004pa-3C
 for linux-mediatek@lists.infradead.org; Wed, 08 Jan 2020 05:24:09 +0000
Received: by mail-pl1-x641.google.com with SMTP id y8so619731pll.13
 for <linux-mediatek@lists.infradead.org>; Tue, 07 Jan 2020 21:24:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=GZPi5S7C9JBOvDvG9rs8XlkVI4VOHpLwCsMiOaYI8o4=;
 b=KZ2Fr1SIWZOlOI/MInwohmz1Hb6Xx7Tq+QTxkCat51I7DcfFdbynSqAxDlo/ZrmAzy
 bzYx04hvPnPCCny7HlSE8qtcQ54XXy3skRRoKWw/srh/+NPKZBDJmkfK0r32EhMKP8As
 Ki1O01CCcGhKnBDTGVZ2lIeuDq9nZ6XwreZMY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=GZPi5S7C9JBOvDvG9rs8XlkVI4VOHpLwCsMiOaYI8o4=;
 b=iTh/TW8kYYQVVcXjwO+v2KNOlxFgtuaFwy9D1iMr5GzoFGeowk8wf+/3+FIXkvVpw9
 1V0GDsAX9jm7uT+U4MMy7r8DznkmhC+C0GOpOBmgbJeR5tU5wZarP2UsiNdeRrJc1eFe
 7VP6QA1mB5vwV/tdOcL5grv/Y3oLi+Mh5aeDwD6pRJP8TjHwLyPETcj3H+YjnBGVBrj/
 prX2rNeRC0Zpm4SlyyU2rUFFvuFB4O3pWFsp+JU2Is713MVqjNTQxasjIgut4VATcJc6
 jBLc7PUSEyWwPe/8/z3zqlDOwyontlbZnFx15iGh246GxSJ0mUzYB7yyR3Vvl90s40kR
 LYyQ==
X-Gm-Message-State: APjAAAUNFBLcK6dqND5XwkuuxbjUk2uqmc1OPOMnHYMmpy0EFvY0zvGO
 WBo63M8JOk9D4pYR2dYDHm5CDQ==
X-Google-Smtp-Source: APXvYqyXscgEKtXSz2fpP6ePSqF6Ze4O7OI5VBeA+RFqRdvOMivOeOELOfMM09JM7WNsSJ6itelcsA==
X-Received: by 2002:a17:90a:d789:: with SMTP id z9mr2508178pju.5.1578461047043; 
 Tue, 07 Jan 2020 21:24:07 -0800 (PST)
Received: from drinkcat2.tpe.corp.google.com
 ([2401:fa00:1:b:d8b7:33af:adcb:b648])
 by smtp.gmail.com with ESMTPSA id n24sm387505pff.12.2020.01.07.21.24.04
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 07 Jan 2020 21:24:06 -0800 (PST)
From: Nicolas Boichat <drinkcat@chromium.org>
To: Rob Herring <robh+dt@kernel.org>
Subject: [PATCH v2 4/7] drm/panfrost: Add support for a second regulator for
 the GPU
Date: Wed,  8 Jan 2020 13:23:34 +0800
Message-Id: <20200108052337.65916-5-drinkcat@chromium.org>
X-Mailer: git-send-email 2.24.1.735.g03f4e72817-goog
In-Reply-To: <20200108052337.65916-1-drinkcat@chromium.org>
References: <20200108052337.65916-1-drinkcat@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200107_212408_160380_2D6A78C4 
X-CRM114-Status: GOOD (  12.88  )
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

Signed-off-by: Nicolas Boichat <drinkcat@chromium.org>
---
 drivers/gpu/drm/panfrost/panfrost_device.c | 21 +++++++++++++++++++++
 drivers/gpu/drm/panfrost/panfrost_device.h |  1 +
 2 files changed, 22 insertions(+)

diff --git a/drivers/gpu/drm/panfrost/panfrost_device.c b/drivers/gpu/drm/panfrost/panfrost_device.c
index 238fb6d54df4732..a0b0a6fef8b4e63 100644
--- a/drivers/gpu/drm/panfrost/panfrost_device.c
+++ b/drivers/gpu/drm/panfrost/panfrost_device.c
@@ -102,12 +102,33 @@ static int panfrost_regulator_init(struct panfrost_device *pfdev)
 		return ret;
 	}
 
+	pfdev->regulator_sram = devm_regulator_get_optional(pfdev->dev, "sram");
+	if (IS_ERR(pfdev->regulator_sram)) {
+		ret = PTR_ERR(pfdev->regulator_sram);
+		dev_err(pfdev->dev, "failed to get SRAM regulator: %d\n", ret);
+		goto err;
+	}
+
+	if (pfdev->regulator_sram) {
+		ret = regulator_enable(pfdev->regulator_sram);
+		if (ret < 0) {
+			dev_err(pfdev->dev,
+				"failed to enable SRAM regulator: %d\n", ret);
+			goto err;
+		}
+	}
+
 	return 0;
+
+err:
+	regulator_disable(pfdev->regulator);
+	return ret;
 }
 
 static void panfrost_regulator_fini(struct panfrost_device *pfdev)
 {
 	regulator_disable(pfdev->regulator);
+	regulator_disable(pfdev->regulator_sram);
 }
 
 int panfrost_device_init(struct panfrost_device *pfdev)
diff --git a/drivers/gpu/drm/panfrost/panfrost_device.h b/drivers/gpu/drm/panfrost/panfrost_device.h
index 06713811b92cdf7..a124334d69e7e93 100644
--- a/drivers/gpu/drm/panfrost/panfrost_device.h
+++ b/drivers/gpu/drm/panfrost/panfrost_device.h
@@ -60,6 +60,7 @@ struct panfrost_device {
 	struct clk *clock;
 	struct clk *bus_clock;
 	struct regulator *regulator;
+	struct regulator *regulator_sram;
 	struct reset_control *rstc;
 
 	struct panfrost_features features;
-- 
2.24.1.735.g03f4e72817-goog


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
