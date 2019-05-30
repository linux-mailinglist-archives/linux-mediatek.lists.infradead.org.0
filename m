Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8497B2F7BE
	for <lists+linux-mediatek@lfdr.de>; Thu, 30 May 2019 09:10:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FdS6tax2RFKYL0NEux5B3yA7Hn6ABlX2SR+jIC6pSZQ=; b=r7NCDR7GEyVHIu
	9rX6eiYENSlGoAy2Qfj48dK7FA6eJN0blOAvjL1Ao/7Bcu/Yns9K5+tuZJ1+Vn/i9G3vMEIZeoYaq
	EhaQ02eaFh0MntbWTfwM+bQdMU6IRaRe02jcGqeCBDVLLWiHcbMolGtBX/D/bax0OE9vvs+F8n/st
	4GBB/gNPOeZfnfhQtdTslf3LAaPGeRV2LemK/mqiqQqcCwNFULlQJADVy0nEgL1724+FaQCK6KBi6
	f0hIZjlXLpk0SL1BR9hg+eJZNCuCUJUIN9wve86PMep5j4J/d7FtrFgt6jLRmGOuWq2DM3lAdpjHA
	cSL0tZaN3TxkRzEqYQjg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWFD8-0001Pd-Bi; Thu, 30 May 2019 07:10:50 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWFD4-0001P8-Lv; Thu, 30 May 2019 07:10:48 +0000
X-UUID: 2f9ae829a9d540bda714eca8f10a57b3-20190529
X-UUID: 2f9ae829a9d540bda714eca8f10a57b3-20190529
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw01.mediatek.com
 (envelope-from <ck.hu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 2022672156; Wed, 29 May 2019 23:10:30 -0800
Received: from MTKMBS01N2.mediatek.inc (172.21.101.79) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 30 May 2019 00:10:29 -0700
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs01n2.mediatek.inc (172.21.101.79) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 30 May 2019 15:10:26 +0800
Received: from [172.21.77.4] (172.21.77.4) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Thu, 30 May 2019 15:10:26 +0800
Message-ID: <1559200226.23119.4.camel@mtksdaap41>
Subject: Re: [PATCH v3] gpu/drm: mediatek: call mtk_dsi_stop() after
 mtk_drm_crtc_atomic_disable()
From: CK Hu <ck.hu@mediatek.com>
To: Hsin-Yi Wang <hsinyi@chromium.org>
Date: Thu, 30 May 2019 15:10:26 +0800
In-Reply-To: <CAJMQK-ir9J-JN9DDZPBA1nVkJUZ_6A+fY4fA6jx6zOh_9q5a-w@mail.gmail.com>
References: <20190528073908.633-1-hsinyi@chromium.org>
 <1559033586.5141.3.camel@mtksdaap41>
 <CAJMQK-ir9J-JN9DDZPBA1nVkJUZ_6A+fY4fA6jx6zOh_9q5a-w@mail.gmail.com>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-TM-SNTS-SMTP: 21091E5AA1B68CD54EA112FEDEABEE38DDE2401439AE716AE08C1FA05B4F42452000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190530_001047_249796_09A1EF39 
X-CRM114-Status: GOOD (  12.00  )
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
Cc: Daniel Vetter <daniel@ffwll.ch>, David Airlie <airlied@linux.ie>,
 lkml <linux-kernel@vger.kernel.org>, dri-devel@lists.freedesktop.org,
 linux-mediatek@lists.infradead.org, Philipp Zabel <p.zabel@pengutronix.de>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Hi, Hsin-Yi:

On Thu, 2019-05-30 at 10:55 +0800, Hsin-Yi Wang wrote:
> On Tue, May 28, 2019 at 4:53 PM CK Hu <ck.hu@mediatek.com> wrote:
> 
> > I think we've already discussed in [1]. I need a reason to understand
> > this is hardware behavior or software bug. If this is a software bug, we
> > need to fix the bug and code could be symmetric.
> >
> > [1]
> > http://lists.infradead.org/pipermail/linux-mediatek/2019-March/018423.html
> >
> Hi CK,
> 
> Jitao has replied in v2[1]
> "
> mtk_dsi_start must after dsi full setting.
> If you put it in mtk_dsi_ddp_start, mtk_dsi_set_mode won't work. DSI
> will keep cmd mode. So you see no irq.
> ...
> "
> 
> [1] https://lore.kernel.org/patchwork/patch/1052505/#1276270
> 
> Thanks

OK, this looks the hardware behavior, so I would like you to add comment
in the code to describe why we need this asymmetric behavior. The
description should be clear so that we could know how to modify the code
flow in future.

Regards,
CK


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
