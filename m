Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 15CB34972B
	for <lists+linux-mediatek@lfdr.de>; Tue, 18 Jun 2019 03:53:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fk3cMsMX0VXh++NJfLIcUqp6FttTqVPqYrZy69cJAJk=; b=O8d7b3UQ1RHPLI
	3QT4794k1l6gWIZzi+J7qLt5J7x8y1sMtNxs4UuOWwgZnvcWWysLmHmeRQfxuChmzxK9JV3J4uNz5
	S+neekrly+3Qqxr5HxaYt6YxHkkvL+tnIgaSqiw5BKsOZf9WlVXe6mt7ZJj9U7BcSEZmCZnl+4Krs
	0t769wMr8jsrAv8E7r8uCUaSPKJIRZiX5VdOVcYxBUZhHruP/8y7zmn8YM1OzqatQlFMtGBsV/evS
	WmuYeoekNcNQiIwT0TqnBJidbn2DttUjnDDW3ra2uAUT1ZrP/yd+vBqqw6SL2F35x2/dNv6F3dS0M
	/PKIwq001Yy5uYsqDf6A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hd3JN-0001Pp-HO; Tue, 18 Jun 2019 01:53:25 +0000
Received: from vps0.lunn.ch ([185.16.172.187])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hd3JK-0001PP-Cg
 for linux-mediatek@lists.infradead.org; Tue, 18 Jun 2019 01:53:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
 s=20171124; h=In-Reply-To:Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=npsIcZKfycgIAiEwGdw9g2XfI8tUu7kcKJPmBU4VaZQ=; b=NgwBf+r/5H6byWz8hbuUd9nSdM
 oCAimxT1hX7C7ZIwwIFzDTAVO7no2f9SGd2RuelhO0hUZxu4UnJ9F4lNHBr0Ox2ghd2DJveWRgfv4
 C6+7dIhY9j+kA6738Np5DXCIdE4g4+ODvhUuqxBSPLoua4Ko1qjgMa9izRJdLeMkB4kQ=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.89)
 (envelope-from <andrew@lunn.ch>)
 id 1hd3J7-0005Pp-3s; Tue, 18 Jun 2019 03:53:09 +0200
Date: Tue, 18 Jun 2019 03:53:09 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: =?iso-8859-1?Q?Ren=E9?= van Dorst <opensource@vdorst.com>
Subject: Re: [PATCH net-next 0/2] net: mediatek: Add MT7621 TRGMII mode support
Message-ID: <20190618015309.GA18088@lunn.ch>
References: <20190616182010.18778-1-opensource@vdorst.com>
 <20190617140223.GC25211@lunn.ch>
 <20190617213312.Horde.fcb9-g80Zzfd-IMC8EQy50h@www.vdorst.com>
 <20190617214428.GO17551@lunn.ch>
 <20190617232004.Horde.mAVymZdeb9Jjf29W2PeOggU@www.vdorst.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190617232004.Horde.mAVymZdeb9Jjf29W2PeOggU@www.vdorst.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_185322_585311_EA9DB55C 
X-CRM114-Status: UNSURE (   8.46  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [185.16.172.187 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Florian Fainelli <f.fainelli@gmail.com>, netdev@vger.kernel.org,
 Sean Wang <sean.wang@mediatek.com>, linux-mips@vger.kernel.org,
 Vivien Didelot <vivien.didelot@gmail.com>, linux-mediatek@lists.infradead.org,
 john@phrozen.org, Matthias Brugger <matthias.bgg@gmail.com>,
 "David S . Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

> By adding some extra speed states in the code it seems to work.
> =

> +               if (state->speed =3D=3D 1200)
> +                       mcr |=3D PMCR_FORCE_SPEED_1000;

Hi Ren=E9

Is TRGMII always 1.2G? Or can you set it to 1000 or 1200? This
PMCR_FORCE_SPEED_1000 feels wrong.

> >We could consider adding 1200BaseT/Full?
> =

> I don't have any opinion about this.
> It is great that it shows nicely in ethtool but I think supporting more
> speeds in phy_speed_to_str() is enough.
> =

> Also you may want to add other SOCs trgmii ranges too:
> - 1200BaseT/Full for mt7621 only
> - 2000BaseT/Full for mt7623 and mt7683
> - 2600BaseT/Full for mt7623 only

Are these standardised in any way? Or MTK proprietary?  Also, is the T
in BaseT correct? These speeds work over copper cables? Or should we
be talking about 1200BaseKX?

   Thanks
	Andrew

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
