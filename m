Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CA3481C5808
	for <lists+linux-mediatek@lfdr.de>; Tue,  5 May 2020 16:05:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CUOSFI1Jbzr+jmbUc0xhz77QkQfLUnVNZzPFu+68cHY=; b=XMWgjOOcrn4Ypb
	kczuOMKpFIE53rt8tJy1zErPBI4Q/3z/UPig1SX6lrE2Fjl7arSP6/UzzrH49BJUPX2gYdUQYtisS
	jtqHRFAY3dY/i2idJiOxVKUkh3WWaTvTtxTnH/O3nBOKMPKuYVJyoGvtan7feT/C8H5RzeQaIZgYs
	fQvVlbKULmOCGWMfMYbD7BJf57rO1uxaJx/EK0++oC4Be+w1HwXt0OjvEkNvCexOikefILWsaeLWP
	DHitn/9o8IScjz3DKmb3KcOO9NNg3rXBy7SLgv5km4K8jNaMeS8ew1GKv07eF7KhO9zHlQd0r5+Z0
	P5dtmtMFRW0q0yIxtUDA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVyC4-0004CM-BY; Tue, 05 May 2020 14:05:08 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVyAE-0002FZ-N6
 for linux-mediatek@lists.infradead.org; Tue, 05 May 2020 14:03:16 +0000
Received: by mail-wr1-x443.google.com with SMTP id x17so2907417wrt.5
 for <linux-mediatek@lists.infradead.org>; Tue, 05 May 2020 07:03:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=bgdev-pl.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=hGk6SHkwZ0/IFFGnE1iOAP01F59WjRCQF/3H+v3exE4=;
 b=kvPVV59bLwvQgCRXMMdalhwBGJXiNTAb3RXUaXffdzF/CnPAYnbZfbo5XFRy/U6Hmn
 UYDrC8U2QoSOzSL6kGoZRN+trWItJsZE5rzGhy9yuYPhWqlj27+0bcwhKKCOlWh3BJTz
 l98EqUfia2miyFfDeTxIe2M54ZAExtU1gQ4zySphZmhTJmKHOCSN/LRtVxgdZyy0jInD
 wO02lzvY3Qbg7bm454+9uzwwhlluP7XjN3Ti461uWWCrAgdX/Yj4Iw4pSLlI3+6vKsfZ
 1RqRrgrWqUsGXLeFN6IFuiLJoSlwRD/aG0+tqgvGYmGcLsB9nQQPQtqFBO1K/kBh/rYb
 XAEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=hGk6SHkwZ0/IFFGnE1iOAP01F59WjRCQF/3H+v3exE4=;
 b=hmRe4S2I7fPM8BEoFbZaD1OlJw/OMwJFZ9Sfmpa4H3S87UKWLQBNAT81qPNf1eo9b5
 8nvjx6csU2ns2zDCOO7raNgAy1sIw+H8Vhel7odTRYlpjZ1OXYr32dMfgnIpzxKf+g8/
 kMf5/cXYoHN91Xjp6O7lSDyA/iCth4UHMVd0MlgboP7KwKUXfLVuy+u1a7GkVC1F7o6P
 /Uc7ZFN5cC5+DlIykf7CtW6OQkyDyWfTNjC+lHNO8mJbzEyhvzin2I1MtsWX1FXzKycf
 IF6K6j3SFqck6tshlCGhE3Gv35+4hsaJxwRiMWykO5n/QTERuMJteJY1PNMNqUZHYkZn
 RMWw==
X-Gm-Message-State: AGi0PuZuRtDobsrFwWlTHYhtgiyKpaaNC1HqqXt9EKrmgq/DKqqP1d6X
 k5bCBTeWeR5INssjo1+fcOYb1A==
X-Google-Smtp-Source: APiQypIPk6Gmfh+TOm1lNpI6ui+UW11cc/DzL7lShUJ6Uv4UPglvQgiExWM6SHeIDM9Wlw/jZVJSDQ==
X-Received: by 2002:adf:8169:: with SMTP id 96mr3846446wrm.283.1588687388304; 
 Tue, 05 May 2020 07:03:08 -0700 (PDT)
Received: from localhost.localdomain (lfbn-nic-1-65-232.w2-15.abo.wanadoo.fr.
 [2.15.156.232])
 by smtp.gmail.com with ESMTPSA id c190sm4075755wme.4.2020.05.05.07.03.07
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 05 May 2020 07:03:07 -0700 (PDT)
From: Bartosz Golaszewski <brgl@bgdev.pl>
To: Rob Herring <robh+dt@kernel.org>, "David S . Miller" <davem@davemloft.net>,
 Matthias Brugger <matthias.bgg@gmail.com>, Felix Fietkau <nbd@openwrt.org>,
 John Crispin <john@phrozen.org>, Sean Wang <sean.wang@mediatek.com>,
 Mark Lee <Mark-MC.Lee@mediatek.com>, Jakub Kicinski <kuba@kernel.org>,
 Arnd Bergmann <arnd@arndb.de>, Fabien Parent <fparent@baylibre.com>
Subject: [PATCH 03/11] net: ethernet: mediatek: rename Kconfig prompt
Date: Tue,  5 May 2020 16:02:23 +0200
Message-Id: <20200505140231.16600-4-brgl@bgdev.pl>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200505140231.16600-1-brgl@bgdev.pl>
References: <20200505140231.16600-1-brgl@bgdev.pl>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200505_070314_761027_EC42EC1B 
X-CRM114-Status: GOOD (  10.28  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 linux-mediatek@lists.infradead.org, linux-arm-kernel@lists.infradead.org
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
