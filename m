Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 397DA4A5AE
	for <lists+linux-mediatek@lfdr.de>; Tue, 18 Jun 2019 17:44:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fY+PkBNMhFs1hVvh7qazBQT1+DUyPbTzSfthPnNHQJU=; b=jRJjhfBd44ciqN
	raFwZ+GP7SUqFFlN3ClA+bpajHEYLk15v+zk5C93CSlFyEojd2BsxU6iCGURaRGPlJa/KvZ00HWdB
	tAYomk9skmLlAKSJwP6ie6etnloGjHMq3iABt9GMwaBNnwmUN7D4jk5c3SkfP+497QLGfurpnT0bA
	+eYm6zKkJ33WfrFX9w5ZahKkIHX/to56be8P+cHnIeVLkeSm6uuHGgiuywRX8SJms/wQue+k4lylc
	f1sE8HJt6o0d2a7+OwEEeCIw/eg6D2YAwV/jlvqWGzYiZ3Jd3w2CCucmHvvXT4MosXPMGpk38rkb9
	6D+SZIE4LTgzJgYGiMKg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdGH9-0007FK-GI; Tue, 18 Jun 2019 15:43:59 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdGH3-0007Ct-Od
 for linux-mediatek@lists.infradead.org; Tue, 18 Jun 2019 15:43:56 +0000
Received: by mail-wm1-x342.google.com with SMTP id x15so3841029wmj.3
 for <linux-mediatek@lists.infradead.org>; Tue, 18 Jun 2019 08:43:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=0vbPMnSPTFmTNhTvb78jQv/BzhDnMGLR+xrvA6q/kx0=;
 b=VDRhhU5RFfax5iw/D6bgy+EWGO4v9G3xyws4yLORV4eWIzJ+FQZTTX2x7NttwaSvVf
 bK8l7V8vhqYmhSUgyQ/sRTOMPTvLpBxKYC5k/KQ7fdi9Duu6O5z4Oaf9xXBDQyZssKp+
 qIhECCaw9iKwmiov+X2tMABtA8kzifXjkEp+r3IdyfTCaMmBiy1j00VBTVDo3Bb1ZH1n
 w2Lr9zATdrTXx5jVOf8iA+f0U9OGOTjLO/N6yqwu33aI/OPmXjx6TGd53gIhVWJNtU7f
 5PnxVhRqlP376h4FR8KVPGDFnjsAgEeNRzF8rL2ZloB1/47IxNoAMC5H5MZ7CtXcVHL/
 OSkw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=0vbPMnSPTFmTNhTvb78jQv/BzhDnMGLR+xrvA6q/kx0=;
 b=dQDDZ/Anxey/hC4VTXYtd0dLvGFIPoamOyWqFTe4EqHVLNrgaNRMP0Bj5nWT5n9XX0
 P1gW/Q7Nsnn+mwexaQ+fA3klZX5pzPyUwS8Kud4Mx9XLDuGBry/D3MbPtlNY8LYhF6F7
 BE5Edb9o+VTvrS0Arw/FF5Gv9wIRQJDchlR2BrN9TVt6ZbFSl1YZlPLk7AAE/043baYz
 jTUa6+R/w8iPICZbbU/MT8/httAAl2wQmz+tIy/zWA7VdYob+MY2jMV+mPthuZSsSaQU
 9m2EfBOUPQ37pr+6M2Do4EjZNHKBQ/H/c+VWamGJ0g7uTU3w1J4amdZEPdrDqCCUG06M
 25Mg==
X-Gm-Message-State: APjAAAU6iuJfE+gyxX6mnwv0szNi1p1YSJrwom4rvqV0Q0u7IwKHhjAj
 S8qB77fTJij2gKzZRytQO37Z+g==
X-Google-Smtp-Source: APXvYqwtw4L/aIDQ4+qEJmUYMfZ7EYwaOEj6yOOtOOc3CwsfJo7ZPI8soRXlk3VuzO+bkNaQhH2WCg==
X-Received: by 2002:a1c:2c41:: with SMTP id s62mr4270696wms.8.1560872631849;
 Tue, 18 Jun 2019 08:43:51 -0700 (PDT)
Received: from localhost.localdomain
 (amontpellier-652-1-281-69.w109-210.abo.wanadoo.fr. [109.210.96.69])
 by smtp.gmail.com with ESMTPSA id z5sm2633287wma.36.2019.06.18.08.43.51
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 18 Jun 2019 08:43:51 -0700 (PDT)
From: Fabien Parent <fparent@baylibre.com>
To: lee.jones@linaro.org,
	matthias.bgg@gmail.com
Subject: [PATCH 2/2] mfd: mt6397: use DEFINE_RES_* helpers to define RTC
 resources
Date: Tue, 18 Jun 2019 17:43:47 +0200
Message-Id: <20190618154347.16991-2-fparent@baylibre.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190618154347.16991-1-fparent@baylibre.com>
References: <20190618154347.16991-1-fparent@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190618_084353_820979_A3730CBA 
X-CRM114-Status: UNSURE (   9.13  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Fabien Parent <fparent@baylibre.com>, linux-mediatek@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Use the DEFINE_RES_{MEM,IRQ} to define the RTC reosurce for the MT6397
PMIC.

Signed-off-by: Fabien Parent <fparent@baylibre.com>
---
 drivers/mfd/mt6397-core.c | 12 ++----------
 1 file changed, 2 insertions(+), 10 deletions(-)

diff --git a/drivers/mfd/mt6397-core.c b/drivers/mfd/mt6397-core.c
index 190ed86ad93e..1e315712870b 100644
--- a/drivers/mfd/mt6397-core.c
+++ b/drivers/mfd/mt6397-core.c
@@ -23,16 +23,8 @@
 #define MT6397_CID_CODE		0x97
 
 static const struct resource mt6397_rtc_resources[] = {
-	{
-		.start = MT6397_RTC_BASE,
-		.end   = MT6397_RTC_BASE + MT6397_RTC_SIZE,
-		.flags = IORESOURCE_MEM,
-	},
-	{
-		.start = MT6397_IRQ_RTC,
-		.end   = MT6397_IRQ_RTC,
-		.flags = IORESOURCE_IRQ,
-	},
+	DEFINE_RES_MEM(MT6397_RTC_BASE, MT6397_RTC_SIZE),
+	DEFINE_RES_IRQ(MT6397_IRQ_RTC),
 };
 
 static const struct resource mt6323_keys_resources[] = {
-- 
2.20.1


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
