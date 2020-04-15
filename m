Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 98CC11AABC4
	for <lists+linux-mediatek@lfdr.de>; Wed, 15 Apr 2020 17:25:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=reHF+bx5fTHFSDniJiKzCndktYZ4oTeYEo7LX0fFDJs=; b=M2Ysa2xCknd17g
	rYzjirSHLVuHxNA+6z0/rKYgdUbokRA0BitR34eU3Z/XMSowqD+Y7n42xcBECCbXnf7ksFwIKzzxX
	6a9f/FY2NPCiMt5fPclsL42Rm0ctmlyBnP5RlK+51o+BTf9nsV4rf73pDClkBtVwzc2OodwQQvGJZ
	BuYg1/indjHTXAVSYytBHbtmoaJBXPX+88pca8kPsI0354v8Bu4zaRlX3iWcmAMJPWs/4dqWSP0JF
	vZH0xv9AJDf8Myq/mjvIaWXTtf7N/YVNfK4QgXGDNMFzNcK3pgAWBe7hUecbyBkPDVTi3DkvJxjPp
	ilZjyVRIf5nSPX/YSP3w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOjuz-0006aR-DR; Wed, 15 Apr 2020 15:25:37 +0000
Received: from [2601:1c0:6280:3f0::19c2]
 by bombadil.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOjuw-0006aD-Ab; Wed, 15 Apr 2020 15:25:35 +0000
Subject: Re: [PATCH 2/2] soc: mediatek: Add mtk-mmdvfs driver
To: Anthony Huang <anthony.huang@mediatek.com>,
 Rob Herring <robh+dt@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>
References: <1586949506-22990-1-git-send-email-anthony.huang@mediatek.com>
 <1586949506-22990-3-git-send-email-anthony.huang@mediatek.com>
From: Randy Dunlap <rdunlap@infradead.org>
Message-ID: <1296cbb7-c470-4169-8499-89f723308f85@infradead.org>
Date: Wed, 15 Apr 2020 08:25:32 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <1586949506-22990-3-git-send-email-anthony.huang@mediatek.com>
Content-Language: en-US
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
Cc: devicetree@vger.kernel.org, linux-mediatek@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 wsd_upstream@mediatek.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Hi--


On 4/15/20 4:18 AM, Anthony Huang wrote:
> Mediatek MMDVFS driver is used to set clk for Mediatek multimedia
> hardwares. The MMDVFS registers a regulator callback and multimedia

  hardware.

> hardwares set voltage by regulator API and then this callback will be

  hardware

> triggered. The MMDVFS will get current opp level from opp table according
> to the voltage, and then the MMDVFS sets all the clock MUXs to the clock
> sources according to the opp level.
> 
> On some platforms, both clock MUX and frequency hopping need to be used
> together. The MMDVFS supports these two clock setting methods and the
> execution sequence of them can be configured in DTS.
> 
> Signed-off-by: Anthony Huang <anthony.huang@mediatek.com>
> ---
>  drivers/soc/mediatek/Kconfig      |    9 ++
>  drivers/soc/mediatek/Makefile     |    1 +
>  drivers/soc/mediatek/mtk-mmdvfs.c |  312 +++++++++++++++++++++++++++++++++++++
>  3 files changed, 322 insertions(+)
>  create mode 100644 drivers/soc/mediatek/mtk-mmdvfs.c
> 
> diff --git a/drivers/soc/mediatek/Kconfig b/drivers/soc/mediatek/Kconfig
> index 2114b56..e92762b 100644
> --- a/drivers/soc/mediatek/Kconfig
> +++ b/drivers/soc/mediatek/Kconfig
> @@ -44,4 +44,13 @@ config MTK_SCPSYS
>  	  Say yes here to add support for the MediaTek SCPSYS power domain
>  	  driver.
>  
> +config MTK_MMDVFS
> +	tristate "MediaTek MMDVFS Support"
> +	depends on ARCH_MEDIATEK || COMPILE_TEST
> +	help
> +	  Say yes here to add support for the MediaTek Multimedia DVFS (MMDVFS)
> +	  driver. The MMDVFS is used to set clk for Mediatek multimedia hardwares

	                                                                hardware,

> +	  , such as display, camera, mdp and video codec. Say no if your device

	  ^drop that comma.

> +	  does not need to do DVFS for Multimedia hardwares.

	                                          hardware.

> +
>  endmenu


thanks.
-- 
~Randy


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
