Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C9BF81DE653
	for <lists+linux-mediatek@lfdr.de>; Fri, 22 May 2020 14:09:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CUOSFI1Jbzr+jmbUc0xhz77QkQfLUnVNZzPFu+68cHY=; b=cO2rVHNoBLO39i
	iSSE25sDenJkAOy6qKWXGDPsO1KY5OtulANTQDLYfz3TXze8kyn7B3X/igCau0cnp331ChwJlJKZ2
	WrRl5BcLMzvsuu6KfJQdR7YIL6O85cQ27JETKPDS5OMt6/4X8pebAFodK6bos1q9B/zA4LzoC4NI1
	+mkNVplLd9itB3XB6e1Hgs93tmRRjqhbRi574D9k35vONzuVe5V8T/NOSWO+bEIpDREXl5TrTPKE1
	9CHSXTbgX/mDO5jfQj5RDvBGI+gOtQycxDdudafrUTjTAF6AfJ6UvxhiwTnDq9R/lMadJBlNet7Zc
	V/hCwsrRqwFltA5kQFOw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jc6UB-0004o3-JM; Fri, 22 May 2020 12:09:11 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jc6SW-0003JG-Bu
 for linux-mediatek@lists.infradead.org; Fri, 22 May 2020 12:07:30 +0000
Received: by mail-wm1-x342.google.com with SMTP id u12so4786290wmd.3
 for <linux-mediatek@lists.infradead.org>; Fri, 22 May 2020 05:07:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=bgdev-pl.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=hGk6SHkwZ0/IFFGnE1iOAP01F59WjRCQF/3H+v3exE4=;
 b=BJ3OIkLmKDJd8mJGXMOAEO0RYtZ+BzOIsHcG2UTpazbPreZ6uDY2fuZCBNsWnHPZjT
 xuescNUhGBE8SFaTTfNfcabLq8y2VIiMaEMMogTnG1fWAg7mF5jI42aIffPUTPA+iePW
 H1+GJn6TtGrfuwlTv2N2j+z+8FJe8t5Tkty0XiPLO8fEfBDLOX5xVk8vM2bkcyuYUIiG
 6s5XAFWCd8aPysT8MuuczJuWiSYnGUnSFXTw1UdujFdRbRa6bEVoWEbUCrd77lm4pXBG
 BJzOUC0xV1s37znu6SdHGwFgX+Imn6MDlvjRUTS+1uVNKUo0q6QE4VM7f6spU26/iS3X
 hWww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=hGk6SHkwZ0/IFFGnE1iOAP01F59WjRCQF/3H+v3exE4=;
 b=qTp447/NMVwINsbKiFt34nk3JBGDWVvHX08OK5tAgTUbe3AS4gykiSkVSj2SYC8hiJ
 rxX9SX3eE4DAQEKgquF0KJwzFJYpvZ9MELUeAav3BMOeHt9WoSvZJgjxGexE9fr8Oni0
 0kiloP6orl/x92tLUE6r/20wczoqoej4c+xe8FT2XA1cn3lRqtVZepXeNQ+zcMt3P8Pt
 KYI5kuszDs6j2lesb/De6e+ItjMo4GUYLDfHIBIM4yvocRyW0w5TdUtEDNQbGXqNNj4E
 zVdSSO3LgZEBZB4iI6/DX6AbofpEd9BrDqheGP6GYqyRl2t298NxWG6zwRxxns9Z8ikj
 ntRA==
X-Gm-Message-State: AOAM530wy+5sGXfG6qPoSh44nIXHEgjagsEA3FEhoft+kezEiNexx8/z
 W259sUDQNBV6YBoP+CwMd1dDww==
X-Google-Smtp-Source: ABdhPJzPM9n4wz+olrOocFVpzas4NvH7xuF1o9DtfGChG8Sh1pIB0aDKJyKMN7cmRko0riD9kvETNg==
X-Received: by 2002:a05:600c:2146:: with SMTP id
 v6mr13654376wml.142.1590149246036; 
 Fri, 22 May 2020 05:07:26 -0700 (PDT)
Received: from localhost.localdomain (lfbn-nic-1-65-232.w2-15.abo.wanadoo.fr.
 [2.15.156.232])
 by smtp.gmail.com with ESMTPSA id f128sm9946233wme.1.2020.05.22.05.07.24
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 22 May 2020 05:07:25 -0700 (PDT)
From: Bartosz Golaszewski <brgl@bgdev.pl>
To: Rob Herring <robh+dt@kernel.org>, "David S . Miller" <davem@davemloft.net>,
 Matthias Brugger <matthias.bgg@gmail.com>, John Crispin <john@phrozen.org>,
 Sean Wang <sean.wang@mediatek.com>, Mark Lee <Mark-MC.Lee@mediatek.com>,
 Jakub Kicinski <kuba@kernel.org>, Arnd Bergmann <arnd@arndb.de>,
 Fabien Parent <fparent@baylibre.com>,
 Heiner Kallweit <hkallweit1@gmail.com>,
 Edwin Peer <edwin.peer@broadcom.com>
Subject: [PATCH v5 04/11] net: ethernet: mediatek: rename Kconfig prompt
Date: Fri, 22 May 2020 14:06:53 +0200
Message-Id: <20200522120700.838-5-brgl@bgdev.pl>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200522120700.838-1-brgl@bgdev.pl>
References: <20200522120700.838-1-brgl@bgdev.pl>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200522_050728_459595_3B28B1DD 
X-CRM114-Status: GOOD (  10.26  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
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
Cc: devicetree@vger.kernel.org,
 Stephane Le Provost <stephane.leprovost@mediatek.com>, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 linux-mediatek@lists.infradead.org,
 Andrew Perepech <andrew.perepech@mediatek.com>,
 Pedro Tsai <pedro.tsai@mediatek.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

From: Bartosz Golaszewski <bgolaszewski@baylibre.com>

We'll soon by adding a second MediaTek Ethernet driver so modify the
Kconfig prompt.

Signed-off-by: Bartosz Golaszewski <bgolaszewski@baylibre.com>
---
 drivers/net/ethernet/mediatek/Kconfig | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/mediatek/Kconfig b/drivers/net/ethernet/mediatek/Kconfig
index 4968352ba188..5079b8090f16 100644
--- a/drivers/net/ethernet/mediatek/Kconfig
+++ b/drivers/net/ethernet/mediatek/Kconfig
@@ -1,6 +1,6 @@
 # SPDX-License-Identifier: GPL-2.0-only
 config NET_VENDOR_MEDIATEK
-	bool "MediaTek ethernet driver"
+	bool "MediaTek devices"
 	depends on ARCH_MEDIATEK || SOC_MT7621 || SOC_MT7620
 	---help---
 	  If you have a Mediatek SoC with ethernet, say Y.
-- 
2.25.0


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
