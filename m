Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C4B7836F9
	for <lists+linux-mediatek@lfdr.de>; Tue,  6 Aug 2019 18:30:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=omlfWOOwfgNUAP+JamZ+lpkWFMKnNoS4svgUJnLa8c0=; b=UQaEmTG4rHHlyYCX+ztbWwWvtI
	rlc6Ox1Og4+QgzPRdhC62MxMRQn7MBfPXIp1un4Jo2wjFczllznXHaVy+Qo0h7+1lyqHTs9aYCwnt
	9K72VLODQUlhCJFqGKxsjRyVGYGJMTxwyp3queX8a4EBdeIQ3xT1iWdUtiVyZfMxJf955hd1+pX4g
	gy+cdhcS07/GQ2jTBVIhQ+wnhAP4mRInaA4oQBwgM/BHX1pMNUTvcu6jVOF1iTLhmX3efd0GTG16s
	RD95rMQ1/M0w2n10eLKzo0dWiJp8zXnlW4syI051jmOlNeBR7886PcCqBCr1rbSboP7+I0toeHt04
	XOYZC1oA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hv2MA-0003hX-FJ; Tue, 06 Aug 2019 16:30:38 +0000
Received: from mout.gmx.net ([212.227.17.22])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hv2KT-0000TN-IS; Tue, 06 Aug 2019 16:28:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1565108892;
 bh=3PISsFhP2p4tj5ULA7y6xFGMEsiPJROECIygBRA4/zw=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:References;
 b=T0iVRuoT39ebTrgaB4OPmg8iKCMVi7occ3T/FDP4lznR919TIUhhex3qNkfFO/XJD
 JB6x5QXGcc2Z6dMM/2LvbOOXTTMb4Cf/Dt0uU3pTZBAWBzxa2c+kwIn/aHF02ERY+i
 RXrbehwbzB2PTGqqOMRELCEwuNmrVkUTeHdIiz1s=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from localhost.localdomain ([217.61.153.94]) by mail.gmx.com
 (mrgmx103 [212.227.17.168]) with ESMTPSA (Nemesis) id
 0M1nOg-1iAuD01Mxm-00tlSl; Tue, 06 Aug 2019 18:28:12 +0200
From: Frank Wunderlich <frank-w@public-files.de>
To: Alessandro Zummo <a.zummo@towertech.it>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Allison Randal <allison@lohutok.net>,
 "David S. Miller" <davem@davemloft.net>, devicetree@vger.kernel.org,
 Eddie Huang <eddie.huang@mediatek.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Jonathan Cameron <Jonathan.Cameron@huawei.com>,
 Kate Stewart <kstewart@linuxfoundation.org>,
 Lee Jones <lee.jones@linaro.org>, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-mediatek@lists.infradead.org,
 linux-pm@vger.kernel.org, linux-rtc@vger.kernel.org,
 Mark Rutland <mark.rutland@arm.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 Nicolas Ferre <nicolas.ferre@microchip.com>,
 Richard Fontana <rfontana@redhat.com>, Rob Herring <robh+dt@kernel.org>,
 Sean Wang <sean.wang@mediatek.com>, Sebastian Reichel <sre@kernel.org>,
 Thomas Gleixner <tglx@linutronix.de>,
 "Tianping . Fang" <tianping.fang@mediatek.com>
