Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 37DF420108
	for <lists+linux-mediatek@lfdr.de>; Thu, 16 May 2019 10:11:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nJai6nuFPWVEEOEQOPuCxiNzwh0CBU38OuqoJNClSe8=; b=QJqJabR/xw3yv8
	YHHyi6fDKwqEdOYA1A2jk4h+zEsjR1RrP26b/CIgJjpeH1zWVVXCQso1NCVooEAsV5mV5O6Lvd/yr
	Hc1FiUUnFHsj5Pjqa8TLEwrdqJtmxQR2p0NdOgxRBPkaY+uKDjTln1woIYp9HZrDn7HiYwISDzlQP
	rJ29sGpZXfWBYIVpHPHvdV1g80TiBcc3X0/iFRzkho9KjcL/qYC2hrCnxExRboLV2nbGcQjxmxi25
	7bVCVaZqB1RZplYEW45Sg6HTVK6cIJDJHgqNvyonV7f+Ud4WSig1Ola1WBmBpdW1ihr+sS8UFHNnl
	kQJbHU7wRgg2YRp8tyNg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRBUR-0008IR-67; Thu, 16 May 2019 08:11:47 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRBU3-0007p8-Qs; Thu, 16 May 2019 08:11:26 +0000
X-UUID: d4722b311b474a60ae1c2c2e4b479c00-20190516
X-UUID: d4722b311b474a60ae1c2c2e4b479c00-20190516
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw01.mediatek.com
 (envelope-from <chun-hung.wu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1839425121; Thu, 16 May 2019 00:11:17 -0800
Received: from mtkmbs03n1.mediatek.inc (172.21.101.181) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 16 May 2019 01:11:16 -0700
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs03n1.mediatek.inc (172.21.101.181) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 16 May 2019 16:11:14 +0800
Received: from mtkswgap22.mediatek.inc (172.21.77.33) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via
 Frontend Transport; Thu, 16 May 2019 16:11:13 +0800
From: Chun-Hung Wu <chun-hung.wu@mediatek.com>
To: Jonathan Cameron <jic23@kernel.org>, Hartmut Knaack <knaack.h@gmx.de>,
 Lars-Peter Clausen <lars@metafoo.de>, Peter Meerwald-Stadler
 <pmeerw@pmeerw.net>, Rob Herring <robh+dt@kernel.org>, Mark Rutland
 <mark.rutland@arm.com>, Matthias Brugger <matthias.bgg@gmail.com>
Subject: [PATCH 4/4] iio: auxadc: mediatek: change to subsys_initcall
Date: Thu, 16 May 2019 16:10:47 +0800
Message-ID: <1557994247-16739-5-git-send-email-chun-hung.wu@mediatek.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1557994247-16739-1-git-send-email-chun-hung.wu@mediatek.com>
References: <1557994247-16739-1-git-send-email-chun-hung.wu@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190516_011123_876186_180E1A62 
X-CRM114-Status: UNSURE (   8.70  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
X-BeenThere: linux-mediatek@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-mediatek.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-mediatek>, 
 <mailto:linux-mediatek-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-mediatek/>
List-Post: <mailto:linux-mediatek@lists.infradead.org>
List-Help: <mailto:linux-mediatek-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-mediatek>, 
 <mailto:linux-mediatek-request@lists.infradead.org?subject=subscribe>
Cc: devicetree@vger.kernel.org, wsd_upstream@mediatek.com,
 linux-iio@vger.kernel.org, Chun-Hung Wu <chun-hung.wu@mediatek.com>,
 kuohong.wang@mediatek.com, linux-kernel@vger.kernel.org,
 linux-mediatek@lists.infradead.org, peter.wang@mediatek.com,
 jg_poxu@mediatek.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

  Move auxadc platform_driver_register() from module_init
to subsys_initcall because auxadc user drivers
are all moudle drivers, need to gurantee
auxadc driver ready before module_init.

Signed-off-by: Chun-Hung Wu <chun-hung.wu@mediatek.com>
---
 drivers/iio/adc/mt6577_auxadc.c | 14 +++++++++++++-
 1 file changed, 13 insertions(+), 1 deletion(-)

diff --git a/drivers/iio/adc/mt6577_auxadc.c b/drivers/iio/adc/mt6577_auxadc.c
index 58d7cb2..cb8e3dd 100644
--- a/drivers/iio/adc/mt6577_auxadc.c
+++ b/drivers/iio/adc/mt6577_auxadc.c
@@ -350,7 +350,19 @@ static int mt6577_auxadc_remove(struct platform_device *pdev)
 	.probe	= mt6577_auxadc_probe,
 	.remove	= mt6577_auxadc_remove,
 };
-module_platform_driver(mt6577_auxadc_driver);
+
+static int __init mt6577_auxadc_init(void)
+{
+	return platform_driver_register(&mt6577_auxadc_driver);
+}
+
+static void __exit mt6577_auxadc_exit(void)
+{
+	platform_driver_unregister(&mt6577_auxadc_driver);
+}
+
+subsys_initcall(mt6577_auxadc_init);
+module_exit(mt6577_auxadc_exit);
 
 MODULE_AUTHOR("Zhiyong Tao <zhiyong.tao@mediatek.com>");
 MODULE_DESCRIPTION("MTK AUXADC Device Driver");
-- 
1.9.1


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
