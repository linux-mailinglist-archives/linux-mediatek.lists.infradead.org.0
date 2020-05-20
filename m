Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 26F6F1DB1A9
	for <lists+linux-mediatek@lfdr.de>; Wed, 20 May 2020 13:27:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CUOSFI1Jbzr+jmbUc0xhz77QkQfLUnVNZzPFu+68cHY=; b=Tx/1Wfy9pV+bbN
	93ZVmMbHbqI2yYFHCUQVbMbjZRYQr4bzfPVtphNACNgBA77V45vYuOIHOAQ0QS0z4NTdSne89XefH
	bd2pfoGI975s2FLvKua2gEH5oJTOlZEyo8/kZsDLkOCHGsq6rLSCZQ0/R5SfpGquElXuZOGMYRmmy
	F6y2xZNtTU2mbf5oYQBpVs4lFgRaPCyoZuh3hymBbw7eXEdQqKPo+VPCtuigsay8qhjdYLuTg9wLF
	nVAcagH1hukP2vmzj8Y5eMnevBjDviF4bPSZF4ekDvhzyg32QF8qRZULfRO0pdHi3pobjEB9VmeuI
	jUy4gWmoWIAyqSXsszVQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbMsc-0008Kc-S0; Wed, 20 May 2020 11:27:22 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbMqw-0006v8-RQ
 for linux-mediatek@lists.infradead.org; Wed, 20 May 2020 11:25:40 +0000
Received: by mail-wr1-x444.google.com with SMTP id s8so2730212wrt.9
 for <linux-mediatek@lists.infradead.org>; Wed, 20 May 2020 04:25:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=bgdev-pl.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=hGk6SHkwZ0/IFFGnE1iOAP01F59WjRCQF/3H+v3exE4=;
 b=1u1GCCM5c2bb6qe8/N+8q+djj3EHhrgKlG/lCEqSBMbFDOv7cQzuicnqTk22ujLZQy
 XOYPOEuTzeKhoYE02Lkd9aWAYQ2h1yx2ieqL21zBzokQqE5kxB5HjTKsiP36oSzvpEJH
 ffn/2YDsVdgjkZTdQY0NV+IN5rZ10d7VOBYfLqFF/K6J7Ae7qR5jIqeyN23WPXOZwoDl
 0hOl7ks9rQkTYmlrNpkx2U/kuhA8YJWIqwnGfeIXJZ48kChLVMF/yL1KbFO9HTiB/htH
 SFCG4OXKsl1FInWE0Q3VDWBkVRTcIJIExlxnygAuBOXjyz6wlJ41PGSP9LTTQDmaQusR
 yPbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=hGk6SHkwZ0/IFFGnE1iOAP01F59WjRCQF/3H+v3exE4=;
 b=r2GqAnlZUCsplzBAgAWhbuDHxb2F1ihP5V5YwMlB8PpJBdh1VvPohXW3pfb96skGX0
 nX4SGQCksP/1VfVjoAepP4uRO/l/tSWTyZCf1z/hkxg6rH7uwr5s+m9Q4qKNoQPreodw
 0IkWsPrMuV1IWo33XSFSnPVx/E1Kc7uSUlUna/bNpW95Po+u60djfVxKgrSihG4exKAo
 8NxfykzPYY9gNbh0GsDN8xNdVXdlmZBrmholsto8dYtk9VoQ9SY6PHYO8J3WL7wDIn4w
 KsTqjfBslHRyDx5090Ns0J1bAbZ6BY1Uqm2VOAmmD9YZfuNKQKkpzZM1Fqqo2Ljo9BD/
 bpWA==
X-Gm-Message-State: AOAM532k4xEeqWJVcISlZoOC3XK5/mEpG0cXRyaaE1fnlT/l7aYnh8kv
 OqGjpdiJV+Eop8Tatc1gCaBuTQ==
X-Google-Smtp-Source: ABdhPJwPv1ax+P99yWCKiaCy0kws5G6OxIcHrZdun4qt8M4YjOs6PnOFsrTm5BaB+LGdlSH65WIKPw==
X-Received: by 2002:adf:dcc8:: with SMTP id x8mr3742481wrm.404.1589973937274; 
 Wed, 20 May 2020 04:25:37 -0700 (PDT)
Received: from localhost.localdomain (lfbn-nic-1-65-232.w2-15.abo.wanadoo.fr.
 [2.15.156.232])
 by smtp.gmail.com with ESMTPSA id v22sm2729265wml.21.2020.05.20.04.25.36
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 20 May 2020 04:25:36 -0700 (PDT)
From: Bartosz Golaszewski <brgl@bgdev.pl>
To: Rob Herring <robh+dt@kernel.org>, "David S . Miller" <davem@davemloft.net>,
 Matthias Brugger <matthias.bgg@gmail.com>, John Crispin <john@phrozen.org>,
 Sean Wang <sean.wang@mediatek.com>, Mark Lee <Mark-MC.Lee@mediatek.com>,
 Jakub Kicinski <kuba@kernel.org>, Arnd Bergmann <arnd@arndb.de>,
 Fabien Parent <fparent@baylibre.com>,
 Heiner Kallweit <hkallweit1@gmail.com>,
 Edwin Peer <edwin.peer@broadcom.com>
Subject: [PATCH v4 04/11] net: ethernet: mediatek: rename Kconfig prompt
Date: Wed, 20 May 2020 13:25:16 +0200
Message-Id: <20200520112523.30995-5-brgl@bgdev.pl>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200520112523.30995-1-brgl@bgdev.pl>
References: <20200520112523.30995-1-brgl@bgdev.pl>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200520_042538_903200_8EE409D3 
X-CRM114-Status: GOOD (  10.56  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
