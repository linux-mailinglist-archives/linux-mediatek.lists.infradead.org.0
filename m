Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C9EC82CC4A
	for <lists+linux-mediatek@lfdr.de>; Tue, 28 May 2019 18:40:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=h4OjVl0Gh1QGLHPmx7cplKpHFE4CyQOW1c787DJmYgM=; b=c8n9+96MyzqMc9
	gYLUx1O4kdFF6/zAKhdKdRIHiY5zAah5ooRsiHTVt8Hr0PcuXTRWkQmgaQwTgYPijNTNM1BAR/Oz9
	2AlIK289aZ64mRzWy4xZnyRdkImVMNconz4OaNCclNM9WccYYzz1pDWazyUcg2MwyqQswEWoCJcj9
	bG/SuDMVN8sZtjYciJByZADeZOI3O2e4rgNoIClx/iLhQ0SD02/JLZpXgELYjIUkMvQfx1vnlH0Dk
	PS+wbiXmFIXZrq1gVclJYwPuEC8gKts3Y+VPR3EK1H4SzjUjVQRr/D5+7oTgwnIn7zsHPnKmkc/MT
	MLbFu5FplAlEAUfjOOqQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVf9b-000647-Re; Tue, 28 May 2019 16:40:47 +0000
Received: from vps0.lunn.ch ([185.16.172.187])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVf9Y-00063Y-On; Tue, 28 May 2019 16:40:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
 s=20171124; h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:
 Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=5O70O6OB10YmWngTAKAkcQIdQ8sIfTqZZD+NK309vZU=; b=XDQ9N9RTp0puDZabOwzrob//Kv
 y5oy66ii5xp4F7st5YdpcGsQfHk49y6kt4E3Nzy9SeaASuX4lI0LHIfxYYfomjcKTlLGyWF2elUYj
 DESlvmLxyQMfXIHDIaQ9P/Wb7VkStdDsD43MTeQEvS5DmeCYX7npfkM0NZCBD5mlRUME=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.89)
 (envelope-from <andrew@lunn.ch>)
 id 1hVf99-0000Gw-95; Tue, 28 May 2019 18:40:19 +0200
Date: Tue, 28 May 2019 18:40:19 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: biao huang <biao.huang@mediatek.com>
Subject: Re: [v3, PATCH] net: stmmac: add support for hash table size 128/256
 in dwmac4
Message-ID: <20190528164019.GR18059@lunn.ch>
References: <1558926867-16472-1-git-send-email-biao.huang@mediatek.com>
 <1558926867-16472-2-git-send-email-biao.huang@mediatek.com>
 <20190527.100800.1719164073038257292.davem@davemloft.net>
 <1559008369.24897.66.camel@mhfsdcap03>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1559008369.24897.66.camel@mhfsdcap03>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190528_094044_962694_B8D17894 
X-CRM114-Status: GOOD (  12.59  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-BeenThere: linux-mediatek@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-mediatek.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-mediatek>, 
 <mailto:linux-mediatek-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-mediatek/>
List-Post: <mailto:linux-mediatek@lists.infradead.org>
List-Help: <mailto:linux-mediatek-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-mediatek>, 
 <mailto:linux-mediatek-request@lists.infradead.org?subject=subscribe>
Cc: alexandre.torgue@st.com, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com,
 boon.leong.ong@intel.com, joabreu@synopsys.com,
 linux-mediatek@lists.infradead.org, mcoquelin.stm32@gmail.com,
 jianguo.zhang@mediatek.com, peppe.cavallaro@st.com,
 David Miller <davem@davemloft.net>, linux-arm-kernel@lists.infradead.org,
 matthias.bgg@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Tue, May 28, 2019 at 09:52:49AM +0800, biao huang wrote:
> Dear David,
> 
> On Mon, 2019-05-27 at 10:08 -0700, David Miller wrote:
> > From: Biao Huang <biao.huang@mediatek.com>
> > Date: Mon, 27 May 2019 11:14:27 +0800
> > 
> > > diff --git a/drivers/net/ethernet/stmicro/stmmac/dwmac4_core.c b/drivers/net/ethernet/stmicro/stmmac/dwmac4_core.c
> > > index 5e98da4..029a3db 100644
> > > --- a/drivers/net/ethernet/stmicro/stmmac/dwmac4_core.c
> > > +++ b/drivers/net/ethernet/stmicro/stmmac/dwmac4_core.c
> > > @@ -403,41 +403,50 @@ static void dwmac4_set_filter(struct mac_device_info *hw,
> > >  			      struct net_device *dev)
> > >  {
> > >  	void __iomem *ioaddr = (void __iomem *)dev->base_addr;
> > > -	unsigned int value = 0;
> > > +	unsigned int value;
> > > +	int numhashregs = (hw->multicast_filter_bins >> 5);
> > > +	int mcbitslog2 = hw->mcast_bits_log2;
> > > +	int i;
> > 
> > Please retain the reverse christmas tree ordering here.
> I'm a little confused about the reverse xmas tree ordering.
> 
> should I reorder them only according to the total length like this:
> 
> 	void __iomem *ioaddr = (void __iomem *)dev->base_addr;
> 	int numhashregs = (hw->multicast_filter_bins >> 5);
> 	int mcbitslog2 = hw->mcast_bits_log2;
> 	unsigned int value;
> 	int i;

Yes.
	Andrew

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
