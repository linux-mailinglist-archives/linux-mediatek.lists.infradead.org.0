Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B234B32A6B
	for <lists+linux-mediatek@lfdr.de>; Mon,  3 Jun 2019 10:05:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Nfds42CsNR7+jbKxk5MdIfM0KFeBvKtzev6sr/5ULkg=; b=rSYwMkGJQqdF/V
	MikYNvWC/3dw0IQ6bIS9T+YYB8bTe1Qz1/pd3R6PR+LtsEGTCUWSjzRcMfAZwbb4NIY8KKj7F3P/z
	lvrGPhVpJvXNVcU+THaVOEKGI1Av6BikhZg4Ucq6/zOBPYDpNI1jLYX6PE3lo+u5P8xTSKiTxxDKo
	j9l7E5M5atRfkw4CkR1fA6nJq3FgoV3xv5K7SV7EWJLEEVqkCu13sW5ayuaU/43eqWe8E6DVZho/y
	br91IDpI5B2rkvOUVEU3WQS98T7snYKq1A3sEeFe4X0k4m3Bgt0VEU3Sz1cudBFHPuIO14mmQ2fy7
	5wL+V0ONjDscsW0WGjsg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXhyP-0003CU-BU; Mon, 03 Jun 2019 08:05:41 +0000
Received: from relay9-d.mail.gandi.net ([217.70.183.199])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXhxa-0000wS-Pf; Mon, 03 Jun 2019 08:05:28 +0000
X-Originating-IP: 90.88.144.139
Received: from localhost.localdomain
 (aaubervilliers-681-1-24-139.w90-88.abo.wanadoo.fr [90.88.144.139])
 (Authenticated sender: miquel.raynal@bootlin.com)
 by relay9-d.mail.gandi.net (Postfix) with ESMTPSA id D7F63FF81A;
 Mon,  3 Jun 2019 08:04:47 +0000 (UTC)
From: Miquel Raynal <miquel.raynal@bootlin.com>
To: Xiaolei Li <xiaolei.li@mediatek.com>, miquel.raynal@bootlin.com,
 richard@nod.at
Subject: Re: [PATCH v3 2/4] mtd: rawnand: mtk: Improve data sampling timing
 for read cycle
Date: Mon,  3 Jun 2019 10:04:46 +0200
Message-Id: <20190603080446.28858-1-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <20190507102541.34341-3-xiaolei.li@mediatek.com>
References: 
MIME-Version: 1.0
X-linux-mtd-patch-notification: thanks
X-linux-mtd-patch-commit: 30d9247b69fce5fbeaec67c3401cfa9a848a7d33
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190603_010451_780763_D37A0DA0 
X-CRM114-Status: UNSURE (   9.00  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.199 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-mtd@lists.infradead.org, linux-mediatek@lists.infradead.org,
 srv_heupstream@mediatek.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Tue, 2019-05-07 at 10:25:39 UTC, Xiaolei Li wrote:
> Currently, we expand RE# low level time by choosing the max value
> between RE# pulse width and RE# access time, and sample data at the
> rising edge of RE#.
> 
> Then, if RE# access time is bigger than RE# pulse width, the real
> read cycle time may be more than NAND SPEC required. This makes
> read performance be worse than that expected.
> 
> This patch improves data sampling timing by calculating RE# low level
> time according to RE# pulse width. If RE# access time is bigger than
> RE# pulse width, then delay sampling data timing.
> 
> The result of contrast test base on MT2712 evaluat board is as follow.
> 
> nand: Micron MT29F16G08ADBCAH4
> nand: 2048 MiB, SLC, erase size: 256 KiB, page size: 4096, OOB size: 224
> NFI 2x clock rate: 124800000 HZ.
> 
> Read speed without this patch:
> mtd_speedtest: page read speed is 14012 KiB/s
> mtd_speedtest: 2 page read speed is 14860 KiB/s
> 
> Read speed with this patch:
> mtd_speedtest: page read speed is 18724 KiB/s
> mtd_speedtest: 2 page read speed is 18713 KiB/s
> 
> Signed-off-by: Xiaolei Li <xiaolei.li@mediatek.com>
> Reviewed-by: Miquel Raynal <miquel.raynal@bootlin.com>

Applied to https://git.kernel.org/pub/scm/linux/kernel/git/mtd/linux.git nand/next, thanks.

Miquel

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
