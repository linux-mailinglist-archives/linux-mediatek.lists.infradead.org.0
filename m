Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E7EA324B5
	for <lists+linux-mediatek@lfdr.de>; Sun,  2 Jun 2019 22:01:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	From:Subject:To:Message-Id:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0VB1xmhboD9e3HMu12x3GhMUo14BsIEM/yeT0qV901c=; b=ErRiyDFaouHt0q
	rIpJ+joIWWg+IYf1xw++9DskJQ3dmlKl0DfY3tLsJN+x83mtWP+SGasdra0qCAIQE4oHnNuL3Dg/h
	v2mYzcbj5OgO62xea6CkRHNLTdO1qVXAnmvLaofQbaTb+amn2Bz1ra07vsJLlJ9dvQWru2M8uh9W5
	zV1z0sw54KiYi0k2Wao7YlGIkcQKso/z7mFFncrb6KYJmKezLiDY6swg7Fxrll8j3kH9MFnn8h0V4
	q6ePwdykfJIFHRCanzy/eScFXCpGGcU2chBYb1no2lQAPs48VfBxkLlSrkbcmxjzRYukazW+kK3nu
	YM6UlknCYnphj02OksBw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXWfh-0002xM-IS; Sun, 02 Jun 2019 20:01:37 +0000
Received: from shards.monkeyblade.net ([2620:137:e000::1:9])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXWfX-0002qe-0N; Sun, 02 Jun 2019 20:01:30 +0000
Received: from localhost (unknown [IPv6:2601:601:9f80:35cd::3d5])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id 7B8EE1400F7B4;
 Sun,  2 Jun 2019 13:01:21 -0700 (PDT)
Date: Sun, 02 Jun 2019 13:01:18 -0700 (PDT)
Message-Id: <20190602.130118.1624703340305098863.davem@davemloft.net>
To: biao.huang@mediatek.com
Subject: Re: [RESEND, PATCH 1/4] net: stmmac: dwmac-mediatek: enable
 Ethernet power domain
From: David Miller <davem@davemloft.net>
In-Reply-To: <1559209398-3607-2-git-send-email-biao.huang@mediatek.com>
References: <1559209398-3607-1-git-send-email-biao.huang@mediatek.com>
 <1559209398-3607-2-git-send-email-biao.huang@mediatek.com>
X-Mailer: Mew version 6.8 on Emacs 26.1
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Sun, 02 Jun 2019 13:01:22 -0700 (PDT)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190602_130127_080833_430F667D 
X-CRM114-Status: UNSURE (   7.49  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: andrew@lunn.ch, jianguo.zhang@mediatek.com, alexandre.torgue@st.com,
 boon.leong.ong@intel.com, netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 joabreu@synopsys.com, linux-mediatek@lists.infradead.org,
 mcoquelin.stm32@gmail.com, matthias.bgg@gmail.com, peppe.cavallaro@st.com,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

From: Biao Huang <biao.huang@mediatek.com>
Date: Thu, 30 May 2019 17:43:15 +0800

> @@ -364,6 +371,15 @@ static int mediatek_dwmac_probe(struct platform_device *pdev)
>  	return 0;
>  }
>  
> +static int mediatek_dwmac_remove(struct platform_device *pdev)
> +{
> +	int ret;
> +
> +	ret = stmmac_pltfr_remove(pdev);
> +
> +	return ret;
> +}
> +
>  static const struct of_device_id mediatek_dwmac_match[] = {
>  	{ .compatible = "mediatek,mt2712-gmac",
>  	  .data = &mt2712_gmac_variant },
> @@ -374,7 +390,7 @@ static int mediatek_dwmac_probe(struct platform_device *pdev)
>  
>  static struct platform_driver mediatek_dwmac_driver = {
>  	.probe  = mediatek_dwmac_probe,
> -	.remove = stmmac_pltfr_remove,
> +	.remove = mediatek_dwmac_remove,
>  	.driver = {
>  		.name           = "dwmac-mediatek",
>  		.pm		= &stmmac_pltfr_pm_ops,

This half of your patch has no effect and seems completely unnecessary.

Please remove it.

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
