Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0270570F2B
	for <lists+linux-mediatek@lfdr.de>; Tue, 23 Jul 2019 04:32:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=56XNqLHQveF+dQfVaB1tlV+VC3zKdHfZWRyq8ltd2wo=; b=FVGgRPQY5owHPx
	8s8YC0WQ5RbLnFg79KCUrDeCgDRnNi7ANMKv/kpO7LyOJt0oEwrqzYIPm8T4SrQyyldD6NN1+6hRp
	x6hoVFUEwl4onejKod7JuE10AMXzZA695TdZYpXWkE7HLA6lcxMg/nyzC2Qoz55m6lIbEUJIOr81C
	ZPAy9tp7Vmn0guFQguUHnl36criSD3jJ12mHYzcu1yNDqUGrzdXHNfyUy6c1gQH+cA2sTzvhxzP63
	E6+d2phT/Hls3gNi/9pgHMSlAuVEo+sU93qisBZw+Q9XQH62+khaXPgDS24hAMJ6KFq7NhKbweGPY
	aScwU1PoaWcA7bUkgNvw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpkbV-0006QF-Vj; Tue, 23 Jul 2019 02:32:38 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpkb1-0006ER-8g; Tue, 23 Jul 2019 02:32:08 +0000
X-UUID: 5a39e9d200f449e78e7cb91012e70f36-20190722
X-UUID: 5a39e9d200f449e78e7cb91012e70f36-20190722
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw02.mediatek.com
 (envelope-from <ck.hu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 367777316; Mon, 22 Jul 2019 18:31:52 -0800
Received: from MTKMBS07N2.mediatek.inc (172.21.101.141) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 22 Jul 2019 19:31:51 -0700
Received: from mtkcas09.mediatek.inc (172.21.101.178) by
 mtkmbs07n2.mediatek.inc (172.21.101.141) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 23 Jul 2019 10:31:49 +0800
Received: from [172.21.77.4] (172.21.77.4) by mtkcas09.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Tue, 23 Jul 2019 10:31:49 +0800
Message-ID: <1563849109.27558.14.camel@mtksdaap41>
Subject: Re: [PATCH v2 00/12] Clean up "mediatek,larb" after adding device_link
From: CK Hu <ck.hu@mediatek.com>
To: Yong Wu <yong.wu@mediatek.com>
Date: Tue, 23 Jul 2019 10:31:49 +0800
In-Reply-To: <1560171313-28299-1-git-send-email-yong.wu@mediatek.com>
References: <1560171313-28299-1-git-send-email-yong.wu@mediatek.com>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190722_193207_331669_4F028699 
X-CRM114-Status: GOOD (  18.65  )
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
Cc: youlin.pei@mediatek.com, devicetree@vger.kernel.org,
 Nicolas Boichat <drinkcat@chromium.org>, srv_heupstream@mediatek.com,
 Joerg Roedel <joro@8bytes.org>, Will Deacon <will.deacon@arm.com>,
 linux-kernel@vger.kernel.org, Evan Green <evgreen@chromium.org>, Tomasz
 Figa <tfiga@google.com>, iommu@lists.linux-foundation.org,
 Rob Herring <robh+dt@kernel.org>, linux-mediatek@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>, yingjoe.chen@mediatek.com,
 anan.sun@mediatek.com, Robin Murphy <robin.murphy@arm.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Hi, Yong:

I've added log  in mtk_smi_clk_enable() and mtk_smi_clk_disable(), and I
boot MT8183 with display, the log is

[    4.020340] mtk-smi-common 14019000.smi: mtk_smi_clk_enable()
[    4.331371] mtk-smi-common 14019000.smi: mtk_smi_clk_disable()
[    4.429578] mtk-smi-common 14019000.smi: mtk_smi_clk_enable()
[    4.719743] mtk-smi-common 14019000.smi: mtk_smi_clk_disable()
[    5.084770] mtk-smi-common 14019000.smi: mtk_smi_clk_enable()
[    5.904310] mtk-smi-common 14019000.smi: mtk_smi_clk_disable()

From the log, the clock is finally turned off, but the display works
normally. This is because scpsys has turn the clock on,

		scpsys: syscon@10006000 {
			compatible = "mediatek,mt8183-scpsys", "syscon";
			#power-domain-cells = <1>;
			reg = <0 0x10006000 0 0x1000>;
			clocks = <&topckgen CLK_TOP_MUX_AUD_INTBUS>,
				 <&mmsys CLK_MM_SMI_COMMON>,
				 <&mmsys CLK_MM_GALS_COMM0>,
				 <&mmsys CLK_MM_GALS_COMM1>,
			clock-names = "audio","mm-0",
				      "mm-1", "mm-2";
		}

I'm worried that for MT8173, scpsys would not turn on subsys clock, this
series would let display work abnormally, so I think smi common should
not depend on scpsys to turn on the clock.

You could simply remove the clock parameter in scpsys device node, and
you would see the display works abnormally.

Regards,
CK


On Mon, 2019-06-10 at 20:55 +0800, Yong Wu wrote:
> MediaTek IOMMU block diagram always like below:
> 
>         M4U
>          |
>     smi-common
>          |
>   -------------
>   |         |  ...
>   |         |
> larb1     larb2
>   |         |
> vdec       venc
> 
> All the consumer connect with smi-larb, then connect with smi-common.
> 
> MediaTek IOMMU don't have its power-domain. When the consumer works,
> it should enable the smi-larb's power which also need enable the smi-common's
> power firstly.
> 
> Thus, Firstly, use the device link connect the consumer and the
> smi-larbs. then add device link between the smi-larb and smi-common.
> 
> After adding the device_link, then "mediatek,larb" property can be removed.
> the iommu consumer don't need call the mtk_smi_larb_get/put to enable
> the power and clock of smi-larb and smi-common.
> 
> This patchset depends on "MT8183 IOMMU SUPPORT"[1].
> 
> [1] https://lists.linuxfoundation.org/pipermail/iommu/2019-June/036552.html
> 
> Change notes:
> v2:
>    1) rebase on v5.2-rc1.
>    2) Move adding device_link between the consumer and smi-larb into
> iommu_add_device from Robin.
>    3) add DL_FLAG_AUTOREMOVE_CONSUMER even though the smi is built-in from Evan.
>    4) Remove the shutdown callback in iommu.   
> 
> v1: https://lists.linuxfoundation.org/pipermail/iommu/2019-January/032387.html
> 
> Yong Wu (12):
>   dt-binding: mediatek: Get rid of mediatek,larb for multimedia HW
>   iommu/mediatek: Add probe_defer for smi-larb
>   iommu/mediatek: Add device_link between the consumer and the larb
>     devices
>   memory: mtk-smi: Add device-link between smi-larb and smi-common
>   media: mtk-jpeg: Get rid of mtk_smi_larb_get/put
>   media: mtk-mdp: Get rid of mtk_smi_larb_get/put
>   media: mtk-vcodec: Get rid of mtk_smi_larb_get/put
>   drm/mediatek: Get rid of mtk_smi_larb_get/put
>   memory: mtk-smi: Get rid of mtk_smi_larb_get/put
>   iommu/mediatek: Use builtin_platform_driver
>   arm: dts: mediatek: Get rid of mediatek,larb for MM nodes
>   arm64: dts: mediatek: Get rid of mediatek,larb for MM nodes
> 
>  .../bindings/display/mediatek/mediatek,disp.txt    |  9 -----
>  .../bindings/media/mediatek-jpeg-decoder.txt       |  4 --
>  .../devicetree/bindings/media/mediatek-mdp.txt     |  8 ----
>  .../devicetree/bindings/media/mediatek-vcodec.txt  |  4 --
>  arch/arm/boot/dts/mt2701.dtsi                      |  1 -
>  arch/arm/boot/dts/mt7623.dtsi                      |  1 -
>  arch/arm64/boot/dts/mediatek/mt8173.dtsi           | 15 -------
>  drivers/gpu/drm/mediatek/mtk_drm_crtc.c            | 11 -----
>  drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.c        | 26 ------------
>  drivers/gpu/drm/mediatek/mtk_drm_ddp_comp.h        |  1 -
>  drivers/iommu/mtk_iommu.c                          | 45 +++++++--------------
>  drivers/iommu/mtk_iommu_v1.c                       | 39 +++++++-----------
>  drivers/media/platform/mtk-jpeg/mtk_jpeg_core.c    | 22 ----------
>  drivers/media/platform/mtk-jpeg/mtk_jpeg_core.h    |  2 -
>  drivers/media/platform/mtk-mdp/mtk_mdp_comp.c      | 38 -----------------
>  drivers/media/platform/mtk-mdp/mtk_mdp_comp.h      |  2 -
>  drivers/media/platform/mtk-mdp/mtk_mdp_core.c      |  1 -
>  .../media/platform/mtk-vcodec/mtk_vcodec_dec_pm.c  | 21 ----------
>  drivers/media/platform/mtk-vcodec/mtk_vcodec_drv.h |  3 --
>  drivers/media/platform/mtk-vcodec/mtk_vcodec_enc.c |  1 -
>  .../media/platform/mtk-vcodec/mtk_vcodec_enc_pm.c  | 47 ----------------------
>  drivers/memory/mtk-smi.c                           | 31 ++++----------
>  include/soc/mediatek/smi.h                         | 20 ---------
>  23 files changed, 36 insertions(+), 316 deletions(-)
> 



_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
