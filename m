Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FF3C1D296F
	for <lists+linux-mediatek@lfdr.de>; Thu, 14 May 2020 10:02:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CUOSFI1Jbzr+jmbUc0xhz77QkQfLUnVNZzPFu+68cHY=; b=DbELmeTl9+MtAZ
	j2Ldk+zvI9tKeigRIVyBAMAJJmt98fnaxnTEQaQrq8FEWeqWq+RKNahCamOgi7GpFX7eMb9GOqfNi
	EMypGd0usk/yIZZes7f/ww3BsbXPd8Vn0nXSVaJ9pGSfoXr2qiIe0GHGamjQLX9vjePE7pMDG7Xeh
	QQtyfMkDp7m8pL+GooA/KKxd8sauhlLkvU59mtATZ2EmmtJDmnlFj/xrP8MtSk6gbxFu1wxUJf97g
	FKRTlPYb7SPOfnjlgyXFEtZH+Ne/qgwXtc/DvIXU+KMGOw+UfpjHSEdaxyZF9R1/Kbs7ye5+qNDgb
	52fsviodWtOV3ijQpPXw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZ8oS-0005Ik-Rc; Thu, 14 May 2020 08:01:52 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZ8mq-0003KL-8S
 for linux-mediatek@lists.infradead.org; Thu, 14 May 2020 08:00:14 +0000
Received: by mail-wm1-x343.google.com with SMTP id y24so31347104wma.4
 for <linux-mediatek@lists.infradead.org>; Thu, 14 May 2020 01:00:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=bgdev-pl.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=hGk6SHkwZ0/IFFGnE1iOAP01F59WjRCQF/3H+v3exE4=;
 b=sy1VaUH34NUebXKcvazHWXxPF3ogvwlwIUiwdr//8TZImO1DzPnfHcTTZcIhBS2t/I
 Qtz3nDiCiZ5pQS4wSr6e0/W22c8uNiAYlEeHd8fIYxiJiPKBfex5hi0ce7n8Fhr0+9wa
 AbBd8vdDewHJDp4jNw8kHPOel9OBU2sY66VvLM5e4uEu6Gm8EdeBBbtGWKRQRCiVZ1uE
 06unoy6QL1YcMQtVm38WtgYVV2to6HPRNnV1qZTXU7IICbxebW47wE4iLEHHDatV3H3K
 6bBJXYtxb0k3v4LtjawRCa9xGcftkVmdzRZMERNYGj2uveFxL+9fwRDpzPprIiY5/R2M
 9fTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=hGk6SHkwZ0/IFFGnE1iOAP01F59WjRCQF/3H+v3exE4=;
 b=d8q0aJ6wbNP8ljgNRJA5QC8zFrsCcaHZ2WT69Dfk0WNpjZB+dzy1nA4O0yVpSa4IAx
 DujDs/LFQ+9xxpN5ZIWEB53URJDSGlrggBw1z3M3WFRL/Z1ICDbaWd4Xd1p4DfzfwQfd
 2E20D3cvjk5CUDhTcBjQUyc+E+cZqy357GC1VWugxJAJUTRKD25pnT1gywzQJMjjjqQo
 QEmhG5gsLaT6HHJ6VKDmCnwAs30aDv/0PkUpyucdHB5dbN5Sq/DHl7Qyc44gdKpp9Vc0
 g1QD+kwgUpeak4eHreoDYi02Ap8m1fynUIHMZMAKRZYoSiODthdWHP8E4k+au+xBDj2/
 1Tqg==
X-Gm-Message-State: AGi0PuZYplNfaFCIxWqPzo0cTSRZZPwXJjS0C+HUvOGLedbDR2+5w2nS
 7fOp1p48i37JHX6SUBCpkUsk+A==
X-Google-Smtp-Source: APiQypKTmELbtmt9F3Y+bsG9moFkBY9H/xGDo99tpE05kdW0Y8evm2kVDCSS/WwL66naHiCax7tGDA==
X-Received: by 2002:a1c:3281:: with SMTP id y123mr47408066wmy.30.1589443210396; 
 Thu, 14 May 2020 01:00:10 -0700 (PDT)
Received: from localhost.localdomain (lfbn-nic-1-65-232.w2-15.abo.wanadoo.fr.
 [2.15.156.232])
 by smtp.gmail.com with ESMTPSA id 81sm23337446wme.16.2020.05.14.01.00.09
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 14 May 2020 01:00:09 -0700 (PDT)
From: Bartosz Golaszewski <brgl@bgdev.pl>
To: Jonathan Corbet <corbet@lwn.net>, Rob Herring <robh+dt@kernel.org>,
 "David S . Miller" <davem@davemloft.net>,
 Matthias Brugger <matthias.bgg@gmail.com>, John Crispin <john@phrozen.org>,
 Sean Wang <sean.wang@mediatek.com>, Mark Lee <Mark-MC.Lee@mediatek.com>,
 Jakub Kicinski <kuba@kernel.org>, Arnd Bergmann <arnd@arndb.de>,
 Fabien Parent <fparent@baylibre.com>,
 Heiner Kallweit <hkallweit1@gmail.com>,
 Edwin Peer <edwin.peer@broadcom.com>
Subject: [PATCH v3 04/15] net: ethernet: mediatek: rename Kconfig prompt
Date: Thu, 14 May 2020 09:59:31 +0200
Message-Id: <20200514075942.10136-5-brgl@bgdev.pl>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200514075942.10136-1-brgl@bgdev.pl>
References: <20200514075942.10136-1-brgl@bgdev.pl>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200514_010012_391988_18ACCF59 
X-CRM114-Status: GOOD (  10.93  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
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
