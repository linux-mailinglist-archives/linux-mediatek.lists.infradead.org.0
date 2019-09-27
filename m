Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A1022BFCBE
	for <lists+linux-mediatek@lfdr.de>; Fri, 27 Sep 2019 03:36:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hk3XoRfNhOmsoakhhzGHeZMHb+xxk/TbKaJYTr73CN4=; b=bn6eM3WfLaHxfd
	e2AE/BZtpeG/HP/4sBomzil8djCx7tb9tgyTxNTepGVBh5wCRlSu+DQzFQDmZzXzkAVtmz2c4eWHj
	VoeVbiZVq4Dl3kt5KmMlWen4RHauOBLWL7Cs6HKpDxF4FM4A5LJrY7JP5xbEeUGpoblQUFCxBt5S0
	fGM4itMJg0ovoFdEdh98/7Ss1m/MiFGbFQ0WuWuQN+Zq+XUXXyxJkBG64+yjLouHy4s89QTEnHVj5
	+KJxc8RGT0RrzG4QdLzDLvSDqYfMacs0wwdqemEMHLd1gqoN/PSy1fySjT2EuZvrB1knmKjpLMbXe
	D6TvVR76suferlyGpEqQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDfB1-0004qa-6i; Fri, 27 Sep 2019 01:36:07 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDfAx-0004pT-Mo
 for linux-mediatek@lists.infradead.org; Fri, 27 Sep 2019 01:36:05 +0000
X-UUID: 70a281dd38f046928a3fa9b9aef6c020-20190926
X-UUID: 70a281dd38f046928a3fa9b9aef6c020-20190926
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw01.mediatek.com
 (envelope-from <ck.hu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 697570998; Thu, 26 Sep 2019 17:35:58 -0800
Received: from MTKMBS01N2.mediatek.inc (172.21.101.79) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 26 Sep 2019 18:35:57 -0700
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs01n2.mediatek.inc (172.21.101.79) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 27 Sep 2019 09:35:56 +0800
Received: from [172.21.77.4] (172.21.77.4) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Fri, 27 Sep 2019 09:35:56 +0800
Message-ID: <1569548156.24127.8.camel@mtksdaap41>
Subject: Re: [PATCH v7 0/9] Support dsi for mt8183
From: CK Hu <ck.hu@mediatek.com>
To: Jitao Shi <jitao.shi@mediatek.com>
Date: Fri, 27 Sep 2019 09:35:56 +0800
In-Reply-To: <20190919065806.111016-1-jitao.shi@mediatek.com>
References: <20190919065806.111016-1-jitao.shi@mediatek.com>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-TM-SNTS-SMTP: 96B661CDA23811F28DDB1E62DDDC91320333D6BBD6AD6D5537737BB548B1DEDC2000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190926_183603_752326_DEEC18BA 
X-CRM114-Status: UNSURE (   9.44  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: bibby.hsieh@mediatek.com, srv_heupstream@mediatek.com,
 David Airlie <airlied@linux.ie>, stonea168@163.com, cawa.cheng@mediatek.com,
 dri-devel@lists.freedesktop.org, sj.huang@mediatek.com,
 linux-mediatek@lists.infradead.org, Daniel Vetter <daniel@ffwll.ch>,
 Matthias Brugger <matthias.bgg@gmail.com>, yingjoe.chen@mediatek.com,
 eddie.huang@mediatek.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Hi, Jitao:

For this series, applied to mediatek-drm-next-5.5 [1], thanks.

[1]
https://github.com/ckhu-mediatek/linux.git-tags/commits/mediatek-drm-next-5.5

Regards,
CK

On Thu, 2019-09-19 at 14:57 +0800, Jitao Shi wrote:
> Changes since v6:
>  - add dphy reset to avoid dphy fifo error after lines number setting
>  - separate dsi cmd reg setting from "fixes CMDQ reg address of mt8173
>    is different with mt2701"
> 
> Changes since v5:
>  - fine tune dphy timing.
> 
> Changes since v4:
>  - move mipi_dsi_host_unregiter() to .remove()
>  - fine tune add frame size control coding style
>  - change the data type of data_rate as u32, and add DIV_ROUND_UP_ULL
>  - use div_u64 when 8000000000ULL / dsi->data_rate.
> 
> Changes since v3
>  - add one more 'tab' for bitwise define.
>  - add Tested-by: Ryan Case <ryandcase@chromium.org>
> 	and Reviewed-by: CK Hu <ck.hu@mediatek.com>.
>  - remove compare da_hs_zero to da_hs_prepare.
> 
> Changes since v2:
>  - change the video timing calc method
>  - fine the dsi and mipitx init sequence
>  - fine tune commit msg
> 
> Changes since v1:
>  - separate frame size and reg commit control independent patches.
>  - fix some return values in probe
>  - remove DSI_CMDW0 in "CMDQ reg address of mt8173 is different with mt2701" 
> 
> Jitao Shi (9):
>   drm/mediatek: move mipi_dsi_host_register to probe
>   drm/mediatek: fixes CMDQ reg address of mt8173 is different with
>     mt2701
>   drm/mediatek: replace writeb() with mtk_dsi_mask()
>   drm/mediatek: add dsi reg commit disable control
>   drm/mediatek: add frame size control
>   drm/mediatek: add mt8183 dsi driver support
>   drm/mediatek: change the dsi phytiming calculate method
>   drm: mediatek: adjust dsi and mipi_tx probe sequence
>   drm/mediatek: add dphy reset after setting lanes number
> 
>  drivers/gpu/drm/mediatek/mtk_drm_drv.c |   2 +-
>  drivers/gpu/drm/mediatek/mtk_dsi.c     | 233 ++++++++++++++++++-------
>  2 files changed, 170 insertions(+), 65 deletions(-)
> 



_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
