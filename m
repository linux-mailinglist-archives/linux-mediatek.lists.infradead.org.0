Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 82C87133B14
	for <lists+linux-mediatek@lfdr.de>; Wed,  8 Jan 2020 06:25:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bPROZIpydy6ztmy4ATmh12k3DZToblzswyBtwiAAY80=; b=WV7ZRUHw7PNkJL
	YW0BI0MoGSOS+BsguHguAqatqSLVJ2t1/2lrxQGfM312lIm1Rd68Tp4uJhZBFCWxea6Jlncua/6Wd
	pslqOIiwe+DASm43Mc07vsTA998lED6vOLLXwiwccpvJ4Mypcec7A0fc2TNtDmo0OcmOLq6SZDKQ+
	onibaXQ742+HNQUkFW7bgd1CIHWR9j1tPhHXuh5q+MmN/jjCuom4RrAQwjfM1RCcQiWE82cipe/Cd
	xBhjjJi+q29er1DZ+B46qKEDpcT236zbRUt1NftvfdeAr7ZLY6S5J+B5wlwOocoQJJ9xDmPbZyZVe
	C7wHXBmXijL2Pmt5WZeQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ip3qX-0007R8-6V; Wed, 08 Jan 2020 05:25:33 +0000
Received: from mail-pj1-x1041.google.com ([2607:f8b0:4864:20::1041])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ip3pF-0004xH-Q3
 for linux-mediatek@lists.infradead.org; Wed, 08 Jan 2020 05:24:15 +0000
Received: by mail-pj1-x1041.google.com with SMTP id n59so563794pjb.1
 for <linux-mediatek@lists.infradead.org>; Tue, 07 Jan 2020 21:24:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=UOwyKJvK30gkDautsCvwyHXlhtr89ohJP+HqIMRnEEY=;
 b=QLx9yX4oKgUhsf9zqBiMKi9PC3cJUGptpG/rsIeA0xAbFDz3AFhMYQndfD4e5TiiA5
 wduA+xP76VAH3pTE/Y7N2zNP97+RQWMddxzeUn/Nf0v4LIAyD01x4QhbaispCA389giy
 7q8R+qc9ynzewq3J8aV43Z09BdUAkc5nDf8Fg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=UOwyKJvK30gkDautsCvwyHXlhtr89ohJP+HqIMRnEEY=;
 b=HdRO7EdSi/tE3Lu5RQKMt+6dO9ul9rLiKsLrNzidkAjr8BEtZrbTWswYl6ZG6pd+ym
 KAifmtCUpTeM6w5eCoayUTNgmFkOXR9tnboRNDYSkHeOJh46WhXKUHl4WiTOXXe/VrlN
 KjIk97K3kLOBGgQw6QJ29jbIqOiIDQvAhDx8BNXd16Elvj9dvCs94wJF7CVe25dn1x8v
 rQ3yQXxw412iwvWspiymvMGCbdrTsa/HMnskJ4kNNhEaw5SocAKOPScCOZL4xStHGULl
 VOlMRv/BsIaz515T9ReuDcOD+ZWNBvTxQMC7z0CvG6za1a0npiitq2XWvlZ5ZP2wIorp
 av7A==
X-Gm-Message-State: APjAAAVmyMgf0jt+jLX+sReEEVAxruZMGavwCk4J00XKMGMRxjsGKa2S
 ubJQIVgN/5qzMCWDuO/4Dvk5mQ==
X-Google-Smtp-Source: APXvYqyP94Ucu5iILCPq19i7mowizjkSB4O/xb8qsx3dYRf/q3ysQY9apimu4OZEq+YRXwTIHiTnjQ==
X-Received: by 2002:a17:902:265:: with SMTP id
 92mr3326908plc.188.1578461052777; 
 Tue, 07 Jan 2020 21:24:12 -0800 (PST)
Received: from drinkcat2.tpe.corp.google.com
 ([2401:fa00:1:b:d8b7:33af:adcb:b648])
 by smtp.gmail.com with ESMTPSA id n24sm387505pff.12.2020.01.07.21.24.10
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 07 Jan 2020 21:24:12 -0800 (PST)
From: Nicolas Boichat <drinkcat@chromium.org>
To: Rob Herring <robh+dt@kernel.org>
Subject: [PATCH v2 6/7, RFC] drm/panfrost: Add bifrost compatible string
Date: Wed,  8 Jan 2020 13:23:36 +0800
Message-Id: <20200108052337.65916-7-drinkcat@chromium.org>
X-Mailer: git-send-email 2.24.1.735.g03f4e72817-goog
In-Reply-To: <20200108052337.65916-1-drinkcat@chromium.org>
References: <20200108052337.65916-1-drinkcat@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200107_212414_045288_283D3867 
X-CRM114-Status: UNSURE (   9.65  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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

For testing only, the driver doesn't really work yet, AFAICT.

Signed-off-by: Nicolas Boichat <drinkcat@chromium.org>
---
 drivers/gpu/drm/panfrost/panfrost_drv.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/gpu/drm/panfrost/panfrost_drv.c b/drivers/gpu/drm/panfrost/panfrost_drv.c
index 48e3c4165247cea..f3a4d77266ba961 100644
--- a/drivers/gpu/drm/panfrost/panfrost_drv.c
+++ b/drivers/gpu/drm/panfrost/panfrost_drv.c
@@ -591,6 +591,7 @@ static const struct of_device_id dt_match[] = {
 	{ .compatible = "arm,mali-t830" },
 	{ .compatible = "arm,mali-t860" },
 	{ .compatible = "arm,mali-t880" },
+	{ .compatible = "arm,mali-bifrost" },
 	{}
 };
 MODULE_DEVICE_TABLE(of, dt_match);
-- 
2.24.1.735.g03f4e72817-goog


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
