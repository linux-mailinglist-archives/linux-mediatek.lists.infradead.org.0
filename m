Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B815811BCE2
	for <lists+linux-mediatek@lfdr.de>; Wed, 11 Dec 2019 20:27:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=59CjZ8GyBSyr0bDKHn/x4bLy59NRme9vSmq7WuWfW4g=; b=OsCLNLXA6DtWqR
	snKCeDEf2bxgyZ8kYWrz5YIqvUmjJf39+UEJK09DGmq0on0zXlNe57y+0pNIariKRzM8FxDhJSKsg
	k1k2kSIQJ38F4/03hs/6O7/Bh5CGctKIF75/0uVxiI585iSOHDQJV8TVAMCZQIW/YRxxKzO3HRztu
	PaDIVCZc/cWFb7mmAMGnBfbEn6Jx1lSvqPvLWrB/G+hBEvn7upKFIPwDxAkeNgZeYKDapYHgxLzes
	hF05SxzQ1kqy1ufNu62cUDBfVcmBzdIUTA18bI8rSUbW+u9f/iuWocG33Jnw77FKPXSW4L8CCqYev
	jLeH6Wdv1Gc8rXsCWHww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1if7dn-0003ps-My; Wed, 11 Dec 2019 19:27:19 +0000
Received: from vps0.lunn.ch ([185.16.172.187])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1if7dk-0003m2-18
 for linux-mediatek@lists.infradead.org; Wed, 11 Dec 2019 19:27:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
 s=20171124; h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:
 Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=fhhzlnh0YMGIMRykWTm4rFFLUMRsYVi5NX6Vsu+Wz9k=; b=0/wx5BRx38jwBupSBL9HPDq+Op
 4XueCGjMApYHbc+xiDtJoqQ9UauFW2OCaMQQGSjhWNbdSGh6A4tqk4HR+ycvlZpZSvkY4VN929aDZ
 lsooxXG98r2sDAlaF2LQAar50cl7CsEAieCTcLjrUlq7BEeM+cJDRDyJM75MDOFUa3QA=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.92.2)
 (envelope-from <andrew@lunn.ch>)
 id 1if7dX-0006xS-2G; Wed, 11 Dec 2019 20:27:03 +0100
Date: Wed, 11 Dec 2019 20:27:03 +0100
From: Andrew Lunn <andrew@lunn.ch>
To: Landen Chao <landen.chao@mediatek.com>
Subject: Re: [PATCH net-next 4/6] net: dsa: mt7530: Add the support of MT7531
 switch
Message-ID: <20191211192703.GC30053@lunn.ch>
References: <cover.1575914275.git.landen.chao@mediatek.com>
 <6d608dd024edc90b09ba4fe35417b693847f973c.1575914275.git.landen.chao@mediatek.com>
 <20191210164438.GD27714@lunn.ch>
 <1576088280.23763.73.camel@mtksdccf07>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1576088280.23763.73.camel@mtksdccf07>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191211_112716_084223_EF804D26 
X-CRM114-Status: UNSURE (   3.97  )
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "frank-w@public-files.de" <frank-w@public-files.de>,
 "f.fainelli@gmail.com" <f.fainelli@gmail.com>,
 "vivien.didelot@savoirfairelinux.com" <vivien.didelot@savoirfairelinux.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 Sean Wang <Sean.Wang@mediatek.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "opensource@vdorst.com" <opensource@vdorst.com>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>,
 "linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>,
 "matthias.bgg@gmail.com" <matthias.bgg@gmail.com>,
 "davem@davemloft.net" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

> Do you also hint at using the same number of parameters for
> mt7531_ind_c22_phy_read() and mt7531_ind_c45_phy_read()?

That is up to you. It just seems like your MDIO bus can do both C22
and C45. And somebody might connect an external C45 PHY, so you might
as well support it.

   Andrew

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
