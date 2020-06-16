Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FF3C1FAEDC
	for <lists+linux-mediatek@lfdr.de>; Tue, 16 Jun 2020 13:03:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Vl7QldI5x3mMEb7Nq777QIFx6pmbThKZypKovgkswNE=; b=RMN5gqsb7195QC
	eEjjDINRtEVL8Gg69aa39EvixRj3vVie/4qY/m5jye2N/GDu9hqonH/YhHVDxNe09Cw3jOUzOvAJ9
	QyVejDQCJp3fRu+3vEJ4z+8dH4TXb3Nyg20IUT/p2de+cSZ83l0rCD7G79j59wj73OeQdAzvSprtU
	A5+M6NaLxT4hGCTcqOspSliwMCOxolcIBEwjDdA0qUBGrm4kbwW+k6Mm5YSIMF/uBxHmJAeP1uZ+s
	6a/RalAZQbvzoBkCFRGIZYOaJb/NEsz2/PRGbVzGqi/YqBxKPnJhJ1ghoPzEUOgN3ZrXITCj6QdQv
	ODDZ9wjg6w5ZfvftKMwg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jl9Nc-0002V7-Ms; Tue, 16 Jun 2020 11:03:48 +0000
Received: from jabberwock.ucw.cz ([46.255.230.98])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jl9NO-0002K4-81; Tue, 16 Jun 2020 11:03:35 +0000
Received: by jabberwock.ucw.cz (Postfix, from userid 1017)
 id 0D7FF1C0C0A; Tue, 16 Jun 2020 13:03:33 +0200 (CEST)
Date: Tue, 16 Jun 2020 13:03:25 +0200
From: Pavel Machek <pavel@ucw.cz>
To: Fengping Yu <fengping.yu@mediatek.com>
Subject: Re: [PATCH v1 2/3] drivers: input: misc: Add mtk vibrator driver
Message-ID: <20200616110325.GL1718@bug>
References: <20200615114203.116656-1-fengping.yu@mediatek.com>
 <20200615114203.116656-3-fengping.yu@mediatek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200615114203.116656-3-fengping.yu@mediatek.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200616_040334_433607_A1AE80EA 
X-CRM114-Status: GOOD (  12.23  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Catalin Marinas <catalin.marinas@arm.com>,
 Dmitry Torokhov <dmitry.torokhov@gmail.com>,
 linux-mediatek@lists.infradead.org,
 Jacek Anaszewski <jacek.anaszewski@gmail.com>, linux-input@vger.kernel.org,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Yingjoe Chen <yingjoe.chen@mediatek.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Mon 2020-06-15 19:42:04, Fengping Yu wrote:
> From: "fengping.yu" <fengping.yu@mediatek.com>
> 
> This adds regulator vibrator driver for Mediatek SoCs.
> 
> Signed-off-by: fengping.yu <fengping.yu@mediatek.com>
> ---
>  drivers/input/misc/Kconfig              |  10 +
>  drivers/input/misc/Makefile             |   1 +
>  drivers/input/misc/regulator-vibrator.c | 422 ++++++++++++++++++++++++
>  3 files changed, 433 insertions(+)
>  create mode 100644 drivers/input/misc/regulator-vibrator.c
> 
> diff --git a/drivers/input/misc/Kconfig b/drivers/input/misc/Kconfig
> index 7e2e658d551c..71a0dd7a5271 100644
> --- a/drivers/input/misc/Kconfig
> +++ b/drivers/input/misc/Kconfig
> @@ -459,6 +459,16 @@ config INPUT_REGULATOR_HAPTIC
>  	  To compile this driver as a module, choose M here: the
>  	  module will be called regulator-haptic.
>  
> +config INPUT_REGULATOR_VIBRATOR

Can you look at input_regulator_haptic, and explain why you need separate driver?

										Pavel

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
