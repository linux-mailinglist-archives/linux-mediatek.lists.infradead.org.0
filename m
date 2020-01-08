Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F640133AE3
	for <lists+linux-mediatek@lfdr.de>; Wed,  8 Jan 2020 06:24:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mWamViIbpy6hKq8i6pXHolxxdUVb+cDHlDoFcQKJhW0=; b=shRU1TxGfCH5oj
	6OU8yedeFafhFXjghNvXgGl/LpMzpG+CGWPwiK81AiU6VUDo+p68BhRcfM9F7qHXAIZM7rRx8nKf7
	K4ku2GeI2q3IrdeO6+BOij0T6QwO1dTVONoT6q/y4wVbkrtKaV6H0oIG+YV1o4xHkfkjMp1Q0O8vW
	frGL9Ng9n1Pe06CDmpJcPjuXlVRencdkKShj8dkAIF2+gscZMI9ewpDf5iS6haxHVwmIvCIoYay9g
	/MiWmNPbKRKoquQvCyCu/O/EUWuWcuJfIaghPAoenS6hyLD4+yDs4jughAfmzOsGvzJ5c0a1qTCeS
	Pxd9X15nNvQDoiM/1Qbg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ip3pr-0005Zb-Im; Wed, 08 Jan 2020 05:24:51 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ip3p7-0004mq-Hw
 for linux-mediatek@lists.infradead.org; Wed, 08 Jan 2020 05:24:06 +0000
Received: by mail-pl1-x642.google.com with SMTP id az3so623794plb.11
 for <linux-mediatek@lists.infradead.org>; Tue, 07 Jan 2020 21:24:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=VXWKPtv3cxE8lSp3PQIY49x0a4P+s/RHd/rRix+wGzg=;
 b=Jfjo+Faggwo7DaWWKVmhC7/00Vvhz+MTRYNmhAKQYX1HCOP3EYR8Lin5NwFPnmhjMY
 4+Fb5Qu0e1wDWqALzow5cVbQpRrmDtK6+s0MWVLSCLeAn/oBigTNqV6pS0G3uvjzNP7g
 ZOYd16bXAfTR+SPI/3E9hzT5bBEzHfFjf0IP8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=VXWKPtv3cxE8lSp3PQIY49x0a4P+s/RHd/rRix+wGzg=;
 b=L/IZnHeDaphB45uZJCFtfc9jT72VfjX0hxPi78r6Wk84WnU9LbFZ8fHtb32A3WzjEa
 6kxdnRdbZE7U2LMbhXz7ZQsfxb04sxLytODtqfJ4g5Gf2F0jrV64ADVIRcTt7ntDDwRt
 W8CAg3x5OBPMw8dHUYpD7W0s0SmqtA4Wj/NsT/DC/u/7dpgEkR45uZWE0Zyv0t0sK9LC
 Whf2oTNqyDN2jxT4hfPsZIUYLS+zSj9cU7p0mwRATb3v3AQOqD36tLhoezDxVC2aEj64
 F6cs7L2vlN7/0jLScAftM4587LGEfh+5MPuJxfiQ2+S3xmL3jaoGwq5eOQuIZk7Yho0g
 IIlQ==
X-Gm-Message-State: APjAAAWGuGmDLsleNN3OhCu6MIYpx25HFxdsmcdoJVYIgKjbPleK9XU/
 9FwEgDROGZmQi034k2ee+4tGjw==
X-Google-Smtp-Source: APXvYqyHC+8oOSDbkbTqCwSPnXshCUeDVww8reRuLxI2n62N7ExPieyrDCDC2ipIyCqYctUkgXWJYA==
X-Received: by 2002:a17:90a:3aaf:: with SMTP id
 b44mr2510426pjc.9.1578461044170; 
 Tue, 07 Jan 2020 21:24:04 -0800 (PST)
Received: from drinkcat2.tpe.corp.google.com
 ([2401:fa00:1:b:d8b7:33af:adcb:b648])
 by smtp.gmail.com with ESMTPSA id n24sm387505pff.12.2020.01.07.21.24.01
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 07 Jan 2020 21:24:03 -0800 (PST)
From: Nicolas Boichat <drinkcat@chromium.org>
To: Rob Herring <robh+dt@kernel.org>
Subject: [PATCH v2 3/7] drm/panfrost: Improve error reporting in
 panfrost_gpu_power_on
Date: Wed,  8 Jan 2020 13:23:33 +0800
Message-Id: <20200108052337.65916-4-drinkcat@chromium.org>
X-Mailer: git-send-email 2.24.1.735.g03f4e72817-goog
In-Reply-To: <20200108052337.65916-1-drinkcat@chromium.org>
References: <20200108052337.65916-1-drinkcat@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200107_212405_611551_02289B5C 
X-CRM114-Status: UNSURE (   9.91  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
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

It is useful to know which component cannot be powered on.

Signed-off-by: Nicolas Boichat <drinkcat@chromium.org>

---

Was useful when trying to probe bifrost GPU, to understand what
issue we are facing.
---
 drivers/gpu/drm/panfrost/panfrost_gpu.c | 15 ++++++++++-----
 1 file changed, 10 insertions(+), 5 deletions(-)

diff --git a/drivers/gpu/drm/panfrost/panfrost_gpu.c b/drivers/gpu/drm/panfrost/panfrost_gpu.c
index 8822ec13a0d619f..ba02bbfcf28c011 100644
--- a/drivers/gpu/drm/panfrost/panfrost_gpu.c
+++ b/drivers/gpu/drm/panfrost/panfrost_gpu.c
@@ -308,21 +308,26 @@ void panfrost_gpu_power_on(struct panfrost_device *pfdev)
 	gpu_write(pfdev, L2_PWRON_LO, pfdev->features.l2_present);
 	ret = readl_relaxed_poll_timeout(pfdev->iomem + L2_READY_LO,
 		val, val == pfdev->features.l2_present, 100, 1000);
+	if (ret)
+		dev_err(pfdev->dev, "error powering up gpu L2");
 
 	gpu_write(pfdev, STACK_PWRON_LO, pfdev->features.stack_present);
-	ret |= readl_relaxed_poll_timeout(pfdev->iomem + STACK_READY_LO,
+	ret = readl_relaxed_poll_timeout(pfdev->iomem + STACK_READY_LO,
 		val, val == pfdev->features.stack_present, 100, 1000);
+	if (ret)
+		dev_err(pfdev->dev, "error powering up gpu stack");
 
 	gpu_write(pfdev, SHADER_PWRON_LO, pfdev->features.shader_present);
-	ret |= readl_relaxed_poll_timeout(pfdev->iomem + SHADER_READY_LO,
+	ret = readl_relaxed_poll_timeout(pfdev->iomem + SHADER_READY_LO,
 		val, val == pfdev->features.shader_present, 100, 1000);
+	if (ret)
+		dev_err(pfdev->dev, "error powering up gpu shader");
 
 	gpu_write(pfdev, TILER_PWRON_LO, pfdev->features.tiler_present);
-	ret |= readl_relaxed_poll_timeout(pfdev->iomem + TILER_READY_LO,
+	ret = readl_relaxed_poll_timeout(pfdev->iomem + TILER_READY_LO,
 		val, val == pfdev->features.tiler_present, 100, 1000);
-
 	if (ret)
-		dev_err(pfdev->dev, "error powering up gpu");
+		dev_err(pfdev->dev, "error powering up gpu tiler");
 }
 
 void panfrost_gpu_power_off(struct panfrost_device *pfdev)
-- 
2.24.1.735.g03f4e72817-goog


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
