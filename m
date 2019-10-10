Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B4EDD231C
	for <lists+linux-mediatek@lfdr.de>; Thu, 10 Oct 2019 10:45:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TTPEjHSlq743Kb9SdzhoO66SFV8nM7s2ogKQIGZsEX0=; b=rxAwPaV7GvVwxj
	vgdpHk7jMx0hRnCUpMaT586Vy3DpYkV8NGZ6tlU4/xweQ9bR7NkqIJP6V6cmPGuJNnCYZMJjUwp2q
	LdGE5nnjnSuW2SvbRINx60RrapQ5uEMHzdKyII7TwxmCn98JxMCIYbZpNWJ2R4WdQFRhOko3ZOLCn
	pQzsLqw9XoSEXrtVRvg5i2zP9e/qCPeJ/0xpqNiBkkxzuqpKIrjMwR4lv2MBBKYO5ZH8JGhthFiTw
	EBPQkfD9znpXfRFBqpuaPHpUFii3hcQiaWR81dLe9bl+Hmtc2hCJpfQZF4XaptZytgQU19jjR5CCJ
	5KpmTtZcEGZTUom4KHcA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iIU4i-0003Do-OF; Thu, 10 Oct 2019 08:45:32 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iIU4f-0003CU-PX; Thu, 10 Oct 2019 08:45:31 +0000
X-UUID: 1e3b05aedf33483ead6466a22ac9fe55-20191010
X-UUID: 1e3b05aedf33483ead6466a22ac9fe55-20191010
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw01.mediatek.com
 (envelope-from <chunfeng.yun@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1224794438; Thu, 10 Oct 2019 00:45:28 -0800
Received: from MTKMBS31DR.mediatek.inc (172.27.6.102) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 10 Oct 2019 01:45:20 -0700
Received: from MTKCAS32.mediatek.inc (172.27.4.184) by MTKMBS31DR.mediatek.inc
 (172.27.6.102) with Microsoft SMTP Server (TLS) id 15.0.1395.4;
 Thu, 10 Oct 2019 16:45:16 +0800
Received: from [10.17.3.153] (172.27.4.253) by MTKCAS32.mediatek.inc
 (172.27.4.170) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Thu, 10 Oct 2019 16:45:16 +0800
Message-ID: <1570697118.32135.20.camel@mhfsdcap03>
Subject: Re: [PATCH] usb: mtk-xhci: Set the XHCI_NO_64BIT_SUPPORT quirk
From: Chunfeng Yun <chunfeng.yun@mediatek.com>
To: Tomasz Figa <tfiga@chromium.org>
Date: Thu, 10 Oct 2019 16:45:18 +0800
In-Reply-To: <20191010075004.192818-1-tfiga@chromium.org>
References: <20191010075004.192818-1-tfiga@chromium.org>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-TM-SNTS-SMTP: B90345DAD5A894277746B2A803C573FB68AC83DB838DD9C7583D5D1E62D8AAD32000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191010_014529_867372_693E407E 
X-CRM114-Status: GOOD (  16.34  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Nicolas Boichat <drinkcat@chromium.org>,
 Changqi Hu <Changqi.Hu@mediatek.com>, Mathias Nyman <mathias.nyman@intel.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-usb@vger.kernel.org,
 open list <linux-kernel@vger.kernel.org>, Shik Chen <shik@chromium.org>,
 "moderated list:ARM/Mediatek SoC
 support" <linux-mediatek@lists.infradead.org>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 "moderated list:ARM/Mediatek SoC support"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Hi, Tomasz,

On Thu, 2019-10-10 at 16:50 +0900, Tomasz Figa wrote:
> MediaTek XHCI host controller does not support 64-bit addressing despite
> the AC64 bit of HCCPARAMS1 register being set. The platform-specific
> glue sets the DMA mask to 32 bits on its own, but it has no effect,
> because xhci_gen_setup() overrides it according to hardware
> capabilities.
> 
> Use the XHCI_NO_64BIT_SUPPORT quirk to tell the XHCI core to force
> 32-bit DMA mask instead.
> 
> Signed-off-by: Tomasz Figa <tfiga@chromium.org>
> ---
>  drivers/usb/host/xhci-mtk.c | 10 +++++-----
>  1 file changed, 5 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/usb/host/xhci-mtk.c b/drivers/usb/host/xhci-mtk.c
> index b18a6baef204a..4d101d52cc11b 100644
> --- a/drivers/usb/host/xhci-mtk.c
> +++ b/drivers/usb/host/xhci-mtk.c
> @@ -395,6 +395,11 @@ static void xhci_mtk_quirks(struct device *dev, struct xhci_hcd *xhci)
>  	xhci->quirks |= XHCI_SPURIOUS_SUCCESS;
>  	if (mtk->lpm_support)
>  		xhci->quirks |= XHCI_LPM_SUPPORT;
> +	/*
> +	 * MTK host controller does not support 64-bit addressing, despite
> +	 * having the AC64 bit of the HCCPARAMS1 register set.
> +	 */
> +	xhci->quirks |= XHCI_NO_64BIT_SUPPORT;
Somes SoCs support 64bits in fact, so can't support this quirk, do you
encounter any issues without this quirk?

>  }

>  
>  /* called during probe() after chip reset completes */
> @@ -488,11 +493,6 @@ static int xhci_mtk_probe(struct platform_device *pdev)
>  		goto disable_clk;
>  	}
>  
> -	/* Initialize dma_mask and coherent_dma_mask to 32-bits */
> -	ret = dma_set_mask_and_coherent(dev, DMA_BIT_MASK(32));
> -	if (ret)
> -		goto disable_clk;
> -
>  	hcd = usb_create_hcd(driver, dev, dev_name(dev));
>  	if (!hcd) {
>  		ret = -ENOMEM;



_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
