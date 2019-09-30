Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5EC9DC1E1E
	for <lists+linux-mediatek@lfdr.de>; Mon, 30 Sep 2019 11:36:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Ol9nK+nU8ZysZbMC1oYsUlTB0wv9NankJb9iAZfhMQ0=; b=ZEWiSD9XcpS/7cQUveVrp+t3F
	C6gktUK2WvelTzgxG4kJ9nc94bAAdNdjP6q2wYHgoao9jwT33+rD7qHtYjfUAFdI1ybZ+gFQjDXvx
	4GM3aFTPwqjVkWUNKxT4opnREOjoJDBEJ+GR7Ppdz/5Ww8M/mOxiGvXYfZ/1SIxWmoV8wBKJxyXT6
	qJkbx8IfZwuxrAJAorUEHKPZJKRon3FGh6coQ15pvw6feMaJLQHrZRZSLNePHo8+9AzeWn3srCS4S
	sV0SePvdtp0K5Fl1ikVQLlmNT3Vy/anNACKH+mnzvDYtBhFEeTDPbU7hVF3EFQT+A+7yTkERqvuoo
	GQsIuzz3g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iEs6g-0003mB-6W; Mon, 30 Sep 2019 09:36:38 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iEs6c-0003lm-O2
 for linux-mediatek@lists.infradead.org; Mon, 30 Sep 2019 09:36:36 +0000
Received: by mail-wm1-x344.google.com with SMTP id 5so12578312wmg.0
 for <linux-mediatek@lists.infradead.org>; Mon, 30 Sep 2019 02:36:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=T1LYv7Cw2G9QMJi0g/N3eFnKbwYc0qhwvJT0FvyrfHg=;
 b=QRUCa4g9ZDyX2Sp+/YdFZIMvgXARoceU/ZNW50SsfjmV8SPXRu6voyl1umzlnJvMSk
 ZkS5Uu8ncytxwNFkvEPCdA/Vj47mzal1E/Wx7pPcbYMqU+s2u3kZwO6Cbq0g0XPjXbUE
 yOPy0vtloDydAGrWaIMkDBgQG2YDISDDwCKFzW2mt2wIxJiVid9mJkppKaWrh8lSmlal
 EBj1oO+QFN64p35PkiSe/YDqRKnxQATvtKdhz1z8qFFhZtEl2fzpAmL1nvrXNYz4gRUf
 iD2ypPuSmwMqVFf3fnphQwwccAfvH7WfkKI3UIldqNCO9NAXGIdg9U9wyua9yRQmbHaH
 34Aw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=T1LYv7Cw2G9QMJi0g/N3eFnKbwYc0qhwvJT0FvyrfHg=;
 b=e0+1vLGgoZ1QQULZzdZsSLJIp965I7TuU7OTa2zO/F4xNWjHhiCwSqKPGQqlkXN7rV
 bvHkAK8s9ps9eSC2RWX1bNj31xrnPJ+Rco/qIS8tXR8qUqUjQYXxvktGuj316vN+TXfQ
 juGJCR7CSFuhgJ8y/n4I/Cbhz0kIMHzFeHclGrP5d9E8U8sJWnp5G7F1RIgrR8P7Oj1f
 U903Dw0uUL5vDMwD2iSvpnN2Yh2o4F/t8uK+snu/5xlA9uaqIksee6Zby1Z9o00NB9ru
 kWOCB11FnnkoXJX9mtRPHoQHWZwG8REscI5TmxJ1LODRw67o8bd1vqj2YtRpqSG+BLzY
 r0Tg==
X-Gm-Message-State: APjAAAVpmZL+VgED/sHK/F3DZA72D2s5OZ+OsCD9KvpMKkzoUJ0pE5j5
 Qp+4nEZ8AbsW7VleoPlmOtA=
X-Google-Smtp-Source: APXvYqzTGx/JDVNoS54gEIHC8LNGdB3R9BAxdjDIXvR4vGdykkoeO0LrTBVtHrOC9Vk+2+MO8+Wm0A==
X-Received: by 2002:a05:600c:2311:: with SMTP id
 17mr15980556wmo.39.1569836192580; 
 Mon, 30 Sep 2019 02:36:32 -0700 (PDT)
Received: from localhost (p2E5BE2CE.dip0.t-ipconnect.de. [46.91.226.206])
 by smtp.gmail.com with ESMTPSA id d78sm15306624wmd.47.2019.09.30.02.36.30
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 30 Sep 2019 02:36:31 -0700 (PDT)
Date: Mon, 30 Sep 2019 11:36:29 +0200
From: Thierry Reding <thierry.reding@gmail.com>
To: Sam Shih <sam.shih@mediatek.com>
Subject: Re: [PATCH v10 08/12] pwm: mediatek: Add MT7629 compatible string
Message-ID: <20190930093629.GH1518582@ulmo>
References: <1569421957-20765-1-git-send-email-sam.shih@mediatek.com>
 <1569421957-20765-9-git-send-email-sam.shih@mediatek.com>
 <20190927112831.GA1171568@ulmo>
 <1569833468.32131.4.camel@mtksdccf07>
