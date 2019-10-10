Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EC02DD221E
	for <lists+linux-mediatek@lfdr.de>; Thu, 10 Oct 2019 09:50:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=bBkyjbDOM5VH+0BKoPUJH9yhPsgSY5Zcb3iEvYgsKx8=; b=DD18t85N3PD2+n
	SpTQCiwybwbU09xvs8Vgam7oKeS3zqadtozvQKh5TRFnPbyKjNU2XK0lfmC4amwKvGAV527I+Qw9a
	54sDvewtrBko8JwSuA9mAt7Vo/LitCTGTw6H294IHATr1Jzn5MBcOcoxBJ/A1Sdnu+pzxg8C0ix9g
	QqWBSo9709fpkhDNk/1y7RQ8q2oOyJJd8ZI9NaZACq90vKbdcmZy8uo4sJUYLso0CugfQxW84U9gw
	uGZUpy/0qxNZIQBhMmppKDstJ1SrtV83sXtediJrgd10WQArCaHEFa7Hnt7ooFhxMJ3pdK8LQ5XLb
	jPbt58cYDR5RX9QBUDgg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iITDV-00021a-Rb; Thu, 10 Oct 2019 07:50:33 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iITDD-0001j8-UN
 for linux-mediatek@lists.infradead.org; Thu, 10 Oct 2019 07:50:17 +0000
Received: by mail-pf1-x442.google.com with SMTP id v4so3350729pff.6
 for <linux-mediatek@lists.infradead.org>; Thu, 10 Oct 2019 00:50:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=BMwVxKJ5pjT6AAme6CzPathy+GO4sDWlKBre4oI24yA=;
 b=RFG6HwCYSDramAhQi1uVRJXiRCVoJbWbPFfqpgOBrr+ONoYndjuqcaaKVXq5mGam8b
 NZtTefp9ssgMDcOeS44tvnd/S01DBUC/puqu1Pc1WrhMLPuHRw/wlomndD3BsbpSaPGb
 gHUbAX/+u3EKiwTIyQl/RS16LhLTepVBNK6XM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=BMwVxKJ5pjT6AAme6CzPathy+GO4sDWlKBre4oI24yA=;
 b=APgJ9eEoce5oC4Ic3taQIvIzwoSiINGsNHKK7xNfCYq5HQh9eKilNkd/yZuCUFNgIe
 okHIheMlGG4Pf9A6IL1p+j0ILd3fwVKdewsM0La1EbacG4LvbYdFH4sdxW+kydeoeJ4Y
 Y+Gm1vOQtIoQkbk3REWN497iEgIxOBDgKR/2QK1G5JVPIdPVQgRHm3JtjLPzOEfJVvL8
 hrN91zT/XFL1B6pNv24hThPd5eCG4Dlt4/b6PBfueHKX2H7Zwb5y/hG0Z4vEFC2ApCf9
 2i2828DuGPE1b0Bxgt6wCW32ZDo7FV/9AB2YM2UPIhis5z+Vc7NrMZyUZj7qRduWaxKr
 TpTg==
X-Gm-Message-State: APjAAAXlyqry+WbziyyiWH2davAHuZIjlBfUreIrXWaUVYxfIAIm6aBb
 EZ0MYXV7a/ysxTowH9ZVp3xalQ==
X-Google-Smtp-Source: APXvYqyImi2kgnGChUg2KfgfL+4s6k7vSPd2oI6xHbrOyAm/ZcqmRMonHqTVcAChWDBQgIDHwV/S+w==
X-Received: by 2002:a63:4e09:: with SMTP id c9mr9163082pgb.98.1570693812256;
 Thu, 10 Oct 2019 00:50:12 -0700 (PDT)
Received: from tfiga.tok.corp.google.com
 ([2401:fa00:8f:203:f5fe:2a5e:f953:c0ed])
 by smtp.gmail.com with ESMTPSA id 22sm4812489pfj.139.2019.10.10.00.50.08
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 10 Oct 2019 00:50:11 -0700 (PDT)
From: Tomasz Figa <tfiga@chromium.org>
To: linux-usb@vger.kernel.org
Subject: [PATCH] usb: mtk-xhci: Set the XHCI_NO_64BIT_SUPPORT quirk
Date: Thu, 10 Oct 2019 16:50:04 +0900
Message-Id: <20191010075004.192818-1-tfiga@chromium.org>
X-Mailer: git-send-email 2.23.0.581.g78d2f28ef7-goog
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191010_005015_997082_A46E022B 
X-CRM114-Status: GOOD (  12.12  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Nicolas Boichat <drinkcat@chromium.org>,
 Changqi Hu <Changqi.Hu@mediatek.com>, Mathias Nyman <mathias.nyman@intel.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 open list <linux-kernel@vger.kernel.org>, Tomasz Figa <tfiga@chromium.org>,
 Chunfeng Yun <chunfeng.yun@mediatek.com>, Shik Chen <shik@chromium.org>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 "moderated list:ARM/Mediatek SoC support"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

MediaTek XHCI host controller does not support 64-bit addressing despite
the AC64 bit of HCCPARAMS1 register being set. The platform-specific
glue sets the DMA mask to 32 bits on its own, but it has no effect,
because xhci_gen_setup() overrides it according to hardware
capabilities.

Use the XHCI_NO_64BIT_SUPPORT quirk to tell the XHCI core to force
32-bit DMA mask instead.

Signed-off-by: Tomasz Figa <tfiga@chromium.org>
---
 drivers/usb/host/xhci-mtk.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/usb/host/xhci-mtk.c b/drivers/usb/host/xhci-mtk.c
index b18a6baef204a..4d101d52cc11b 100644
--- a/drivers/usb/host/xhci-mtk.c
+++ b/drivers/usb/host/xhci-mtk.c
@@ -395,6 +395,11 @@ static void xhci_mtk_quirks(struct device *dev, struct xhci_hcd *xhci)
 	xhci->quirks |= XHCI_SPURIOUS_SUCCESS;
 	if (mtk->lpm_support)
 		xhci->quirks |= XHCI_LPM_SUPPORT;
+	/*
+	 * MTK host controller does not support 64-bit addressing, despite
+	 * having the AC64 bit of the HCCPARAMS1 register set.
+	 */
+	xhci->quirks |= XHCI_NO_64BIT_SUPPORT;
 }
 
 /* called during probe() after chip reset completes */
@@ -488,11 +493,6 @@ static int xhci_mtk_probe(struct platform_device *pdev)
 		goto disable_clk;
 	}
 
-	/* Initialize dma_mask and coherent_dma_mask to 32-bits */
-	ret = dma_set_mask_and_coherent(dev, DMA_BIT_MASK(32));
-	if (ret)
-		goto disable_clk;
-
 	hcd = usb_create_hcd(driver, dev, dev_name(dev));
 	if (!hcd) {
 		ret = -ENOMEM;
-- 
2.23.0.581.g78d2f28ef7-goog


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
