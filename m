Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DA5233CC3
	for <lists+linux-mediatek@lfdr.de>; Tue,  4 Jun 2019 03:33:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/DBUSgTBDOH463ioq9Zf4X6/NAk55vz1STPn0WX5T2Y=; b=dR2zZsjLvaTDnb
	E9/B5wzSTh8R2c1w1cdXJCRuy5fvv8kEuVUDl7LSq1pXEkrQXAMhGwbN24B+GxewQMrXPvmLdcUi5
	1j6NRGoxmeKgsmgxE2+6Di1m9NYg7aNkL5BkYxD1BCMfDZGDYdWjcANUnLn2BxmwaZQvVZLUl9jrg
	eaR5HODFJhCZckiCJNtAAZ2yU/7Ji2hMHxv9v1gGCf4395Ewji7bUPUc2vsasRwMBeoz4ftXVjmYW
	Agde8I4BL2EWmaKdcdTSuB/eOvieelGhs+cTN/Cujig7YB64kO+c9WFf1jit8iS0fDvEfjRMGh2af
	Ix18ipHbjtAKMLdcJ3Ag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXyKZ-0006DZ-99; Tue, 04 Jun 2019 01:33:39 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXyKV-0006Cp-8v; Tue, 04 Jun 2019 01:33:37 +0000
X-UUID: 72dccf69039b471b8053613f23a45c9d-20190603
X-UUID: 72dccf69039b471b8053613f23a45c9d-20190603
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <ck.hu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1759249077; Mon, 03 Jun 2019 17:33:25 -0800
Received: from mtkmbs07n1.mediatek.inc (172.21.101.16) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 3 Jun 2019 18:33:23 -0700
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs07n1.mediatek.inc (172.21.101.16) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 4 Jun 2019 09:33:22 +0800
Received: from [172.21.77.4] (172.21.77.4) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Tue, 4 Jun 2019 09:33:22 +0800
Message-ID: <1559612002.2749.2.camel@mtksdaap41>
Subject: Re: [PATCH v2 0/4] fix mediatek drm, dis, and disp-* unbind/bind
From: CK Hu <ck.hu@mediatek.com>
To: Hsin-Yi Wang <hsinyi@chromium.org>
Date: Tue, 4 Jun 2019 09:33:22 +0800
In-Reply-To: <20190529102555.251579-1-hsinyi@chromium.org>
References: <20190529102555.251579-1-hsinyi@chromium.org>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190603_183335_318961_D777D2C2 
X-CRM114-Status: UNSURE (   9.09  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Philipp Zabel <p.zabel@pengutronix.de>, David Airlie <airlied@linux.ie>,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linux-mediatek@lists.infradead.org, Daniel Vetter <daniel@ffwll.ch>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Hi, Hsin-Yi:

On Wed, 2019-05-29 at 18:25 +0800, Hsin-Yi Wang wrote:
> There are some errors when unbinding and rebinding mediatek drm, dsi,
> and disp-* drivers. This series is to fix those errors and warnings.
> 
> Hsin-Yi Wang (4):
>   drm: mediatek: fix unbind functions
>   drm: mediatek: unbind components in mtk_drm_unbind()
>   drm: mediatek: call drm_atomic_helper_shutdown() when unbinding driver
>   drm: mediatek: clear num_pipes when unbind driver

For this series with some title modification, applied to
mediatek-drm-fixes-5.2 [1], thanks.

[1]
https://github.com/ckhu-mediatek/linux.git-tags/commits/mediatek-drm-fixes-5.2

Regards,
CK

> 
>  drivers/gpu/drm/mediatek/mtk_drm_drv.c | 8 +++-----
>  drivers/gpu/drm/mediatek/mtk_dsi.c     | 2 ++
>  2 files changed, 5 insertions(+), 5 deletions(-)
> 



_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
