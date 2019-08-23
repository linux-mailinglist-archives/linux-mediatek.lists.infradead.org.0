Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 02DBC9A4CC
	for <lists+linux-mediatek@lfdr.de>; Fri, 23 Aug 2019 03:11:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=b6pfNGA/kkO51uWM/HCJstI5m31F+KE8q28QsNdzLNo=; b=dxZAjJd1sTbC5i
	3Q3pBzwP4ligcqTcY+Ibg1Yj7R0RAYTOdua0lYTZYohw1wHgxXUr2SHTD7HBeMV+vMZt3apGaPUR9
	OlUbZ2M4qTy3vGjaIQlMp9mmT7UHlbhlzENfSOxOt3c6Hu74qAJ18P1JhQPorRStp6ZqCF7WQDRVr
	HimwucZS/L6ewvTYXYTgQXTE1uJxvfxrVYRCJ3cbyUUaNSLjOUZUNMA1wKYGb5gI1elFTR/6va2nn
	cy4dm5WN8sjLgJfj2qPu4+fq/HXvD/ifNuNaLuh1iI5aDSRRrAMu5CN89CWFVqFZwI88XG4/Aya6E
	x5fUvNAPH+kR5ewQpm2w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0y6L-0005DY-82; Fri, 23 Aug 2019 01:10:49 +0000
Received: from vps0.lunn.ch ([185.16.172.187])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0y5O-0003o6-9m; Fri, 23 Aug 2019 01:09:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
 s=20171124; h=In-Reply-To:Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=bubYkOWQv/TmjmevXp07B1YxRSMrPurV5Qv8qeYJzMg=; b=PxaSz34QDnYHyaA6CFTIHBtfGH
 ow2ULEN3il0uWeBGbbnScQcUzT2s+cnFmmS8jlf2UaTXTGryJXIkg7tMZ8VqYXuNldBrgggMhycEG
 EXmpf5NKePxcDTTu5kP1ATysD0t/uYER73kH4IW5Z/eNsXf+9OwJ4dZnXOMZ8huSwcM4=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.89)
 (envelope-from <andrew@lunn.ch>)
 id 1i0y52-0000ap-FE; Fri, 23 Aug 2019 03:09:28 +0200
Date: Fri, 23 Aug 2019 03:09:28 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: David Miller <davem@davemloft.net>
Subject: Re: [PATCH net-next v2 0/3] net: dsa: mt7530: Convert to PHYLINK and
 add support for port 5
Message-ID: <20190823010928.GK13020@lunn.ch>
References: <20190821144547.15113-1-opensource@vdorst.com>
 <20190822.162047.1140525762795777800.davem@davemloft.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190822.162047.1140525762795777800.davem@davemloft.net>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190822_180950_493976_294A67D8 
X-CRM114-Status: UNSURE (   9.72  )
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: f.fainelli@gmail.com, frank-w@public-files.de, netdev@vger.kernel.org,
 sean.wang@mediatek.com, linux-mips@vger.kernel.org, opensource@vdorst.com,
 linux-mediatek@lists.infradead.org, john@phrozen.org, matthias.bgg@gmail.com,
 vivien.didelot@gmail.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Thu, Aug 22, 2019 at 04:20:47PM -0700, David Miller wrote:
> From: Ren=E9 van Dorst <opensource@vdorst.com>
> Date: Wed, 21 Aug 2019 16:45:44 +0200
> =

> > 1. net: dsa: mt7530: Convert to PHYLINK API
> >    This patch converts mt7530 to PHYLINK API.
> > 2. dt-bindings: net: dsa: mt7530: Add support for port 5
> > 3. net: dsa: mt7530: Add support for port 5
> >    These 2 patches adding support for port 5 of the switch.
> > =

> > v1->v2:
> >  * Mostly phylink improvements after review.
> > rfc -> v1:
> >  * Mostly phylink improvements after review.
> >  * Drop phy isolation patches. Adds no value for now.
> =

> This definitely needs some review before I'll apply it.

That would be Russell.

We should try to improve MAINTAINER so that Russell King gets picked
by the get_maintainer script.

   Andrew

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
