Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D31BC132439
	for <lists+linux-mediatek@lfdr.de>; Tue,  7 Jan 2020 11:55:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:To:From:Subject:Message-ID:Reply-To:
	Cc:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=KRCRdd8gazM9NK4AmNv/UnFcD+rxKJ+SWTUnz8FjrYo=; b=DipS48b8f36q3zWkfuiLpEQsN
	FPpcj2QL+1iJ6N3cAWGnqiV7MRfkFOVIgF7EwuSNoW+GkfD7fdfwauUxWQcsWvhfQ2qyaDD4GwfCP
	OzxYYK2ywj0MZg7pbt0TUXRA5uPavLnYgkfBmVGtElz4tRHlIn6ALTkXc64HY3tlTgjY64XKXC9cN
	NPodSwLx98h4tVrPbfNESGi4jW2wCtb4iLK3JNFGAw+XLcQdcBJpWLOr0Ei5QgN4Tz9JOC1Rr5LMk
	HkJEy5/e1wnBMeAVQLZoBA0RtosMQEJakjdoE7/TjyfkfAnl7R5tiPKSu5f8edO/lfYOs4v/EVjx2
	zGiHTXTJA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iomWG-0006QF-Qo; Tue, 07 Jan 2020 10:55:28 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iomVo-0004uY-RU; Tue, 07 Jan 2020 10:55:02 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id 3E7A7AD05;
 Tue,  7 Jan 2020 10:54:58 +0000 (UTC)
Message-ID: <9fde9b416b281648e99b3ce430229e89c5b1a653.camel@suse.de>
Subject: Re: [PATCH 25/32] pwm: brcmstb: convert to
 devm_platform_ioremap_resource
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: Yangtao Li <tiny.windzz@gmail.com>, claudiu.beznea@microchip.com, 
 thierry.reding@gmail.com, u.kleine-koenig@pengutronix.de, 
 nicolas.ferre@microchip.com, alexandre.belloni@bootlin.com, 
 ludovic.desroches@microchip.com, rjui@broadcom.com, sbranden@broadcom.com, 
 bcm-kernel-feedback-list@broadcom.com, f.fainelli@gmail.com,
 shc_work@mail.ru,  shawnguo@kernel.org, s.hauer@pengutronix.de,
 kernel@pengutronix.de,  festevam@gmail.com, linux-imx@nxp.com,
 vz@mleia.com, slemieux.tyco@gmail.com,  khilman@baylibre.com,
 matthias.bgg@gmail.com, heiko@sntech.de, palmer@dabbelt.com, 
 paul.walmsley@sifive.com, mripard@kernel.org, wens@csie.org,
 jonathanh@nvidia.com,  linux@prisktech.co.nz,
 linux-arm-kernel@lists.infradead.org,  linux-pwm@vger.kernel.org,
 linux-kernel@vger.kernel.org,  linux-rpi-kernel@lists.infradead.org,
 linux-amlogic@lists.infradead.org,  linux-mediatek@lists.infradead.org,
 linux-rockchip@lists.infradead.org,  linux-riscv@lists.infradead.org,
 linux-tegra@vger.kernel.org
Date: Tue, 07 Jan 2020 11:54:53 +0100
In-Reply-To: <20191229080610.7597-25-tiny.windzz@gmail.com>
References: <20191229080610.7597-1-tiny.windzz@gmail.com>
 <20191229080610.7597-25-tiny.windzz@gmail.com>
User-Agent: Evolution 3.34.2 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200107_025501_035355_7724B3FF 
X-CRM114-Status: GOOD (  12.51  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [195.135.220.15 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Content-Type: multipart/mixed; boundary="===============2882215249651218526=="
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org


--===============2882215249651218526==
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-PicWM6Keq9fqFpxdhA9f"


--=-PicWM6Keq9fqFpxdhA9f
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Sun, 2019-12-29 at 08:06 +0000, Yangtao Li wrote:
> Use devm_platform_ioremap_resource() to simplify code.
>=20
> Signed-off-by: Yangtao Li <tiny.windzz@gmail.com>
> ---

Reviewed-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>

Thanks!

>  drivers/pwm/pwm-brcmstb.c | 4 +---
>  1 file changed, 1 insertion(+), 3 deletions(-)
>=20
> diff --git a/drivers/pwm/pwm-brcmstb.c b/drivers/pwm/pwm-brcmstb.c
> index fea612c45f20..8b66f9d2f589 100644
> --- a/drivers/pwm/pwm-brcmstb.c
> +++ b/drivers/pwm/pwm-brcmstb.c
> @@ -234,7 +234,6 @@ MODULE_DEVICE_TABLE(of, brcmstb_pwm_of_match);
>  static int brcmstb_pwm_probe(struct platform_device *pdev)
>  {
>  	struct brcmstb_pwm *p;
> -	struct resource *res;
>  	int ret;
> =20
>  	p =3D devm_kzalloc(&pdev->dev, sizeof(*p), GFP_KERNEL);
> @@ -262,8 +261,7 @@ static int brcmstb_pwm_probe(struct platform_device *=
pdev)
>  	p->chip.base =3D -1;
>  	p->chip.npwm =3D 2;
> =20
> -	res =3D platform_get_resource(pdev, IORESOURCE_MEM, 0);
> -	p->base =3D devm_ioremap_resource(&pdev->dev, res);
> +	p->base =3D devm_platform_ioremap_resource(pdev, 0);
>  	if (IS_ERR(p->base)) {
>  		ret =3D PTR_ERR(p->base);
>  		goto out_clk;


--=-PicWM6Keq9fqFpxdhA9f
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEErOkkGDHCg2EbPcGjlfZmHno8x/4FAl4UY30ACgkQlfZmHno8
x/7/aAf7BW2itFl3TLtG03hnquQwqo+DGR4GEFXlXS0y7tCwQNw/r7LWRi5SHWqI
Fq6j3OYwhEhv1zZNfDN+lUmZdX10MHKOrnk6wdu89kgT1ebWaQ2Pwf6TCqZtwWia
y/2eh5++1G9168GQTuyG3BjaSaVFwwVKe4+gbtIMc6RPU9xWbQSC6LsIq+a66EvW
3sXdIQJUp0WcQuFcnQhD9OUgVRZedCRpu7rj7Tezr5Ks+lL91fItKsOwdSKyTfWh
ZLbQ3yaz45FUSkZVP9388WNvi2lUIEn2VaX9QX3PrmhyKlwlyhfioTTj47wDotkU
KLQMm16Gyns5z+15tvGm5+m8oZ61FA==
=Sn4O
-----END PGP SIGNATURE-----

--=-PicWM6Keq9fqFpxdhA9f--



--===============2882215249651218526==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek

--===============2882215249651218526==--