MIME-Version: 1.0
In-Reply-To: <1569833468.32131.4.camel@mtksdccf07>
User-Agent: Mutt/1.12.2 (2019-09-21)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190930_023634_783741_70FD4876 
X-CRM114-Status: GOOD (  24.92  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (thierry.reding[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Content-Type: multipart/mixed; boundary="===============2275449369263826202=="
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org


--===============2275449369263826202==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="9jHkwA2TBA/ec6v+"
Content-Disposition: inline


--9jHkwA2TBA/ec6v+
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Sep 30, 2019 at 04:51:08PM +0800, Sam Shih wrote:
> Hi,
>=20
> On Fri, 2019-09-27 at 13:28 +0200, Thierry Reding wrote:
> > On Wed, Sep 25, 2019 at 10:32:33PM +0800, Sam Shih wrote:
> > > This adds pwm support for MT7629, and separate mt7629 compatible stri=
ng
> > > from mt7622
> > >=20
> > > Signed-off-by: Sam Shih <sam.shih@mediatek.com>
> > > ---
> > >  drivers/pwm/pwm-mediatek.c | 6 ++++++
> > >  1 file changed, 6 insertions(+)
> >=20
> > I picked this patch up and made some minor adjustments to make it build
> > without the num_pwms patches. With that I don't think there's anything
> > left from this series that you need.
>=20
> Yes, I think the driver should work once dtsi updated.
> ("[v10,12/12] arm: dts: mediatek: add mt7629 pwm support")
>=20
> But, due to we use comaptible string separately for every SoC now,
> The comaptible string in dt-bindings should be "mediatek,mt7629-pwm".
> I think we should use "[v10,11/12] dt-bindings: pwm: update bindings=20
> for MT7629" to replace commit 1c00ad6ebf36aa3b0fa598a48b8ae59782be4121,
> Or maybe we need a little modification like this ?
> diff --git a/Documentation/devicetree/bindings/pwm/pwm-mediatek.txt ...
> - - "mediatek,mt7629-pwm", "mediatek,mt7622-pwm": found on mt7629 SoC.
> + - "mediatek,mt7629-pwm": found on mt7629 SoC.

Good catch, I must've taken this from the wrong version of the patch.

How about the attached patch?

Thanks,
Thierry
--- >8 ---
=46rom 641b0ee176b139f9edd137ba636ca0cb9c63289a Mon Sep 17 00:00:00 2001
=46rom: Thierry Reding <thierry.reding@gmail.com>
Date: Mon, 30 Sep 2019 11:33:31 +0200
Subject: [PATCH] dt-bindings: pwm: mediatek: Remove gratuitous compatible
 string for MT7629

The MT7629 is, in fact, not compatible with the MT7622 because the
former has a single PWM channel while the former has 6. Remove the
gratuitous compatible string for MT7629.

Reported-by: Sam Shih <sam.shih@mediatek.com>
Signed-off-by: Thierry Reding <thierry.reding@gmail.com>
---
 Documentation/devicetree/bindings/pwm/pwm-mediatek.txt | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/pwm/pwm-mediatek.txt b/Docum=
entation/devicetree/bindings/pwm/pwm-mediatek.txt
index c8501530173c..053e9b5880f1 100644
--- a/Documentation/devicetree/bindings/pwm/pwm-mediatek.txt
+++ b/Documentation/devicetree/bindings/pwm/pwm-mediatek.txt
@@ -6,7 +6,7 @@ Required properties:
    - "mediatek,mt7622-pwm": found on mt7622 SoC.
    - "mediatek,mt7623-pwm": found on mt7623 SoC.
    - "mediatek,mt7628-pwm": found on mt7628 SoC.
-   - "mediatek,mt7629-pwm", "mediatek,mt7622-pwm": found on mt7629 SoC.
+   - "mediatek,mt7629-pwm": found on mt7629 SoC.
    - "mediatek,mt8516-pwm": found on mt8516 SoC.
  - reg: physical base address and length of the controller's registers.
  - #pwm-cells: must be 2. See pwm.txt in this directory for a description =
of
--=20
2.23.0


--9jHkwA2TBA/ec6v+
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCAAdFiEEiOrDCAFJzPfAjcif3SOs138+s6EFAl2RzJoACgkQ3SOs138+
s6Fu6BAAuRcu3USNLrzJfAKIB1Wgkn0/BdRRi5vnFfGVSQ/CTCPsHwPve+B4ggdD
KO/QA24iY4G/Jejm6tj2wFt5vw4j12jXaA1oo9Nk2CsfY7JsxhWYLwyB9dn41bxE
Psooim1/HcwlwzWk2KX3h8kEiBV/xdeppMXog5ab1gXxMMs1j4cxSqEl8Flmal9b
CwwxZMK21DNl4fZC6R+BUJ/94p7cJ0sOE198wr0Dm87u+faAlPw/VcVeslCOgVLQ
7G9/NxusfiTjUPSSWrfvJ0vVqXm+bCEAeeONJjr2XqonMr8W2Ch+muv8xB+bsnUY
8Y2U2nO8TrE9WGRq2WLG8+VOMykfJ2pFSb90rtt7IiGIas6EeEzLEaBrO4KAQeC7
OzjEA8Q/JywpyKL9IwNCwvDrvbeT4NC5AM7IJmzZ/bZeQwTLi0Zvoju/SqkYb100
DHZYjV2PcYS6jXQAdo/hMCsQj3MqSzPbNn7j9apiFE/n/Y4SQJiank7jlHleRUmx
JE58Se7Ge8biW5p2OQzqFk9/4j/4V0aEwdezZFjoS58hIWla+4oGLAU4M4meDnTU
xPHQZZM2tEg1mrkKhmkd6s+nGSD47bFZP49/+wjRdn1llDxJG9beNUpFiII5HKR9
3G1y3FsgjCMRWuELFVBXF8hqPC4P/MDk+bUQaSCRzaPwAT7NnwQ=
=DGcd
-----END PGP SIGNATURE-----

--9jHkwA2TBA/ec6v+--


--===============2275449369263826202==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek

--===============2275449369263826202==--

