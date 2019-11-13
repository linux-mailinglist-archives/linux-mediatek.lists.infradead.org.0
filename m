Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 25967FAC6C
	for <lists+linux-mediatek@lfdr.de>; Wed, 13 Nov 2019 09:56:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=uYBeTIDxpsUBfnPvGZ6Kw2e3bJu5nYrv5ei8c1WpXao=; b=Cio/bDRRmCnn37E9JyflH7bVq
	Kkyg0S2cXVtSP0j0cDfZZfyS7ov5CD8zZCcNopSx4BYTuSE0k/u050IB/JNhq0iVoNtcoztVGoKeC
	zQY0gg6ntg+wY2BGtQpxZYhK9ZIZTVpSjYhJ9uESF/FgRrS/VZlpQ9PaveN3TTLZVLibl/J0yWNoI
	RqpY1bxXK/l9wv8hrdVOLif0HRTkVh/lzoC/JbGuv7Ll0XUT7PW9uUOHZk6E2/HEq4j+sw5OcDidK
	BtHj4/UKKHMEP/3vP1QWu3vhwK7RZ9FVIPcbwDNAJIrLflrcg+G2FdVYTxSoPBN1C7LYJijCvscK0
	yVcGJOJxw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUoRn-0004HV-UJ; Wed, 13 Nov 2019 08:56:19 +0000
Received: from relay3-d.mail.gandi.net ([217.70.183.195])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUoPh-0000mg-0e; Wed, 13 Nov 2019 08:54:10 +0000
X-Originating-IP: 93.34.114.233
Received: from uno.localdomain (93-34-114-233.ip49.fastwebnet.it
 [93.34.114.233]) (Authenticated sender: jacopo@jmondi.org)
 by relay3-d.mail.gandi.net (Postfix) with ESMTPSA id 30C766000E;
 Wed, 13 Nov 2019 08:53:57 +0000 (UTC)
Date: Wed, 13 Nov 2019 09:55:58 +0100
From: Jacopo Mondi <jacopo@jmondi.org>
To: Matti Vaittinen <matti.vaittinen@fi.rohmeurope.com>
Subject: Re: [PATCH 1/2] pinctrl: rza1: remove unnecerssary static inline
 function
