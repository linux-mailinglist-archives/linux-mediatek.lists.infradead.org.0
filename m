Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E5C811BBAD
	for <lists+linux-mediatek@lfdr.de>; Wed, 11 Dec 2019 19:27:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aFSb4Ls8mG2e5dCpGzrD5turY3kjZy9ygnvGkEkg9yg=; b=Sgg7noki3/49aa
	AWNHwmDWTyONeMTQDk86fJ40yYkko0oPx2/Hw1SepmRyZ6mDPIIxNPjlUGfexY7MSVD09sY0KKCfW
	UqsJNwqytWkp6JgpZaznCBVhfX3jzIzNmAEkD8np+vZY5EW8K2+3oin3hLT9BMBq0VDUyNqoOESSc
	4U4GpOl57UUvnOuyV/IKUN/rNpBmUc+k6erkkMbY237xY2jeMNT8njJB1zQGnPazdNeOmqbBvroz1
	nnifHf9RTT33z8yXZf5qO8j/VurkFnn8Izkuj6lYEdxhlS7Ce4+8irS33eKU7SRhOCOD4OrEFZyr3
	gslfpLQRVk7ZYu3u1W3A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1if6i3-00056A-C6; Wed, 11 Dec 2019 18:27:39 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1if6hz-00055l-Me
 for linux-mediatek@lists.infradead.org; Wed, 11 Dec 2019 18:27:36 +0000
X-UUID: 9171804c690844b592f211bc23477c9c-20191211
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=DayJ7MQWQ4RP+Xy9OFTguKUS9uFN/Vn4kGqH3oJR+Hs=; 
 b=RjHN9U0eQTpQs/XOW7GXxK7+TRHWYSLdznZmKzSoGVyKknnlsf8ILFhfqLBjAXp82huinTHDXuejodmE9mX/qzTQ++4N4pKaJ4BsSBlUg79tmtgrg0WlXUD4iYvkAvPzkHsJGRX90CZqzL21iAz/OhpSzm8O0AWPb1WdxdQqpiU=;
X-UUID: 9171804c690844b592f211bc23477c9c-20191211
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <landen.chao@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1656089967; Wed, 11 Dec 2019 10:27:29 -0800
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 11 Dec 2019 10:27:43 -0800
Received: from [172.21.84.99] (172.21.84.99) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Thu, 12 Dec 2019 02:27:23 +0800
Message-ID: <1576088846.23763.80.camel@mtksdccf07>
Subject: Re: [PATCH net-next 5/6] arm64: dts: mt7622: add mt7531 dsa to
 mt7622-rfb1 board
From: Landen Chao <landen.chao@mediatek.com>
To: Andrew Lunn <andrew@lunn.ch>
Date: Thu, 12 Dec 2019 02:27:26 +0800
In-Reply-To: <20191210165149.GF27714@lunn.ch>
References: <cover.1575914275.git.landen.chao@mediatek.com>
 <7f5a690281664a0fe47cfe7726f26d7f6211d015.1575914275.git.landen.chao@mediatek.com>
 <20191210165149.GF27714@lunn.ch>
X-Mailer: Evolution 3.2.3-0ubuntu6 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191211_102735_748613_81FEB122 
X-CRM114-Status: UNSURE (   8.60  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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

On Wed, 2019-12-11 at 00:51 +0800, Andrew Lunn wrote:
> > +				port@6 {
> > +					reg = <6>;
> > +					label = "cpu";
> > +					ethernet = <&gmac0>;
> > +					phy-mode = "2500base-x";
> > +
> > +					fixed-link {
> > +						speed = <2500>;
> > +						full-duplex;
> > +						pause;
> > +					};
> 
> This fixed-link should not be needed. The DSA driver is supposed to
> configure the CPU port to its fastest speed by default. 2500 is
> the fastest speed a 2500Base-X link can do...
I'll add the cpu port logic to use the fastest speed by default.
It also needs to modify the mt753x_phylink_mac_config() logic.

Landen
> 
>     Andrew

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
