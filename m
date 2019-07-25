Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B2CF7757EB
	for <lists+linux-mediatek@lfdr.de>; Thu, 25 Jul 2019 21:32:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BNgTgJA+iKA/jIpXrw1JcWSrZTp4b4bfHfqsrqx3/ak=; b=MUUsRdk7JtCkJy
	2Jy0FLwaIPosJqZJBvrN1RsLkphgajlvP1NsB5VCMJUyCK7YYnLHcJwoNW/zZNsR9qBZjwdbiKI0v
	47j8MQzjCyNb5tnxU3F66tLT7LGAEA6wPus15WXjHyrGY7reSYKrCNjyElNk/zWB6DtGNJhMQthX2
	f8Q9cbmNRHCAzzmvrMYOs6/iHEBwGrXAVLYL8SZ5MrOxNT0U7FMav3gJ7Wg08f6i2M7RgQKUst0vg
	ZvpAFOxtRbmGHNi9dhOYo00cN5u/f8IK4DZWlcfBpG9+hBYny4bq7LOxXOk8d6XRsbN0ag2coClCC
	8RwrTCcX4dKETCrw7xmA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqjT5-0005Cw-IM; Thu, 25 Jul 2019 19:31:59 +0000
Received: from vps0.lunn.ch ([185.16.172.187])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqjSp-0004zl-PB
 for linux-mediatek@lists.infradead.org; Thu, 25 Jul 2019 19:31:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
 s=20171124; h=In-Reply-To:Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=KYKJAsQl/3fSVyf82GMSuAEJy0Hh3t3UkutHSaqd1NA=; b=Zco4aUzE7sl1jwbIpksKFVSaDw
 5j2uRWiykdEUK/4b1jYTr1RyaDas7UoYKt9N/w6xXtyVuJiLxSQhvxLkK4nAfAIuq80yrO/B+fbTP
 Ao5ou59rBf0CMXo+ObfmhnYYW4xWXczLqe1Sequw+UxSidgRVmXnrRZvA1rK+FyHaOTY=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.89)
 (envelope-from <andrew@lunn.ch>)
 id 1hqjSV-0000JG-Cr; Thu, 25 Jul 2019 21:31:23 +0200
Date: Thu, 25 Jul 2019 21:31:23 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: =?iso-8859-1?Q?Ren=E9?= van Dorst <opensource@vdorst.com>
Subject: Re: [PATCH net-next 3/3] dt-bindings: net: ethernet: Update mt7622
 docs and dts to reflect the new phylink API
Message-ID: <20190725193123.GA32542@lunn.ch>
References: <20190724192411.20639-1-opensource@vdorst.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190724192411.20639-1-opensource@vdorst.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190725_123143_982917_090DEAB5 
X-CRM114-Status: UNSURE (   4.57  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [185.16.172.187 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, f.fainelli@gmail.com, frank-w@public-files.de,
 netdev@vger.kernel.org, sean.wang@mediatek.com, linux@armlinux.org.uk,
 vivien.didelot@gmail.com, robh+dt@kernel.org,
 linux-mediatek@lists.infradead.org, john@phrozen.org, matthias.bgg@gmail.com,
 linux-mips@vger.kernel.org, davem@davemloft.net
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

> +	gmac0: mac@0 {
> +		compatible =3D "mediatek,eth-mac";
> +		reg =3D <0>;
> +		phy-mode =3D "sgmii";
> +
> +		fixed-link {
> +			speed =3D <2500>;
> +			full-duplex;
> +			pause;
> +		};
> +	};

Hi Ren=E9

SGMII and fixed-link is rather odd. Why do you need this combination?

      Andrew

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
