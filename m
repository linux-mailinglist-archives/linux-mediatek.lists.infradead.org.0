Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 56B05A9F95
	for <lists+linux-mediatek@lfdr.de>; Thu,  5 Sep 2019 12:25:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zqkxKUgs9GaY46pxm+K80KE+zqcXtPAb7p2tt/PC4lA=; b=r6EfS1HAz/EnYY
	1oeIcwoaiywbAGRos/Dq2dRSobiIiZkYnGe+V/qY+k6LGAnJyxuGKsrXhM2tI6UiJhW59YBHTfejr
	lqjLOWdBw+FP32yNDZv/JUAHwXtRLXW8G9kzY9mM1s1VDb+rDsyxKGL52Xeghm4d6tEKTVOroanzT
	7FJ0SoRPuxOwCCbrFoFqz0n/JL5rH9CFJ8E68Fpv+60RCmU8xNIIk804wO38N7t1xBai9CQZHmNKx
	qKHMqfPbAJOPp7gHt+33YeBlK1DuyMkO6ckJbBC+eUCA6GkF3TQ72CiRftBpeK50pUIIk7hn67+z8
	Sq8cQqhBDPITC5PeB/Cg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5oxE-0001Va-CN; Thu, 05 Sep 2019 10:25:28 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5oxB-0001NO-08
 for linux-mediatek@lists.infradead.org; Thu, 05 Sep 2019 10:25:26 +0000
X-UUID: 259558fa90074ea8a6bc96b97cf75cc5-20190905
X-UUID: 259558fa90074ea8a6bc96b97cf75cc5-20190905
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <yong.wu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1563872129; Thu, 05 Sep 2019 02:25:18 -0800
Received: from MTKMBS31DR.mediatek.inc (172.27.6.102) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 5 Sep 2019 03:25:17 -0700
Received: from MTKCAS32.mediatek.inc (172.27.4.184) by MTKMBS31DR.mediatek.inc
 (172.27.6.102) with Microsoft SMTP Server (TLS) id 15.0.1395.4;
 Thu, 5 Sep 2019 18:25:08 +0800
Received: from [10.17.3.153] (172.27.4.253) by MTKCAS32.mediatek.inc
 (172.27.4.170) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Thu, 5 Sep 2019 18:25:07 +0800
Message-ID: <1567679109.18702.54.camel@mhfsdcap03>
Subject: Re: [PATCH v3 07/14] media: mtk-vcodec: Get rid of
 mtk_smi_larb_get/put
From: Yong Wu <yong.wu@mediatek.com>
To: Tiffany Lin <tiffany.lin@mediatek.com>
Date: Thu, 5 Sep 2019 18:25:09 +0800
In-Reply-To: <1567503456-24725-8-git-send-email-yong.wu@mediatek.com>
References: <1567503456-24725-1-git-send-email-yong.wu@mediatek.com>
 <1567503456-24725-8-git-send-email-yong.wu@mediatek.com>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-TM-SNTS-SMTP: E933C39B7B61ECDE8D5030663A62834E7E6E952FCB917BE64C9546B41ED4BC222000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190905_032525_058793_171F7004 
X-CRM114-Status: GOOD (  14.27  )
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
Cc: anan.sun@mediatek.com, xia.jiang@mediatek.com,
 Nicolas Boichat <drinkcat@chromium.org>, cui.zhang@mediatek.com,
 srv_heupstream@mediatek.com, Evan Green <evgreen@chromium.org>,
 chao.hao@mediatek.com, linux-mediatek@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>, ming-fan.chen@mediatek.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Hi Tiffany,

Sorry to disturb. I change vcodec here, Could you help have a look at
this?

