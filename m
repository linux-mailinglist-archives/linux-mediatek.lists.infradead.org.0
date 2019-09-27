Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 96F0EC042F
	for <lists+linux-mediatek@lfdr.de>; Fri, 27 Sep 2019 13:28:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=QECSFkY7/sN9vVbh5c0DVf7S7CibEH+uxuuRfBOk09g=; b=Dqif20Fefz7ogefo9tbCZSTkR
	yYSbGsorE+HxVlQi+YzH1Kt7jWzNpxibR6mj49ucnmck1in0+5tCS6DWJ29h7wq3rBoWw6gjfGzVC
	LLuiwlSWOJRivgsvvZgNLzKTrj+282Yac6TB9NNNuROPexmjN6Q5yas8xEDUVqxn3K5vOwlKz+ZVw
	GaBAJws4pY9wDfryhD5UN1EdU6Ba0nITjWSwvcaGhYkawKJU+lnqm4Q5GtMMN5R1GC9crdbDSoci+
	LE+fw4+TUubtdUcFnI19zWX9SkmsH4Eyf3JGPw/hWYkkO8561cnsrXoptDVUoHDu11LSx+q9zqIJt
	wFHnKF12Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDoQX-0000Hr-5n; Fri, 27 Sep 2019 11:28:45 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDoQT-0000Gy-NU
 for linux-mediatek@lists.infradead.org; Fri, 27 Sep 2019 11:28:43 +0000
Received: by mail-wm1-x344.google.com with SMTP id 7so6199839wme.1
 for <linux-mediatek@lists.infradead.org>; Fri, 27 Sep 2019 04:28:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=iC7YibXeilwC0gLOPJ3BMTQ4w4cpiz8fv4f+n17nhsM=;
 b=phEeBMCPVhoi3oKKGWLWfjqkE/RffCqzX3mbEVAvdNajlR5ixI9FW4oPwzE3xFHAq5
 105bM4HvxG5xjgrMjU/mnbdw/UgJ9LLU1zw8oreU1hG4drEtN7mtBinkXH63JYA5hRUR
 BxmWlvyhXL/CYsluPSIdMIXow6dH8sMZeGMoxnSJ1MteTvq0LbH3XKhEtecFCn9iNMnP
 UJxMm0n6Uq+SskylQn65ly1b5XdqCVeCNMizrPqIoKzG8il7KhzxAg70innewiBg9c2b
 nQcPHAUydFHNhhYqJ1lvfAGxDm1xTBy1ylgFelO/V4B9Atv5PRTyDZRSSgKvZvRk10hE
 J6Ig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=iC7YibXeilwC0gLOPJ3BMTQ4w4cpiz8fv4f+n17nhsM=;
 b=OghqgprZayZ7kz2CMfbOwFA0LNBeFZ14p21qTFP6rcTv3TJGWoDQ3L5E4UOiz/Zxyi
 uadxpeKKSFTitIBj06RNGN/i7TtRgXLU9by/ze1slWlJCZ1lTTQEWZbbzhywk+jzYk8O
 QdilzDYjOpHVda4VsySmCkYB+i2o4E2gtrb/YQauUs0O0WsSq6zB0HcqF64k3Xf6GCUc
 Wpr2ulqZU+zUgOMvJk2X1UuDmiNta/OGViHv2XKcpAmKjcI8ROFnDbHV6NmDjY3MNRmP
 GTBrjO8SVSy6qlaYW998U6BaeKE2e4fPGelFWUzF+Fu0w+aRAw5aZ1HjOrOys2kJSRxS
 VScQ==
X-Gm-Message-State: APjAAAXjaWdP/dX80bt5tl7JuVkphER8MXSAmHHSPf2dNGFH2IEyToM6
 L0DfocnT/SerfrtgLaBxDu4=
X-Google-Smtp-Source: APXvYqxe3jLdGyoh5bEEJk3RfqsyTk/E933I6cEi801ksIiy8GDTIH8nq5KTX2XRXpvzC7jjWF8bZA==
X-Received: by 2002:a1c:454:: with SMTP id 81mr6593016wme.119.1569583719861;
 Fri, 27 Sep 2019 04:28:39 -0700 (PDT)
Received: from localhost (p2E5BE2CE.dip0.t-ipconnect.de. [46.91.226.206])
 by smtp.gmail.com with ESMTPSA id p85sm10863831wme.23.2019.09.27.04.28.38
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 27 Sep 2019 04:28:38 -0700 (PDT)
Date: Fri, 27 Sep 2019 13:28:31 +0200
From: Thierry Reding <thierry.reding@gmail.com>
To: Sam Shih <sam.shih@mediatek.com>
Subject: Re: [PATCH v10 08/12] pwm: mediatek: Add MT7629 compatible string
Message-ID: <20190927112831.GA1171568@ulmo>
References: <1569421957-20765-1-git-send-email-sam.shih@mediatek.com>
 <1569421957-20765-9-git-send-email-sam.shih@mediatek.com>
