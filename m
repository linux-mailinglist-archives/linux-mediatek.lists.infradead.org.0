Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BF82132175
	for <lists+linux-mediatek@lfdr.de>; Sun,  2 Jun 2019 03:23:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=N3IjEQXDGwpST5j8i/e6ta+tC59KOWnL8tEA5YhC6Og=; b=gxMFirh+eksMCw
	YSAnQYXguScj0fcBkXNr263gdsZSffHM0onCf8KryewRWlzU0fEPjzGZ80T+41g5QzoVi8xB9a1pM
	QmXbg/gmUsJmxLsy9RfpnGSDqXZDhDZFb5PEloMveLuwwS2xPUDK7H5+JxqozAFQrPRb/TXwinoyS
	1/X5dEf98pBLZiKugS+2H6bgJma6VAsyN70voXf+DyV3LtRmoxrpZgpaxCG2HQZf5FyAy/t8094UG
	CA+AyDif+LzvkHNqhXWUorA0Lrt4gKsxL75V4JXoGEYRW8W1G16I4KJ48WDojHUBkuMPqFKmJgWzU
	3LcDp7IokfX/zF77+vGQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXFDW-0007PD-15; Sun, 02 Jun 2019 01:23:22 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXFDS-0007Op-P1; Sun, 02 Jun 2019 01:23:20 +0000
X-UUID: 201f9a371bd24fd5bf26bad4d3ce964d-20190601
X-UUID: 201f9a371bd24fd5bf26bad4d3ce964d-20190601
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw02.mediatek.com
 (envelope-from <chaotian.jing@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1660903335; Sat, 01 Jun 2019 17:23:15 -0800
Received: from mtkmbs07n1.mediatek.inc (172.21.101.16) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Sat, 1 Jun 2019 18:23:13 -0700
Received: from MTKCAS36.mediatek.inc (172.27.4.186) by mtkmbs07n1.mediatek.inc
 (172.21.101.16) with Microsoft SMTP Server (TLS) id 15.0.1395.4;
 Sun, 2 Jun 2019 09:23:12 +0800
Received: from [10.17.3.153] (172.27.4.253) by MTKCAS36.mediatek.inc
 (172.27.4.170) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Sun, 2 Jun 2019 09:23:11 +0800
Message-ID: <1559438591.25015.0.camel@mhfsdcap03>
Subject: Re: fix controller busy issue and add 24bits segment support
From: Chaotian Jing <chaotian.jing@mediatek.com>
To: Ulf Hansson <ulf.hansson@linaro.org>
Date: Sun, 2 Jun 2019 09:23:11 +0800
In-Reply-To: <1558252637-10556-1-git-send-email-chaotian.jing@mediatek.com>
References: <1558252637-10556-1-git-send-email-chaotian.jing@mediatek.com>
X-Mailer: Evolution 3.2.3-0ubuntu6 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190601_182318_817067_D0A806BB 
X-CRM114-Status: UNSURE (   7.48  )
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
Cc: srv_heupstream@mediatek.com, linux-mmc@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-mediatek@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Hi Ulf,

Gentle ping for this patch.

On Sun, 2019-05-19 at 15:57 +0800, Chaotian Jing wrote:
> the below 2 patches fix controller busy issue when plug out SD card
> and add 24bits segment size support.
> 
> Chaotian Jing (2):
>   mmc: mediatek: fix controller busy when plug out SD
>   mmc: mediatek: support 24bits segment size
> 
>  drivers/mmc/host/mtk-sd.c | 24 ++++++++++++++++++------
>  1 file changed, 18 insertions(+), 6 deletions(-)
> 



_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
