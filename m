Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BF78C8722F
	for <lists+linux-mediatek@lfdr.de>; Fri,  9 Aug 2019 08:21:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RK9+WJC5S37nySGYepSqPcLQRUGbII17SyC9OZTat8w=; b=ohRDznQJEGuFVi
	kZGubJnIqXr4gEz2pD6lADw6Caklk+JA6DPkoatTPVv2xSvxU2Xhnp3WjiRQeWyZ7xfSrxInEyBMN
	BLa7chJ3Ztv7PSXdMtTBTctk76K0GBSYgOQhCmrqEmEY8wBI4GS/1waCIGeVJtfe4Dy7BlIhk4Eru
	7l4dYpwqLrBCccuEcAIt2qNSL3R8S6I0RBvXOLND7BDLCGvClXnKkHtKHelbD34wNd1KWqqWr3qPz
	1OFSDVHaFkuEgjQpY0S9pmFvu5UcrqKaYrTZ3wZYkeFJQx1gIWKog47jZGk4sKoBFthRk77bh8gkG
	lnYLLfRB2JNC3pKhIF1Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvyH4-00081c-Hw; Fri, 09 Aug 2019 06:21:14 +0000
Received: from helcar.hmeau.com ([216.24.177.18] helo=fornost.hmeau.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvyGm-0007qc-BJ; Fri, 09 Aug 2019 06:20:58 +0000
Received: from gondolin.me.apana.org.au ([192.168.0.6]
 helo=gondolin.hengli.com.au)
 by fornost.hmeau.com with esmtps (Exim 4.89 #2 (Debian))
 id 1hvyG7-0007PS-Tu; Fri, 09 Aug 2019 16:20:16 +1000
Received: from herbert by gondolin.hengli.com.au with local (Exim 4.80)
 (envelope-from <herbert@gondor.apana.org.au>)
 id 1hvyFz-0002sF-Ec; Fri, 09 Aug 2019 16:20:07 +1000
Date: Fri, 9 Aug 2019 16:20:07 +1000
From: Herbert Xu <herbert@gondor.apana.org.au>
To: YueHaibing <yuehaibing@huawei.com>
Subject: Re: [PATCH -next 00/12] crypto: use devm_platform_ioremap_resource()
 to simplify code
Message-ID: <20190809062007.GP10392@gondor.apana.org.au>
References: <20190802132809.8116-1-yuehaibing@huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190802132809.8116-1-yuehaibing@huawei.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190808_232056_710661_F7505EB2 
X-CRM114-Status: UNSURE (   7.77  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: heiko@sntech.de, gary.hook@amd.com, clabbe.montjoie@gmail.com,
 linux-arm-kernel@axis.com, jamie@jamieiles.com,
 linux-stm32@st-md-mailman.stormreply.com, jesper.nilsson@axis.com,
 linux-samsung-soc@vger.kernel.org, kgene@kernel.org, krzk@kernel.org,
 linux-rockchip@lists.infradead.org, wens@csie.org, agross@kernel.org,
 thomas.lendacky@amd.com, alexandre.torgue@st.com, antoine.tenart@bootlin.com,
 linux-arm-msm@vger.kernel.org, mripard@kernel.org,
 linux-mediatek@lists.infradead.org, lars.persson@axis.com,
 matthias.bgg@gmail.com, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-crypto@vger.kernel.org,
 mcoquelin.stm32@gmail.com, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Fri, Aug 02, 2019 at 09:27:57PM +0800, YueHaibing wrote:
> devm_platform_ioremap_resource() internally have platform_get_resource()
> and devm_ioremap_resource() in it. So instead of calling them separately
> use devm_platform_ioremap_resource() directly.
> 
> YueHaibing (12):
>   crypto: artpec6 - use devm_platform_ioremap_resource() to simplify
>     code
>   crypto: ccp - use devm_platform_ioremap_resource() to simplify code
>   crypto: exynos - use devm_platform_ioremap_resource() to simplify code
>   crypto: img-hash - use devm_platform_ioremap_resource() to simplify
>     code
>   crypto: inside-secure - use devm_platform_ioremap_resource() to
>     simplify code
>   crypto: mediatek - use devm_platform_ioremap_resource() to simplify
>     code
>   crypto: picoxcell - use devm_platform_ioremap_resource() to simplify
>     code
>   crypto: sunxi-ss - use devm_platform_ioremap_resource() to simplify
>     code
>   crypto: rockchip - use devm_platform_ioremap_resource() to simplify
>     code
>   crypto: stm32 - use devm_platform_ioremap_resource() to simplify code
>   crypto: qce - use devm_platform_ioremap_resource() to simplify code
>   crypto: qcom-rng - use devm_platform_ioremap_resource() to simplify
>     code
> 
>  drivers/crypto/axis/artpec6_crypto.c    | 4 +---
>  drivers/crypto/ccp/sp-platform.c        | 4 +---
>  drivers/crypto/exynos-rng.c             | 4 +---
>  drivers/crypto/img-hash.c               | 4 +---
>  drivers/crypto/inside-secure/safexcel.c | 4 +---
>  drivers/crypto/mediatek/mtk-platform.c  | 3 +--
>  drivers/crypto/picoxcell_crypto.c       | 5 ++---
>  drivers/crypto/qce/core.c               | 4 +---
>  drivers/crypto/qcom-rng.c               | 4 +---
>  drivers/crypto/rockchip/rk3288_crypto.c | 4 +---
>  drivers/crypto/stm32/stm32-crc32.c      | 4 +---
>  drivers/crypto/stm32/stm32-cryp.c       | 4 +---
>  drivers/crypto/sunxi-ss/sun4i-ss-core.c | 4 +---
>  13 files changed, 14 insertions(+), 38 deletions(-)

All applied.  Thanks.
-- 
Email: Herbert Xu <herbert@gondor.apana.org.au>
Home Page: http://gondor.apana.org.au/~herbert/
PGP Key: http://gondor.apana.org.au/~herbert/pubkey.txt

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
