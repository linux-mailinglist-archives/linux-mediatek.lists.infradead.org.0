Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CB0F1E6100
	for <lists+linux-mediatek@lfdr.de>; Thu, 28 May 2020 14:36:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=guk6/evxHAJcOzByVLCBsIV28OkuQHHd8XrDYE9srXU=; b=TYAXeA4e0tAmFv
	/colAeR4rfW+woiG1Apz2N6BzFMBwm5lAIZ9ySEkhrz9QgOa6jrdQHTeEy6Gp3EO3ZwzaiXmbS6JE
	xkOZ6FdWNtDO4v+qQzJDUwDxiKgezqtjrpRJpfbznKCzEjn7MEIxLrq1Gk2g0OnxPIJLQwFIJPeF3
	K8TxM9IY0rrry4KvvVB+PA//m2ZbsGvw3m2RKx6m536XylOuIwh0lW1M5VV8aKjZd2plyqCxyCrVj
	ueKNA45HCaS6DeZtLXj/3/ZxLwGOroQWE1LH9VvLI0KP4y6T59E/LKANoR+V2fHZg2zpAWfNzbG1e
	cv5ocX2zlvHCXtimGBGA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeHlK-00083z-P9; Thu, 28 May 2020 12:35:54 +0000
Received: from mail-wm1-f67.google.com ([209.85.128.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeHkj-0007kW-9V
 for linux-mediatek@lists.infradead.org; Thu, 28 May 2020 12:35:21 +0000
Received: by mail-wm1-f67.google.com with SMTP id v19so2981838wmj.0
 for <linux-mediatek@lists.infradead.org>; Thu, 28 May 2020 05:35:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=bgdev-pl.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=yDSm1rPPo/8bMFb7LxsC5JFRiypy8MuySa2sX9QoT6k=;
 b=zodKNRyGTNg5KwqVWbLILj8EVpRQ43j6yVRyfaj1XFuodos5q4ztpHt6BwxCRnMjNj
 NTTiJhdaDCdWk/EFdPe+sPBf9p1nqeIsAHR6SYtD5sJnrOQ5/yrGkHqB7VoLrSNNMZvB
 BbOHzyM3Ob8NxF9JrEtovxhOh7kEAlYHpw3RshZ9G6iUfgBIaftV5iVMnumDsl2MHC45
 /xZ5h0k3mu9osvUv7kq6Q2uoEeTjI5Xf0Bf8HUgmq8jzuRVtjMo3iqhZgPHgUx8Kunc9
 EHswAWcH0gwFiqxp3J/8+la0Oz33xbUZOHwzQ27wt3sN0qBvXvUMVv0uR6pCNEpzYQ+q
 4cNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=yDSm1rPPo/8bMFb7LxsC5JFRiypy8MuySa2sX9QoT6k=;
 b=Ovxcb9BLapSfxAP3FR/rEqcy2qdoJRgA1mHFRkZjmbnzVl5AUe+MMDjc1cZYvexaLJ
 ijfzSVZpQnKCdlaJxYYMCTwxW7IHWehTQJYhDxD5o95khY6pCS3cTGjUX74ahr58+CsK
 464muyyhlirtJqh6yst3BiRZ61JSo+/hvUNmTWHDiI43IdQMx8PuIBKPZ5gezaUjutGo
 mOe9hYDW/Ui4MYLJ6bgo7RWBY/JOT923sSs+2fUt5UDQjCA7xf8tscUzmsrrJ7IiS5rA
 9q28qY+ugZpmWfz6ptj/9jK5ItEukirRI710GZlS3ohX271Fp4k5PeBeOefB0vFFSM0V
 /m9g==
X-Gm-Message-State: AOAM5304N3d9QSykgz6QVxwp9/juhP+UJyXhHt/JfRFaH0iQqQxSbQ7i
 Uo+mCSD7rfx44asUR8yBX/hR2Q==
X-Google-Smtp-Source: ABdhPJzo7HKPky+eiHqC/4RzI4UkiT25uBdmy1Qy7IDl9itDPpLuRbDcwrzxzj4u0gG1VZdg4XRYgA==
X-Received: by 2002:a1c:dfd7:: with SMTP id w206mr3156200wmg.130.1590669312286; 
 Thu, 28 May 2020 05:35:12 -0700 (PDT)
Received: from localhost.localdomain (lfbn-nic-1-65-232.w2-15.abo.wanadoo.fr.
 [2.15.156.232])
 by smtp.gmail.com with ESMTPSA id c140sm6027306wmd.18.2020.05.28.05.35.11
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 28 May 2020 05:35:11 -0700 (PDT)
From: Bartosz Golaszewski <brgl@bgdev.pl>
To: John Crispin <john@phrozen.org>, Sean Wang <sean.wang@mediatek.com>,
 Mark Lee <Mark-MC.Lee@mediatek.com>,
 "David S . Miller" <davem@davemloft.net>, Jakub Kicinski <kuba@kernel.org>,
 Matthias Brugger <matthias.bgg@gmail.com>, Mark Brown <broonie@kernel.org>
Subject: [PATCH 1/2] regmap: provide helpers for simple bit operations
Date: Thu, 28 May 2020 14:34:58 +0200
Message-Id: <20200528123459.21168-2-brgl@bgdev.pl>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200528123459.21168-1-brgl@bgdev.pl>
References: <20200528123459.21168-1-brgl@bgdev.pl>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200528_053517_429828_BAC40BF2 
X-CRM114-Status: UNSURE (   9.59  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.128.67 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.128.67 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Stephane Le Provost <stephane.leprovost@mediatek.com>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, Fabien Parent <fparent@baylibre.com>,
 linux-mediatek@lists.infradead.org,
 Andrew Perepech <andrew.perepech@mediatek.com>,
 Pedro Tsai <pedro.tsai@mediatek.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

From: Bartosz Golaszewski <bgolaszewski@baylibre.com>

In many instances regmap_update_bits() is used for simple bit setting
and clearing. In these cases the last argument is redundant and we can
hide it with a macro.

This adds three new macros for simple bit operations: set_bits,
clear_bits and test_bits.

Signed-off-by: Bartosz Golaszewski <bgolaszewski@baylibre.com>
---
 include/linux/regmap.h | 18 ++++++++++++++++++
 1 file changed, 18 insertions(+)

diff --git a/include/linux/regmap.h b/include/linux/regmap.h
index 40b07168fd8e..6ef829169f36 100644
--- a/include/linux/regmap.h
+++ b/include/linux/regmap.h
@@ -71,6 +71,24 @@ struct reg_sequence {
 	unsigned int delay_us;
 };
 
+#define regmap_set_bits(map, reg, bits) \
+	regmap_update_bits_base(map, reg, bits, bits, NULL, false, false)
+#define regmap_clear_bits(map, reg, bits) \
+	regmap_update_bits_base(map, reg, bits, 0, NULL, false, false)
+/*
+ * Returns -1 if the underlying regmap_read() fails, 0 if at least one of the
+ * tested bits is not set and 1 if all tested bits are set.
+ */
+#define regmap_test_bits(map, reg, bits) \
+({ \
+	unsigned int __val, __ret, __bits; \
+	__bits = (bits); \
+	__ret = regmap_read(map, reg, &__val); \
+	if (__ret == 0) \
+		__ret = (__val & __bits) == __bits ? 1 : 0; \
+	__ret; \
+})
+
 #define	regmap_update_bits(map, reg, mask, val) \
 	regmap_update_bits_base(map, reg, mask, val, NULL, false, false)
 #define	regmap_update_bits_async(map, reg, mask, val)\
-- 
2.25.0


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