Message-ID: <20191113085558.l6rde7xug3paoojf@uno.localdomain>
References: <20191112141748.GA22061@localhost.localdomain>
MIME-Version: 1.0
In-Reply-To: <20191112141748.GA22061@localhost.localdomain>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191113_005409_342117_4298E33A 
X-CRM114-Status: GOOD (  17.45  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.195 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [217.70.183.195 listed in wl.mailspike.net]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Geert Uytterhoeven <geert+renesas@glider.be>, mazziesaccount@gmail.com,
 Linus Walleij <linus.walleij@linaro.org>, linux-kernel@vger.kernel.org,
 linux-renesas-soc@vger.kernel.org, linux-gpio@vger.kernel.org,
 linux-mediatek@lists.infradead.org, Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============5186887116225133647=="
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org


--===============5186887116225133647==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="bwknto7takkwphs5"
Content-Disposition: inline


--bwknto7takkwphs5
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline

Hi Matti,

On Tue, Nov 12, 2019 at 04:17:48PM +0200, Matti Vaittinen wrote:
> Having static inline oneliner does not benefit too much when it is
> only called from another oneliner function. Remove some of the
> 'onion'. This simplifies also the coming usage of the gpiolib
> defines. We can do conversion from chip bits to gpiolib direction
> defines as last step in the get_direction callback. Drivers can
> use chip specific values in driver internal functions and do
> conversion only once.

I assume your: "[PATCH 2/2] pinctrl: Use new GPIO_LINE_DIRECTION"
supersedes this one, am I right ?

Thanks
  j

>
> Signed-off-by: Matti Vaittinen <matti.vaittinen@fi.rohmeurope.com>
> ---
>  drivers/pinctrl/pinctrl-rza1.c | 8 +-------
>  1 file changed, 1 insertion(+), 7 deletions(-)
>
> diff --git a/drivers/pinctrl/pinctrl-rza1.c b/drivers/pinctrl/pinctrl-rza1.c
> index 017fc6b3e27e..215db220d795 100644
> --- a/drivers/pinctrl/pinctrl-rza1.c
> +++ b/drivers/pinctrl/pinctrl-rza1.c
> @@ -617,12 +617,6 @@ static void rza1_pin_reset(struct rza1_port *port, unsigned int pin)
>  	spin_unlock_irqrestore(&port->lock, irqflags);
>  }
>
> -static inline int rza1_pin_get_direction(struct rza1_port *port,
> -					 unsigned int pin)
> -{
> -	return !!rza1_get_bit(port, RZA1_PM_REG, pin);
> -}
> -
>  /**
>   * rza1_pin_set_direction() - set I/O direction on a pin in port mode
>   *
> @@ -783,7 +777,7 @@ static int rza1_gpio_get_direction(struct gpio_chip *chip, unsigned int gpio)
>  {
>  	struct rza1_port *port = gpiochip_get_data(chip);
>
> -	return rza1_pin_get_direction(port, gpio);
> +	return !!rza1_get_bit(port, RZA1_PM_REG, gpio);
>  }
>
>  static int rza1_gpio_direction_input(struct gpio_chip *chip,
>
> base-commit: 70d97e099bb426ecb3ad4bf31e88dbf2ef4b2e4c
> --
> 2.21.0
>
>
> --
> Matti Vaittinen, Linux device drivers
> ROHM Semiconductors, Finland SWDC
> Kiviharjunlenkki 1E
> 90220 OULU
> FINLAND
>
> ~~~ "I don't think so," said Rene Descartes. Just then he vanished ~~~
> Simon says - in Latin please.
> ~~~ "non cogito me" dixit Rene Descarte, deinde evanescavit ~~~
> Thanks to Simon Glass for the translation =]

--bwknto7takkwphs5
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEtcQ9SICaIIqPWDjAcjQGjxahVjwFAl3LxR4ACgkQcjQGjxah
Vjzu3A//VcmxB+zLrhFkIPEXStslWNxWBzlOPrVt1zEIGbpxgVBin7IaP30h4gml
GrPxtZom3KkKbzbIYlS5syNycjxUT3NjYs2Yur4DBnAhvkoxrFLfprhjjX0fL170
18RZJoH74NJYsjiDzbRRJQfN6JSNVgJ0XFCyLmQKhBA5K7UC4BT2hSvsLzzQ0neJ
jXhtQ+VKayIDQ/lUArvoABE7V6wX+F4app7eZ+xkSPq1ptUByob6mr9wV7WMONNh
qBd+U/+nV8ywD3qUWwDt//77FGZYbXM/mdKf3moYnvD8BYTaIA0l4MRoYuAh0bKg
SLimFdCoBznxP4syuhiil5aDYhY21fK3XymjbBnoKHw3SlmJn2488eOdiDy1ErCy
dT258CLPbO6YyI1aNxyZyIlWhWlavkM5/FvS4R+IUIJzJiT177gSWD2uTX0i8kd4
3GIF63YcoUaJjNDGMRMla4tbDOgee3mdssRWDEynQlmYu3AV6krBF0tkRU8JaIaE
l0kSRUPo6bxWsH+HFhNrXMGP3JSrfU26cR7t+V9intAxWaGmteXZV2ph1CjeMW8e
gsa0GSGjvm5aEganXEi1pXoHD+5Fg34/6UHY7XYYQXkaFl7f92Cmkoc4EomfWkAR
kpwLSvI76WXbaP6bKEH7FqWAyUcHEIzrBMqIWYBKx90aHEWiRAs=
=SZJk
-----END PGP SIGNATURE-----

--bwknto7takkwphs5--


--===============5186887116225133647==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek

--===============5186887116225133647==--

