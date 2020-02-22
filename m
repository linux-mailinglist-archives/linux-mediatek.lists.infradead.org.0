Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C8C9168F3C
	for <lists+linux-mediatek@lfdr.de>; Sat, 22 Feb 2020 14:54:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=JCF1waZ+1fDNaMaCTm3D1HwS6GurOZq71l38NzDN2mc=; b=nWsh0mA0/bHaMg
	0Y9SH0cBhymwcNnNGBdg3E6GUySYLjtR9TBF9M3L/O90zn9gQ41LcpQkHeRP7yc2JOj1sktDBA11/
	SyE7nqoeEnj7pd4Ums3bFhN9qx0d/Atn6HTBtyff+SZSGiL3WCQAVBByagSx7EXiqHPK/khhcZrbk
	4lJqvbdYDxO1a2RmMfjPYkHbFzUGMHqmcmO1nw6RDyJgjThA4h7m9Hl0ft6MHmRp+SNLCK/SLTuvf
	WO5WKIr5Y+YCVJOTSij0dGDwOkGtgGzPU3oruhzZqmZLooigEq3Xi5YbbKBn3DOzmIT65U6m2+ypu
	p9IJ4gE8F0cCXth88C9Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j5VEr-0005Hw-EN; Sat, 22 Feb 2020 13:54:37 +0000
Received: from youngberry.canonical.com ([91.189.89.112])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j5VEh-0004rd-4M; Sat, 22 Feb 2020 13:54:28 +0000
Received: from 1.general.cking.uk.vpn ([10.172.193.212] helo=localhost)
 by youngberry.canonical.com with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.86_2)
 (envelope-from <colin.king@canonical.com>)
 id 1j5VEb-0001Ce-26; Sat, 22 Feb 2020 13:54:21 +0000
From: Colin King <colin.king@canonical.com>
To: Bin Liu <b-liu@ti.com>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Matthias Brugger <matthias.bgg@gmail.com>, linux-usb@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org
Subject: [PATCH] usb: musb: remove redundant assignment to variable ret
Date: Sat, 22 Feb 2020 13:54:20 +0000
Message-Id: <20200222135420.135692-1-colin.king@canonical.com>
X-Mailer: git-send-email 2.25.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200222_055427_308711_F841ECA2 
X-CRM114-Status: UNSURE (   9.35  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [91.189.89.112 listed in wl.mailspike.net]
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [91.189.89.112 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: kernel-janitors@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

From: Colin Ian King <colin.king@canonical.com>

Variable ret is being initialized with a value that is never read,
it is assigned a new value later on. The assignment is redundant
and can be removed.

Addresses-Coverity: ("Unused value")
Signed-off-by: Colin Ian King <colin.king@canonical.com>
---
 drivers/usb/musb/mediatek.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/usb/musb/mediatek.c b/drivers/usb/musb/mediatek.c
index 6b88c2f5d970..6af3a346d4ce 100644
--- a/drivers/usb/musb/mediatek.c
+++ b/drivers/usb/musb/mediatek.c
@@ -444,7 +444,7 @@ static int mtk_musb_probe(struct platform_device *pdev)
 	struct platform_device_info pinfo;
 	struct device *dev = &pdev->dev;
 	struct device_node *np = dev->of_node;
-	int ret = -ENOMEM;
+	int ret;
 
 	glue = devm_kzalloc(dev, sizeof(*glue), GFP_KERNEL);
 	if (!glue)
-- 
2.25.0


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