MIME-Version: 1.0
In-Reply-To: <1569421957-20765-9-git-send-email-sam.shih@mediatek.com>
User-Agent: Mutt/1.12.2 (2019-09-21)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190927_042841_789838_BA3FDE2E 
X-CRM114-Status: GOOD (  13.79  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (thierry.reding[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>, linux-pwm@vger.kernel.org,
 Ryder Lee <ryder.lee@mediatek.com>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 linux-mediatek@lists.infradead.org, John Crispin <john@phrozen.org>,
 Matthias Brugger <matthias.bgg@gmail.com>
Content-Type: multipart/mixed; boundary="===============6096961051883250003=="
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org


--===============6096961051883250003==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="Nq2Wo0NMKNjxTN9z"
Content-Disposition: inline


--Nq2Wo0NMKNjxTN9z
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Sep 25, 2019 at 10:32:33PM +0800, Sam Shih wrote:
> This adds pwm support for MT7629, and separate mt7629 compatible string
> from mt7622
>=20
> Signed-off-by: Sam Shih <sam.shih@mediatek.com>
> ---
>  drivers/pwm/pwm-mediatek.c | 6 ++++++
>  1 file changed, 6 insertions(+)

I picked this patch up and made some minor adjustments to make it build
without the num_pwms patches. With that I don't think there's anything
left from this series that you need.

Let me know if that's not true.

Thierry

>=20
> diff --git a/drivers/pwm/pwm-mediatek.c b/drivers/pwm/pwm-mediatek.c
> index ce7525d8d71b..7035abfbdc6a 100644
> --- a/drivers/pwm/pwm-mediatek.c
> +++ b/drivers/pwm/pwm-mediatek.c
> @@ -307,11 +307,17 @@ static const struct pwm_mediatek_of_data mt7628_pwm=
_data =3D {
>  	.pwm45_fixup =3D true,
>  };
> =20
> +static const struct pwm_mediatek_of_data mt7629_pwm_data =3D {
> +	.fallback_npwms =3D 1,
> +	.pwm45_fixup =3D false,
> +};
> +
>  static const struct of_device_id pwm_mediatek_of_match[] =3D {
>  	{ .compatible =3D "mediatek,mt2712-pwm", .data =3D &mt2712_pwm_data },
>  	{ .compatible =3D "mediatek,mt7622-pwm", .data =3D &mt7622_pwm_data },
>  	{ .compatible =3D "mediatek,mt7623-pwm", .data =3D &mt7623_pwm_data },
>  	{ .compatible =3D "mediatek,mt7628-pwm", .data =3D &mt7628_pwm_data },
> +	{ .compatible =3D "mediatek,mt7629-pwm", .data =3D &mt7629_pwm_data },
>  	{ },
>  };
>  MODULE_DEVICE_TABLE(of, pwm_mediatek_of_match);
> --=20
> 2.17.1
>=20

--Nq2Wo0NMKNjxTN9z
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEiOrDCAFJzPfAjcif3SOs138+s6EFAl2N8l0ACgkQ3SOs138+
s6HrZw//YXizi7+n/nUsGnoQj0Nd4kpxgNnWEke0I4l6zm4ms4+hqUoPCWiFuZQO
PVvg+lUFZHGpTs72sB45wW81NFgwQbgdqMejJOl5F4oU8qErIMuwIsPJWsT5Pnxo
pezDZZVU545OzICGnWft3wFwh7nFKqQNB3085EApr5YU7jUmVdOTud+K13SfWZEf
0/LgRL2h4bVVkUR4b5ny6tpc8GnTsS/zDgZHXBeLBe95l9yLwPKqkzKLP/e+v4Wu
EH18RZb3Iw9G+q5nsmr7EZBSVnf685DGAW1+VK/w4nGCcjPTFUL0sBXpCFUhbzI7
SXU6YK4oWrXu0gmzqNjjAuTPRC48IU03nTUq8rLUa9EONioZiEOMmtQAq8u7l5hr
DLAo90ZHOMeeBoTNqBNfLkKOqtzBacsZPZycThPEbGBbyafo8cTvf/TWHidhbXvv
B9EL4Amo9AROzun9xmd7FLHa1p1i3df+/lvt7oW+Hs2E09g7gqWiMgYn6aBEnAhs
z9gN8Ys6MhUTpfagvjeA4yNTV02mNxSTobCYui0oQCvBmv13ztlZGLHZ7pTDgOjj
ks6J8EYPxvWBN4YZM+NYaqsOALBssEfB3qTtOsH9dyTELORrtFVKQyFDIUY9gaf9
DSq4SsUFGiOw4l+tXlLojB9JdORs+BasCKXB8ncmz/Vdj6Rn0O4=
=gb7b
-----END PGP SIGNATURE-----

--Nq2Wo0NMKNjxTN9z--


--===============6096961051883250003==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek

--===============6096961051883250003==--

