Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DD05EB616E
	for <lists+linux-mediatek@lfdr.de>; Wed, 18 Sep 2019 12:28:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=G3MbaU7SWH83KsgYfdlXG76A6mxpTCwSFb/3h/3VYC8=; b=dkGm648R31VR6y
	I9XaGvXGt33V9z0mFZc5CiXaxs0wISIS9khpFCaO3fKk7D1vpJdO/+Clz7R6Ek84bzqpGtsFwQcso
	xvsvUzvMrfaiHcNIlmn9VgIk/IS4zavMxCR4Tyvn1xjOpyY9Yi5tqsBKvr4/ydwR9TswCSu4DGVJM
	zL8TzfTj7ShxhSS7UGv0YcARCGPIKSf3crXk8li/R1V5nZ2rr0FcrfFBcigBYEn3iw1emF1sEU9LV
	dROkJWBp5a0z4xuJD42ElrDOImTA6IVrFlWMNm0twwLBujDaDhdWlHqoRqe70aleRcRp4tEVcruCO
	pfu2rqxc7SP8jQl/d3bQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAXCR-0002fM-DX; Wed, 18 Sep 2019 10:28:39 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAXCC-0002V7-4i; Wed, 18 Sep 2019 10:28:26 +0000
Received: from localhost (unknown [122.178.229.153])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 295DB205F4;
 Wed, 18 Sep 2019 10:28:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1568802503;
 bh=NU/XZq0YjEUS1CaZjiEgjV/Mv/zFt98RSp0oEKn6bpU=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=OlpbDhJc/XVCrrvg80yx1mZCdGbXBOUYMa6om5ZKj5YNXWraiyble4+RQQF+k50ac
 Fivo3B1hhAenmy4QvJ2sGPlVggOT300c09DPVsaXnDC51oj3rHZCq1BaRSqn6mJyGJ
 fwADBKoOoMi18cBYp4pLnmel2LVxaTHjcDaV/P6U=
Date: Wed, 18 Sep 2019 15:57:15 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Satendra Singh Thakur <sst2005@gmail.com>
Subject: Re: [PATCH 0/9] added helper macros to remove duplicate code from
 probe functions of the platform drivers
Message-ID: <20190918102715.GO4392@vkoul-mobl>
References: <20190915070003.21260-1-sst2005@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190915070003.21260-1-sst2005@gmail.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190918_032824_806008_10B1B616 
X-CRM114-Status: GOOD (  11.91  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: lars@metafoo.de, maxime.ripard@bootlin.com, sean.wang@mediatek.com,
 linux-kernel@vger.kernel.org, afaerber@suse.de, dmaengine@vger.kernel.org,
 wens@csie.org, agross@kernel.org, linux-mediatek@lists.infradead.org,
 satendrasingh.thakur@hcl.com, manivannan.sadhasivam@linaro.org,
 matthias.bgg@gmail.com, dan.j.williams@intel.com, shawnguo@kernel.org,
 jun.nie@linaro.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On 15-09-19, 12:30, Satendra Singh Thakur wrote:
> 1. For most of the platform drivers's probe include following steps
> 
> -memory allocation for driver's private structure
> -getting io resources
> -io remapping resources
> -getting irq number
> -registering irq
> -setting driver's private data
> -getting clock
> -preparing and enabling clock

And we have perfect set of APIs for these tasks!

> 2. We have defined a set of macros to combine some or all of
> the above mentioned steps. This will remove redundant/duplicate
> code in drivers' probe functions of platform drivers.

Why, how does it help and you do realize it also introduces bugs

> devm_platform_probe_helper(pdev, priv, clk_name);
> devm_platform_probe_helper_clk(pdev, priv, clk_name);
> devm_platform_probe_helper_irq(pdev, priv, clk_name,
> irq_hndlr, irq_flags, irq_name, irq_devid);
> devm_platform_probe_helper_all(pdev, priv, clk_name,
> irq_hndlr, irq_flags, irq_name, irq_devid);
> devm_platform_probe_helper_all_data(pdev, priv, clk_name,
> irq_hndlr, irq_flags, irq_name, irq_devid);
> 
> 3. Code is made devres compatible (wherever required)
> The functions: clk_get, request_irq, kzalloc, platform_get_resource
> are replaced with their devm_* counterparts.

We already have devres APIs for people to use!
> 
> 4. Few bugs are also fixed.

Which ones..?

> 
> Satendra Singh Thakur (9):
>   probe/dma : added helper macros to remove redundant/duplicate code
>     from probe functions of the dma controller drivers
>   probe/dma/jz4740: removed redundant code from jz4740 dma controller's 
>        probe function
>   probe/dma/zx: removed redundant code from zx dma controller's probe
>     function
>   probe/dma/qcom-bam: removed redundant code from qcom bam dma
>     controller's probe function
>   probe/dma/mtk-hs: removed redundant code from mediatek hs dma
>     controller's probe function
>   probe/dma/sun6i: removed redundant code from sun6i dma controller's
>     probe function
>   probe/dma/sun4i: removed redundant code from sun4i dma controller's
>     probe function
>   probe/dma/axi: removed redundant code from axi dma controller's probe
>     function
>   probe/dma/owl: removed redundant code from owl dma controller's probe
>     function
> 
>  drivers/dma/dma-axi-dmac.c       |  28 ++---
>  drivers/dma/dma-jz4740.c         |  33 +++---
>  drivers/dma/mediatek/mtk-hsdma.c |  38 +++----
>  drivers/dma/owl-dma.c            |  29 ++---
>  drivers/dma/qcom/bam_dma.c       |  71 +++++-------
>  drivers/dma/sun4i-dma.c          |  30 ++----
>  drivers/dma/sun6i-dma.c          |  30 ++----
>  drivers/dma/zx_dma.c             |  35 ++----
>  include/linux/probe-helper.h     | 179 +++++++++++++++++++++++++++++++
>  9 files changed, 280 insertions(+), 193 deletions(-)
>  create mode 100644 include/linux/probe-helper.h
> 
> -- 
> 2.17.1

-- 
~Vinod

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
