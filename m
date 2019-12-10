Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D0E0119A83
	for <lists+linux-mediatek@lfdr.de>; Tue, 10 Dec 2019 23:02:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=m4DKd3/HszSIqsTYgyi83cPMFs3/0l5LiuagdTf13+4=; b=ATLwRUjyg8cRY+
	oo+hKtqirgyHSKFKTJB6S4wmlrVK0AHYAjgQJ8yQbItFcEvc/8YWTEjUFlbQKoaJ7tRm4DFZ7LwJz
	AM1/KbLOJ4UdUo2MM87m7LkK7DUj6iA62ktFbf2J7OqS0M9ah8VSm2c94yAYnHg+/dyr0tVEYTUrL
	zTYKVs3XQU2iUv9eflOMbO0BVBvU+M4B6lHpdwlAO2SUbkikLIoARg7ZEqFRI5NbObi3ZueBWLzYI
	6KTwvyMRmc6VFXwxc/HBvQhoXzNq93KxY5aYDyCiE8J2MgaYjQmwBtttDSBx29DfP06kHXPmjf9wM
	tCSP5Wvbf5BwDpKBiMRw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ienai-0008P4-Dm; Tue, 10 Dec 2019 22:02:48 +0000
Received: from vps0.lunn.ch ([185.16.172.187])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ienaf-0008Ny-Ek
 for linux-mediatek@lists.infradead.org; Tue, 10 Dec 2019 22:02:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
 s=20171124; h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:
 Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=oNrhFWA1lMqgOP0XHTa3xdZ+GV9N7jCyBqMVj23yRHs=; b=xZWRhz+CFM5NfZoAhdE/Gf5Ate
 jwkCAm8gpKDWE3b5P9ajfLkTLdVB6mq5zla3yoyBXTl7B6q88/vbXgqargSm/6APZB/TKAoXevZv4
 oTGN3doiai+QIEhx1FqEk3Fa7u7QZwAndwta5kY3sotOnTY49pV6t4NxXfpKEYe8xkuI=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.92.2)
 (envelope-from <andrew@lunn.ch>)
 id 1ienaR-0007qA-JO; Tue, 10 Dec 2019 23:02:31 +0100
Date: Tue, 10 Dec 2019 23:02:31 +0100
From: Andrew Lunn <andrew@lunn.ch>
To: Marek Behun <marek.behun@nic.cz>
Subject: Re: [PATCH net-next 4/6] net: dsa: mt7530: Add the support of MT7531
 switch
Message-ID: <20191210220231.GA30053@lunn.ch>
References: <cover.1575914275.git.landen.chao@mediatek.com>
 <6d608dd024edc90b09ba4fe35417b693847f973c.1575914275.git.landen.chao@mediatek.com>
 <20191210163557.GC27714@lunn.ch> <20191210213351.2df6acbf@nic.cz>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191210213351.2df6acbf@nic.cz>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191210_140245_496571_2018A794 
X-CRM114-Status: GOOD (  10.55  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 Landen Chao <landen.chao@mediatek.com>, f.fainelli@gmail.com,
 vivien.didelot@savoirfairelinux.com, netdev@vger.kernel.org,
 sean.wang@mediatek.com, linux-kernel@vger.kernel.org, frank-w@public-files.de,
 opensource@vdorst.com, robh+dt@kernel.org, linux-mediatek@lists.infradead.org,
 matthias.bgg@gmail.com, davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Tue, Dec 10, 2019 at 09:33:51PM +0100, Marek Behun wrote:
> On Tue, 10 Dec 2019 17:35:57 +0100
> Andrew Lunn <andrew@lunn.ch> wrote:
> 
> > On Tue, Dec 10, 2019 at 04:14:40PM +0800, Landen Chao wrote:
> > > Add new support for MT7531:
> > > 
> > > MT7531 is the next generation of MT7530. It is also a 7-ports switch with
> > > 5 giga embedded phys, 2 cpu ports, and the same MAC logic of MT7530. Cpu
> > > port 6 only supports HSGMII interface. Cpu port 5 supports either RGMII
> > > or HSGMII in different HW sku.  
> > 
> > Hi Landen
> > 
> > Looking at the code, you seem to treat HSGMII as 2500Base-X. Is this
> > correct? Or is it SGMII over clocked to 2.5Gbps?
> > 
> > 	 Andrew
> 
> How would that work? Would 10 and 100 be overclocked to 25 and 250?

No. SGMII clocked up to 2.5G does not support any of the lower
speeds. And inband signalling does not make much sense, the control
word is all wrong.

     Andrew

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
