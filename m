Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BCA81C5EDF
	for <lists+linux-mediatek@lfdr.de>; Tue,  5 May 2020 19:31:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lxOIoRTozDR/r7Y26Iw8MqmLpgCTO6X+rZiHCIH5n64=; b=u8o6UDP/jmJ9Bl
	nzVXRd1VU4QfMye7iA41PHORc8RfqFJR5PN/xFDnJufemWIUz3soC2kUA4ddqtZ1/eTnZwEdoCl/l
	nedqAesgUemlptGnXBn7BeXKBdouoAD5jZPtrgxHwJgr4MgSFAkYh2aOKOTu9tk1wka2du8GThQSO
	FMMvZEFmZ/rOG5eD6Bg6DQMCFoaVzTeCMHBlt6/PbtNGpqzJZ8ZN+x3E3L1Gb9N8Bw+9dv1n/BZ0s
	Xq7jd7hMhBy42PpH66L9TnWiC+5XIaMXRMZuekcpBc4waiqkvbTGX7/MbI+ETy36SdITmFDmxACtY
	gW8onXiFlo8/J2R25Bvw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jW1Pc-0003ah-BP; Tue, 05 May 2020 17:31:20 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jW1PR-0003Ox-Cq; Tue, 05 May 2020 17:31:11 +0000
Received: from kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com (unknown
 [163.114.132.1])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id B9FE720721;
 Tue,  5 May 2020 17:31:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588699868;
 bh=RzTvVkH2WVsAJ6Ltt5T27ZrW2749b4NieHGvxtLnG9U=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=tS/u1wcR0Q37TVJw/uE8YgnBhtgDScfuck9IX7Q0iLQGTfwFyd8odJaD2kcrM82p6
 HjikTR5ZOMjXfxiIlj5H/zEWp1Gzef+QoT68Q1tJlotQrUUW0jX83S4VT/HyNN8eNj
 i+2HZEa5Zj1G4Fze1Kx4NNapdEWOsffuC7brNBus=
Date: Tue, 5 May 2020 10:31:05 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Bartosz Golaszewski <brgl@bgdev.pl>
Subject: Re: [PATCH 05/11] net: core: provide devm_register_netdev()
Message-ID: <20200505103105.1c8b0ce3@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
In-Reply-To: <20200505140231.16600-6-brgl@bgdev.pl>
References: <20200505140231.16600-1-brgl@bgdev.pl>
 <20200505140231.16600-6-brgl@bgdev.pl>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200505_103109_451617_2FECB17C 
X-CRM114-Status: GOOD (  16.81  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, Felix Fietkau <nbd@openwrt.org>,
 Arnd Bergmann <arnd@arndb.de>, Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 netdev@vger.kernel.org, Sean Wang <sean.wang@mediatek.com>,
 linux-kernel@vger.kernel.org, Mark Lee <Mark-MC.Lee@mediatek.com>,
 Fabien Parent <fparent@baylibre.com>, Rob Herring <robh+dt@kernel.org>,
 linux-mediatek@lists.infradead.org, John Crispin <john@phrozen.org>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 "David S . Miller" <davem@davemloft.net>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Tue,  5 May 2020 16:02:25 +0200 Bartosz Golaszewski wrote:
> From: Bartosz Golaszewski <bgolaszewski@baylibre.com>
> 
> Provide devm_register_netdev() - a device resource managed variant
> of register_netdev(). This new helper will only work for net_device
> structs that have a parent device assigned and are devres managed too.
> 
> Signed-off-by: Bartosz Golaszewski <bgolaszewski@baylibre.com>

> diff --git a/net/core/dev.c b/net/core/dev.c
> index 522288177bbd..99db537c9468 100644
> --- a/net/core/dev.c
> +++ b/net/core/dev.c
> @@ -9519,6 +9519,54 @@ int register_netdev(struct net_device *dev)
>  }
>  EXPORT_SYMBOL(register_netdev);
>  
> +struct netdevice_devres {
> +	struct net_device *ndev;
> +};

Is there really a need to define a structure if we only need a pointer?

> +static void devm_netdev_release(struct device *dev, void *this)
> +{
> +	struct netdevice_devres *res = this;
> +
> +	unregister_netdev(res->ndev);
> +}
> +
> +/**
> + *	devm_register_netdev - resource managed variant of register_netdev()
> + *	@ndev: device to register
> + *
> + *	This is a devres variant of register_netdev() for which the unregister
> + *	function will be call automatically when the parent device of ndev
> + *	is detached.
> + */
> +int devm_register_netdev(struct net_device *ndev)
> +{
> +	struct netdevice_devres *dr;
> +	int ret;
> +
> +	/* struct net_device itself must be devres managed. */
> +	BUG_ON(!(ndev->priv_flags & IFF_IS_DEVRES));
> +	/* struct net_device must have a parent device - it will be the device
> +	 * managing this resource.
> +	 */
> +	BUG_ON(!ndev->dev.parent);

Please convert those to WARN_ON, and return an error. No need to crash
the kernel.

> +	dr = devres_alloc(devm_netdev_release, sizeof(*dr), GFP_KERNEL);
> +	if (!dr)
> +		return -ENOMEM;
> +
> +	ret = register_netdev(ndev);
> +	if (ret) {
> +		devres_free(dr);
> +		return ret;
> +	}
> +
> +	dr->ndev = ndev;
> +	devres_add(ndev->dev.parent, dr);
> +
> +	return 0;
> +}
> +EXPORT_SYMBOL(devm_register_netdev);

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
