Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 303E311BA9D
	for <lists+linux-mediatek@lfdr.de>; Wed, 11 Dec 2019 18:48:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+l+jVpS5T89TQl8M2QHHXVGadOj8tuDhlwu+qwDja/c=; b=ex9mHcT9Xmrgf7
	S4lyKW09jOQN99iojpT8IaYCwrWWyflX3/nrH1+vmAEmQhDkIz97Gj70I116ZGG90IbfZn61EnkyM
	1S+WMqukhn6kyoJgS3x5dEqDlJwn5JH7XBTmLBDLUlxspwZ11Y0XMRA/RYGDd3rBwaDeZ9vamEIU0
	wfzks99i6kBTf7GCKuM11sXdusMkphC7Un1ObNTM02VpfOr6t2d7uHU8zGKQ7PoONLh3iVuPwBs4D
	KlvukQGEvQcgMqnpyYD3lnf1tDrBREXAQDYg1+VoxL6KoHpjTJ59GyTuRWbIWizb3CwPUsU+9pjsN
	/UzYIZQQc16eYIEkgicA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1if66A-0003XJ-Nw; Wed, 11 Dec 2019 17:48:30 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1if668-0003Wf-Cn
 for linux-mediatek@lists.infradead.org; Wed, 11 Dec 2019 17:48:29 +0000
X-UUID: beea4c4daa60452c99ce7ff5e0ba7efd-20191211
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=u7qv1t+UEdcZ3p9avQ8ygs4s73dg8OSg8iN56BmCOVg=; 
 b=pfltpKZnVgfgvpFUQxqIxY0veuIleO4Ge2hVHVj5TRDVqWu0xtE0EUSqsQAYLqHYfPyZ2m2f5ZlZwE26Le74VT+Bu4WuBj2YyPmmlSF38TWsWMJXeC43255okcdazeonO0x8R15xhQJx4tla1DDHBdjSGnfKu5xNDkixsXm/r/s=;
X-UUID: beea4c4daa60452c99ce7ff5e0ba7efd-20191211
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <landen.chao@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1710791342; Wed, 11 Dec 2019 09:48:21 -0800
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 11 Dec 2019 09:48:35 -0800
Received: from [172.21.84.99] (172.21.84.99) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Thu, 12 Dec 2019 01:47:31 +0800
Message-ID: <1576086486.23763.61.camel@mtksdccf07>
Subject: Re: [PATCH net-next 4/6] net: dsa: mt7530: Add the support of
 MT7531 switch
From: Landen Chao <landen.chao@mediatek.com>
To: Andrew Lunn <andrew@lunn.ch>
Date: Thu, 12 Dec 2019 01:48:06 +0800
In-Reply-To: <20191210164855.GE27714@lunn.ch>
References: <cover.1575914275.git.landen.chao@mediatek.com>
 <6d608dd024edc90b09ba4fe35417b693847f973c.1575914275.git.landen.chao@mediatek.com>
 <20191210164855.GE27714@lunn.ch>
X-Mailer: Evolution 3.2.3-0ubuntu6 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191211_094828_452938_459F6A2E 
X-CRM114-Status: UNSURE (   6.88  )
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

On Wed, 2019-12-11 at 00:48 +0800, Andrew Lunn wrote:
> > +static int mt7531_setup(struct dsa_switch *ds)
> > +{
> > +	/* Enable PHY power, since phy_device has not yet been created
> > +	 * provided for phy_[read,write]_mmd_indirect is called, we provide
> > +	 * our own mt7531_ind_mmd_phy_[read,write] to complete this
> > +	 * function.
> > +	 */
> > +	val = mt7531_ind_mmd_phy_read(priv, 0, PHY_DEV1F,
> > +				      MT7531_PHY_DEV1F_REG_403);
> > +	val |= MT7531_PHY_EN_BYPASS_MODE;
> > +	val &= ~MT7531_PHY_POWER_OFF;
> > +	mt7531_ind_mmd_phy_write(priv, 0, PHY_DEV1F,
> > +				 MT7531_PHY_DEV1F_REG_403, val);
> > +
> 
> Is this power to all the PHYs? Or just one?
This is an internal circuit that controls the power to all PHYs before
Generic MII registers are available.

Landen
> 
>    Andrew

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
