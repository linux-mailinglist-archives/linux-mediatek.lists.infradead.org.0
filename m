Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D133D11BA6C
	for <lists+linux-mediatek@lfdr.de>; Wed, 11 Dec 2019 18:36:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+HK5ZJCR7cCqOjr28sboFkhXGpY/QeoPCNwuzEeZpfs=; b=GVfub7yNEqiD4u
	pjAdA/2DalG6P7VvHXhFTm6q40sLnNUPlwup5aW7QsiHHQsr5yJd5OXa/YeIbl+1wyCBFOZgy1JPC
	7LLqktJzD1ImXZTZId2OrO1A4l/qAtBP/IK+N+DDglgu/5w8uVGNy5yNxglIAiACI37k97A3e+UVx
	VkbqViKReRPUVeFXuW1Gszqsa/i2su8FJf1GP2Tw4reg+GxgD/6kEdWT1zh87tTyiF4OzmqZYxRqf
	t0SCHnHQJvU1asKrJRKishvGf/hqXeCGJGfhHkIuywMZpb8T6wnGKl6qMYb/mD8ySepBJ3X4zwnHp
	3bljbh9N8vHHRRNVt5zA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1if5uL-0008H0-6F; Wed, 11 Dec 2019 17:36:17 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1if5tx-0007w8-Jx
 for linux-mediatek@lists.infradead.org; Wed, 11 Dec 2019 17:35:55 +0000
X-UUID: a71d4607b2e944ff8a10bc8bbedcfde6-20191211
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=1G2ecBdsGiCmLvqUgkfBXFA90ZxkA0MFjUV6DWvTWiU=; 
 b=DGwWSWUpOHud9U+BecPSZboTGtDN5+pl0bibZT0pvigmxn/OxFgM2hdKQfzgIkbgTdICIdqDJodzNWyLbb3MUsUQJzA1hUZANcIGQIyoAkkYPoxuQVyRuVeRASpaIEHiICrbSoDTpFRARrOSbLzqielxESeWNnEEA9JkI2/ij5M=;
X-UUID: a71d4607b2e944ff8a10bc8bbedcfde6-20191211
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <landen.chao@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1722647749; Wed, 11 Dec 2019 09:35:48 -0800
Received: from mtkcas09.mediatek.inc (172.21.101.178) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 11 Dec 2019 09:36:52 -0800
Received: from [172.21.84.99] (172.21.84.99) by mtkcas09.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Thu, 12 Dec 2019 01:35:41 +0800
Message-ID: <1576085745.23763.53.camel@mtksdccf07>
Subject: Re: [PATCH net-next 4/6] net: dsa: mt7530: Add the support of
 MT7531 switch
From: Landen Chao <landen.chao@mediatek.com>
To: Andrew Lunn <andrew@lunn.ch>
Date: Thu, 12 Dec 2019 01:35:45 +0800
In-Reply-To: <20191210163557.GC27714@lunn.ch>
References: <cover.1575914275.git.landen.chao@mediatek.com>
 <6d608dd024edc90b09ba4fe35417b693847f973c.1575914275.git.landen.chao@mediatek.com>
 <20191210163557.GC27714@lunn.ch>
X-Mailer: Evolution 3.2.3-0ubuntu6 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191211_093553_689912_41B8658F 
X-CRM114-Status: UNSURE (   8.60  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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

Hi Andrew,

On Wed, 2019-12-11 at 00:35 +0800, Andrew Lunn wrote:
> On Tue, Dec 10, 2019 at 04:14:40PM +0800, Landen Chao wrote:
> > Add new support for MT7531:
> > 
> > MT7531 is the next generation of MT7530. It is also a 7-ports switch with
> > 5 giga embedded phys, 2 cpu ports, and the same MAC logic of MT7530. Cpu
> > port 6 only supports HSGMII interface. Cpu port 5 supports either RGMII
> > or HSGMII in different HW sku.
> 
> Hi Landen
> 
> Looking at the code, you seem to treat HSGMII as 2500Base-X. Is this
> correct? Or is it SGMII over clocked to 2.5Gbps?
After re-read MT7622 tread[0] again, and according to the configurable
part of this IP, it is closer to 2500Base-X definition:
``PHY_INTERFACE_MODE_2500BASEX``
    This defines a variant of 1000BASE-X which is clocked 2.5 times
faster, than the 802.3 standard giving a fixed bit rate of 3.125Gbaud.

If HSGMII means SGMII over clocked to 2.5Gbps, the introduction needs to
be changed to "support SGMII/1000Base-X/2500Base-x".

[0]:
https://patchwork.kernel.org/patch/11057527/
> 
> 	 Andrew

Regards Landen
_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
