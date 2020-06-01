Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 201A41EAD8D
	for <lists+linux-mediatek@lfdr.de>; Mon,  1 Jun 2020 20:46:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=tNuqOm7Iz0w8rp9GDRElxJdaJa9/EWh9NEJElyVy8a0=; b=bLxZUwsy1ShkWdeQ6ibuBNJiF
	N74znGHggSoJJ20hGitA6I4g3cmGyw8me+eLB287egnJsDVmhwl5wgYV69x7yx5/6UcDjX4LTJYZ4
	xFzOFQPpKbTmDq5GFuTnWisNJ3D0aY5Sl9dUMVxuZlFfgQ5Z09ICpQc9GDNgbvQ8b5rhkHwWsr4N9
	vEvT+AFbXblFEG6JibEDLmeSz7mfJWjpEWV3m5+IbvY+iRrPPKcI2GlB9dSu4yVKzc2Hg3QDoatGB
	iuN4fx9TGOBnQtnwciolJRCyRqOUsmduhP6r+FAJKu5RQIgmmDzYxbDHRAbS+01Kl/VUC+HRaZKKt
	x8JNPaS9A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jfpSG-0007sr-9G; Mon, 01 Jun 2020 18:46:36 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jfpS3-0007io-V0; Mon, 01 Jun 2020 18:46:25 +0000
Received: from localhost (fw-tnat.cambridge.arm.com [217.140.96.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 8BE83206C3;
 Mon,  1 Jun 2020 18:46:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1591037183;
 bh=e5Qef3dmczUwuHZqTw6EERJ4IhHrefksgJsUZASLXQE=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=EPRxpUAViQ0TEernHJkDM4zYgOXqmLTcvMqM4OttqWWxcHD4GsmHNr0zDVhFEC4Od
 v+BIBXqxrL4FbuGy57NSvvb/gxTjry4yKgfOHMuf8BI/qTuFdAZVQzeawwAPxyYx58
 zRVHM6EimWYc0OArYHS8BFgMHU4LwTJftqwVZhqM=
Date: Mon, 1 Jun 2020 19:46:20 +0100
From: Mark Brown <broonie@kernel.org>
To: David Miller <davem@davemloft.net>
Subject: Re: [PATCH v3 0/2] regmap: provide simple bitops and use them in a
 driver
Message-ID: <20200601184620.GF45647@sirena.org.uk>
References: <20200528154503.26304-1-brgl@bgdev.pl>
 <20200601.113536.134620919829517847.davem@davemloft.net>
MIME-Version: 1.0
In-Reply-To: <20200601.113536.134620919829517847.davem@davemloft.net>
X-Cookie: Help a swallow land at Capistrano.
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200601_114624_016615_DB0DCB01 
X-CRM114-Status: UNSURE (   9.40  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: stephane.leprovost@mediatek.com, bgolaszewski@baylibre.com,
 netdev@vger.kernel.org, brgl@bgdev.pl, sean.wang@mediatek.com,
 linux-kernel@vger.kernel.org, fparent@baylibre.com, pedro.tsai@mediatek.com,
 linux-mediatek@lists.infradead.org, andrew.perepech@mediatek.com,
 john@phrozen.org, matthias.bgg@gmail.com, kuba@kernel.org,
 Mark-MC.Lee@mediatek.com, linux-arm-kernel@lists.infradead.org
Content-Type: multipart/mixed; boundary="===============8646055956198693243=="
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org


--===============8646055956198693243==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="924gEkU1VlJlwnwX"
Content-Disposition: inline


--924gEkU1VlJlwnwX
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Mon, Jun 01, 2020 at 11:35:36AM -0700, David Miller wrote:

> > v2 -> v3:
> > - drop unneeded ternary operator

> Series applied to net-next, thank you.

I already applied patch 1 and sent a pull request to Linus for it.  As I
said:

| Let me know if you need a pull request for this, given the merge window
| is likely to open over the weekend I figured it's likely too late to
| apply the second patch before then.

Hopefully this merges cleanly...  ideally we'd have had that pull
request.

--924gEkU1VlJlwnwX
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQEzBAABCgAdFiEEreZoqmdXGLWf4p/qJNaLcl1Uh9AFAl7VTPwACgkQJNaLcl1U
h9BC5Qf+Pqf/FZV1N/xA1qCR5gdSQfu1xeoilmJVrmPkNe7ZPkKJw08ysvy2BAQO
FWtv1JeTxdz13haQKXAmahMt6vZ7SfvpE0SKsW9UQskdbLt3Ib1BhoJk3TPr9u5Y
9TKyGAUpkjmvXkM/GLOEGiqWcy6FbAuPmc/NsFaCaHv6MpjefCKi7qFs+u4rNMJG
OfbU/RjMmOjojflkQWTLxMbOcW79doEFgvx1fRxvRcg4NRZOEfMRnWjIp5Eb3J5S
kBrG02l6iQCsuFijjLFRC4tpFKG5LAld12jDjRwiCgsw9YpNU/6piftFObxGzBsl
t07Asv5z8Ea2gvA5oCJzjkYVpgMY+w==
=PMqK
-----END PGP SIGNATURE-----

--924gEkU1VlJlwnwX--


--===============8646055956198693243==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek

--===============8646055956198693243==--