On Tue, 2019-09-03 at 17:37 +0800, Yong Wu wrote:
> MediaTek IOMMU has already added the device_link between the consumer
> and smi-larb device. If the vcodec device call the pm_runtime_get_sync,
> the smi-larb's pm_runtime_get_sync also be called automatically.
> 
> CC: Tiffany Lin <tiffany.lin@mediatek.com>
> Signed-off-by: Yong Wu <yong.wu@mediatek.com>
> Reviewed-by: Evan Green <evgreen@chromium.org>
> ---
>  .../media/platform/mtk-vcodec/mtk_vcodec_dec_pm.c  | 22 ----------
>  drivers/media/platform/mtk-vcodec/mtk_vcodec_drv.h |  3 --
>  drivers/media/platform/mtk-vcodec/mtk_vcodec_enc.c |  1 -
>  .../media/platform/mtk-vcodec/mtk_vcodec_enc_pm.c  | 47 ----------------------
>  4 files changed, 73 deletions(-)
> 
[...]
> diff --git a/drivers/media/platform/mtk-vcodec/mtk_vcodec_enc_pm.c b/drivers/media/platform/mtk-vcodec/mtk_vcodec_enc_pm.c
> index 3e2bfde..f484ac7 100644
> --- a/drivers/media/platform/mtk-vcodec/mtk_vcodec_enc_pm.c
> +++ b/drivers/media/platform/mtk-vcodec/mtk_vcodec_enc_pm.c
> @@ -8,7 +8,6 @@
>  #include <linux/of_address.h>
>  #include <linux/of_platform.h>
>  #include <linux/pm_runtime.h>
> -#include <soc/mediatek/smi.h>
>  
>  #include "mtk_vcodec_enc_pm.h"
>  #include "mtk_vcodec_util.h"
> @@ -17,49 +16,18 @@
>  
>  int mtk_vcodec_init_enc_pm(struct mtk_vcodec_dev *mtkdev)
>  {
> -	struct device_node *node;
>  	struct platform_device *pdev;
>  	struct mtk_vcodec_pm *pm;
>  	struct mtk_vcodec_clk *enc_clk;
>  	struct mtk_vcodec_clk_info *clk_info;
>  	int ret = 0, i = 0;
> -	struct device *dev;
>  
>  	pdev = mtkdev->plat_dev;
>  	pm = &mtkdev->pm;
>  	memset(pm, 0, sizeof(struct mtk_vcodec_pm));
>  	pm->mtkdev = mtkdev;
>  	pm->dev = &pdev->dev;
> -	dev = &pdev->dev;
>  	enc_clk = &pm->venc_clk;
> -
> -	node = of_parse_phandle(dev->of_node, "mediatek,larb", 0);
> -	if (!node) {
> -		mtk_v4l2_err("no mediatek,larb found");
> -		return -ENODEV;
> -	}
> -	pdev = of_find_device_by_node(node);
> -	of_node_put(node);
> -	if (!pdev) {
> -		mtk_v4l2_err("no mediatek,larb device found");
> -		return -ENODEV;
> -	}
> -	pm->larbvenc = &pdev->dev;
> -
> -	node = of_parse_phandle(dev->of_node, "mediatek,larb", 1);
> -	if (!node) {
> -		mtk_v4l2_err("no mediatek,larb found");
> -		return -ENODEV;
> -	}
> -
> -	pdev = of_find_device_by_node(node);
> -	of_node_put(node);
> -	if (!pdev) {
> -		mtk_v4l2_err("no mediatek,larb device found");
> -		return -ENODEV;
> -	}
> -
> -	pm->larbvenclt = &pdev->dev;

I guess this patch will affect the venc of mt8173. From its dtsi[1], It
looks merge two venc HW into one device. then it may be fail to enable
the clock of larb5 after this patch.

From my point of view, the two venc HW has independent base address,
irq, clocks and smi-larb, they are two HW instance, It looks reasonable
to split it to two devices like this:

 vcodec_enc: vcodec@18002000 {
   compatible = "mediatek,mt8173-vcodec-enc";
   reg = <0 0x18002000 0 0x1000>;/* VENC_SYS */
   interrupts = <GIC_SPI 198 IRQ_TYPE_LEVEL_LOW>;
   iommus = <&iommu M4U_PORT_VENC_RCPU>,
     ...
    <&iommu M4U_PORT_VENC_NBM_WDMA>;
   clocks = <&topckgen CLK_TOP_VENCPLL_D2>,
            <&topckgen CLK_TOP_VENC_SEL>;
   clock-names = "venc_sel_src",
                "venc_sel";
 }
 
 vcodec_enc_lt: vcodec@19002000 {
    compatible = "mediatek,mt8173-vcodec-enc";
    reg = <0 0x19002000 0 0x1000>;	/* VENC_LT_SYS */
    interrupts = <GIC_SPI 202 IRQ_TYPE_LEVEL_LOW>;
    iommus = <&iommu M4U_PORT_VENC_RCPU_SET2>,
          <&iommu M4U_PORT_VENC_REC_FRM_SET2>,
          ...				 
          <&iommu M4U_PORT_VENC_REC_CHROMA_SET2>;
    clocks = <&topckgen CLK_TOP_UNIVPLL1_D2>,
	    <&topckgen CLK_TOP_VENC_LT_SEL>;
    clock-names = "venc_lt_sel_src",
            "venc_lt_sel";
}

one is venc which connect with larb3, the other is venc_lt that connect
with larb5. then we could call pm_runtime_get with the two devices to
enable the clock of corresponding larb.

[1]
https://elixir.bootlin.com/linux/v5.3-rc1/source/arch/arm64/boot/dts/mediatek/mt8173.dtsi#L1361

>  	pdev = mtkdev->plat_dev;
>  	pm->dev = &pdev->dev;
>  
> @@ -115,21 +83,8 @@ void mtk_vcodec_enc_clock_on(struct mtk_vcodec_pm *pm)
>  		}
>  	}
>  
> -	ret = mtk_smi_larb_get(pm->larbvenc);
> -	if (ret) {
> -		mtk_v4l2_err("mtk_smi_larb_get larb3 fail %d", ret);
> -		goto larbvencerr;
> -	}
> -	ret = mtk_smi_larb_get(pm->larbvenclt);
> -	if (ret) {
> -		mtk_v4l2_err("mtk_smi_larb_get larb4 fail %d", ret);
> -		goto larbvenclterr;
> -	}
>  	return;
>  
> -larbvenclterr:
> -	mtk_smi_larb_put(pm->larbvenc);
> -larbvencerr:
>  clkerr:
>  	for (i -= 1; i >= 0; i--)
>  		clk_disable_unprepare(enc_clk->clk_info[i].vcodec_clk);
> @@ -140,8 +95,6 @@ void mtk_vcodec_enc_clock_off(struct mtk_vcodec_pm *pm)
>  	struct mtk_vcodec_clk *enc_clk = &pm->venc_clk;
>  	int i = 0;
>  
> -	mtk_smi_larb_put(pm->larbvenc);
> -	mtk_smi_larb_put(pm->larbvenclt);
>  	for (i = enc_clk->clk_num - 1; i >= 0; i--)
>  		clk_disable_unprepare(enc_clk->clk_info[i].vcodec_clk);
>  }



_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