Subject: [PATCH v4 06/10] rtc: mt6397: add compatible for mt6323
Date: Tue,  6 Aug 2019 18:27:41 +0200
Message-Id: <20190806162745.8414-7-frank-w@public-files.de>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190806162745.8414-1-frank-w@public-files.de>
References: <20190806162745.8414-1-frank-w@public-files.de>
X-Provags-ID: V03:K1:DIhRHK2hht0aS3gGjUBdMit/fe5lr9+ny2VtU0f6VLpF4RgJt8C
 Ny5zDjYzK3kf7a1hq2zGlC6rBLjIORmId4UnzIKKaj3aDh+S033M7zD5wxBBv7c9usz0me8
 lAPNLVND/HByjaQNmrq7dlxPC/nk3seTF7rC6T4zZWTZoX3Myf0SkR6QS/2uCrRC8FqNBIj
 RpFLUf40mm8Ixb9lHkRaA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:E2LKdkfghHA=:FNem/ARHXV0uE2yKyiYHq5
 gY2PBWiTOl70HXT2nYwno+ily3sUA4zF6RH2X6jPdcezoNtDW0fpVgTll1zlwPeq6Tw2ub8Rh
 2DLriMUfIv4XlI/ncDzyEsiBAjtRLwzGfzPsHMwUj/Wl9ZfBUgZHNcwMGRrKMWpEBZDMQe3MA
 40RANSqPGoLq8gRDOILBjzXQ/2BuDR9gCOEuupkUc2lXuDRHXHbD4ThS6RYnu5Z0cn+Gi1KFD
 LYMHR+GzdSqPtFAy+XhcGSA/I5KpbH6J8GLn/LOJNfWQz9SyQDrY5PmNbYwWthglBYrE9hiBM
 2dyibsQZIos8kXbtwoYjpC6xQ6zuaoOc+LNJtSELPkyn0a6YoHAvapE+enMJ13xzXqFry9Sm+
 jaIWjOOJwJX5oBn9vmD8xD16S9Vdpo5TF1uWeDcgLFnF5nqrqPKksW/Br+h6/AC/8T3k7LwnV
 DPspmn7LgPYxWTYu5gm7BGQcz2xh0/CIi0I9rRMC/QwJUBsPv1NOpINrzBQ5cscHM1/JeX4yg
 UddkmfaCEOZK5J64UCYbahuJVmvyr0GJL9eYhVMaYgH6U8sBnr2ffYzBRLTTafV5mBqhO3dy+
 Bx2Rs8b3QG44khaV9pZ7wcGjl7cGKUHzsS/3tF6MD54cRvPBGrlzTPMOG/L7QsoVqhJwJjxyK
 1bcmddHtIQEVPdd0UbPJz7Rb9dQqwd509SQEE9EHOob1v4Lc75sXYIF5Dy+s+7PTvEg9ExrTU
 oUknbl01i9Ro0FT+8HcYIWXwFBfOPRxq+TPqkl7RE+dKTAkYt9J2dqt4Ti3jTxyspfevS2dVi
 wAVKFf+bEijKxm4qvqTNLNz6iZUYVETBgVCFh1pry7t7Xl4t+muKh+YdDmFBEKUJB5QzVN9nL
 2KXBIRoKtZONJ5pFopJyRjfPjLnrqICzU5ZD2Th8JDqeVjJOWddlHsNtYyT2jbr6sGshe/Ak/
 fnRiizWw3kUvQ6xUX/Mit6facC85cft/l/ziBX6Ozlhz9dND526CTsRN4Ym56T5SAjC7O9/LM
 zqpKrMeRZNwABkCelzWUxfKrTOI/7YumvfaTL55UMibw9pwOMmkMo7HI24Mxb5UJZHgVCCFn4
 JukOcDmXXHQvKfHc4/TxuTbdyIKcKMo8Xcg/uHjyZE9VlfLbTbE66IFDw==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190806_092853_927718_1960C6B7 
X-CRM114-Status: GOOD (  10.40  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.227.17.22 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Josef Friedl <josef.friedl@speed.at>,
 Frank Wunderlich <frank-w@public-files.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

From: Josef Friedl <josef.friedl@speed.at>

use mt6397 rtc driver also for mt6323 but with different
base/size see "mfd: mt6323: add mt6323 rtc+pwrc"

Signed-off-by: Josef Friedl <josef.friedl@speed.at>
Signed-off-by: Frank Wunderlich <frank-w@public-files.de>
---
changes since v3: moved (was part 5)
changes since v2: splitted this from v2.3 suggested-by Alexandre Belloni

 drivers/rtc/rtc-mt6397.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/rtc/rtc-mt6397.c b/drivers/rtc/rtc-mt6397.c
index 9370b7fc9f81..21cd9cc8b4c7 100644
--- a/drivers/rtc/rtc-mt6397.c
+++ b/drivers/rtc/rtc-mt6397.c
@@ -325,6 +325,7 @@ static SIMPLE_DEV_PM_OPS(mt6397_pm_ops, mt6397_rtc_suspend,
 			mt6397_rtc_resume);

 static const struct of_device_id mt6397_rtc_of_match[] = {
+	{ .compatible = "mediatek,mt6323-rtc", },
 	{ .compatible = "mediatek,mt6397-rtc", },
 	{ }
 };
--
2.17.1


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
