Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 71E594E388
	for <lists+linux-mediatek@lfdr.de>; Fri, 21 Jun 2019 11:27:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WaLVHd4SbDq5Ai0MONy8xB5oad66v2142uEwQGDxxoQ=; b=dVYFg6gobRNZug
	CpnXUWFJHP7V+rgQpDdAlaHsvtQ+Cy3Zx5CLytgcCT4HCQS8wDAvdGvO0OFzvf9uqfw2n1GtCdywM
	AjbGAEUXbLoKgv9XPjlkeBlQFiQNR0TAIZadQxfL1YxdhSU1wUGevQxbeGl2RiEe3ZFa7u3RMCG8g
	sWRthQlH2qwHbRB6ia5UrnDp9wevj8KI8NNyteu+sOWb4N8qUmOpvefuoIKsI7RNbh3zn4RZGC+fz
	cxMsU1bdNyK2PlqguFQsytQZs0hz/faISqS2dfPFlo2hbVeJHG8rMvA37WCsWJlVWX41t+g6pUFsU
	/W3MuZ2GQS521yPmfUSw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1heFpn-0004vE-HR; Fri, 21 Jun 2019 09:27:51 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1heFe2-0002YA-Ip; Fri, 21 Jun 2019 09:15:45 +0000
X-UUID: 483f39d82a6b4d4cb56db9e44d4275fb-20190621
X-UUID: 483f39d82a6b4d4cb56db9e44d4275fb-20190621
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw02.mediatek.com
 (envelope-from <biao.huang@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1783589090; Fri, 21 Jun 2019 01:15:28 -0800
Received: from MTKMBS31N1.mediatek.inc (172.27.4.69) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 21 Jun 2019 02:15:21 -0700
Received: from MTKCAS36.mediatek.inc (172.27.4.186) by MTKMBS31N1.mediatek.inc
 (172.27.4.69) with Microsoft SMTP Server (TLS) id 15.0.1395.4;
 Fri, 21 Jun 2019 17:15:12 +0800
Received: from [10.17.3.153] (172.27.4.253) by MTKCAS36.mediatek.inc
 (172.27.4.170) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Fri, 21 Jun 2019 17:15:11 +0800
Message-ID: <1561108511.7458.0.camel@mhfsdcap03>
Subject: Re: [v7, PATCH] net: stmmac: add support for hash table size
 128/256 in dwmac4
From: biao huang <biao.huang@mediatek.com>
To: "davem@davemloft.net" <davem@davemloft.net>, Jose Abreu
 <joabreu@synopsys.com>
Date: Fri, 21 Jun 2019 17:15:11 +0800
In-Reply-To: <1559208626-3218-2-git-send-email-biao.huang@mediatek.com>
References: <1559208626-3218-1-git-send-email-biao.huang@mediatek.com>
 <1559208626-3218-2-git-send-email-biao.huang@mediatek.com>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190621_021542_860142_2FF67989 
X-CRM114-Status: GOOD (  24.89  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: "andrew@lunn.ch" <andrew@lunn.ch>,
 Jianguo Zhang =?UTF-8?Q?=28=E5=BC=A0=E5=BB=BA=E5=9B=BD=29?=
 <Jianguo.Zhang@mediatek.com>, Alexandre Torgue <alexandre.torgue@st.com>,
 "boon.leong.ong@intel.com" <boon.leong.ong@intel.com>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Giuseppe Cavallaro <peppe.cavallaro@st.com>,
 "linux-stm32@st-md-mailman.stormreply.com"
 <linux-stm32@st-md-mailman.stormreply.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Dear David, Jose,

	any comments about this patch?

Thanks
Biao

On Thu, 2019-05-30 at 17:30 +0800, Biao Huang wrote:
> 1. get hash table size in hw feature reigster, and add support
> for taller hash table(128/256) in dwmac4.
> 2. only clear GMAC_PACKET_FILTER bits used in this function,
> to avoid side effect to functions of other bits.
> 
> stmmac selftests output log with flow control on:
> 	ethtool -t eth0
> 	The test result is PASS
> 	The test extra info:
> 	 1. MAC Loopback                 0
> 	 2. PHY Loopback                 -95
> 	 3. MMC Counters                 0
> 	 4. EEE                          -95
> 	 5. Hash Filter MC               0
> 	 6. Perfect Filter UC            0
> 	 7. MC Filter                    0
> 	 8. UC Filter                    0
> 	 9. Flow Control                 0
> 
> Signed-off-by: Biao Huang <biao.huang@mediatek.com>
> ---
>  drivers/net/ethernet/stmicro/stmmac/common.h      |    7 +--
>  drivers/net/ethernet/stmicro/stmmac/dwmac4.h      |    4 +-
>  drivers/net/ethernet/stmicro/stmmac/dwmac4_core.c |   49 ++++++++++++---------
>  drivers/net/ethernet/stmicro/stmmac/dwmac4_dma.c  |    1 +
>  drivers/net/ethernet/stmicro/stmmac/stmmac_main.c |    6 +++
>  5 files changed, 42 insertions(+), 25 deletions(-)
> 
> diff --git a/drivers/net/ethernet/stmicro/stmmac/common.h b/drivers/net/ethernet/stmicro/stmmac/common.h
> index 1961fe9..26bbcd8 100644
> --- a/drivers/net/ethernet/stmicro/stmmac/common.h
> +++ b/drivers/net/ethernet/stmicro/stmmac/common.h
> @@ -335,6 +335,7 @@ struct dma_features {
>  	/* 802.3az - Energy-Efficient Ethernet (EEE) */
>  	unsigned int eee;
>  	unsigned int av;
> +	unsigned int hash_tb_sz;
>  	unsigned int tsoen;
>  	/* TX and RX csum */
>  	unsigned int tx_coe;
> @@ -428,9 +429,9 @@ struct mac_device_info {
>  	struct mii_regs mii;	/* MII register Addresses */
>  	struct mac_link link;
>  	void __iomem *pcsr;     /* vpointer to device CSRs */
> -	int multicast_filter_bins;
> -	int unicast_filter_entries;
> -	int mcast_bits_log2;
> +	unsigned int multicast_filter_bins;
> +	unsigned int unicast_filter_entries;
> +	unsigned int mcast_bits_log2;
>  	unsigned int rx_csum;
>  	unsigned int pcs;
>  	unsigned int pmt;
> diff --git a/drivers/net/ethernet/stmicro/stmmac/dwmac4.h b/drivers/net/ethernet/stmicro/stmmac/dwmac4.h
> index 01c1089..b68785f7 100644
> --- a/drivers/net/ethernet/stmicro/stmmac/dwmac4.h
> +++ b/drivers/net/ethernet/stmicro/stmmac/dwmac4.h
> @@ -18,8 +18,7 @@
>  /*  MAC registers */
>  #define GMAC_CONFIG			0x00000000
>  #define GMAC_PACKET_FILTER		0x00000008
> -#define GMAC_HASH_TAB_0_31		0x00000010
> -#define GMAC_HASH_TAB_32_63		0x00000014
> +#define GMAC_HASH_TAB(x)		(0x10 + (x) * 4)
>  #define GMAC_RX_FLOW_CTRL		0x00000090
>  #define GMAC_QX_TX_FLOW_CTRL(x)		(0x70 + x * 4)
>  #define GMAC_TXQ_PRTY_MAP0		0x98
> @@ -184,6 +183,7 @@ enum power_event {
>  #define GMAC_HW_FEAT_MIISEL		BIT(0)
>  
>  /* MAC HW features1 bitmap */
> +#define GMAC_HW_HASH_TB_SZ		GENMASK(25, 24)
>  #define GMAC_HW_FEAT_AVSEL		BIT(20)
>  #define GMAC_HW_TSOEN			BIT(18)
>  #define GMAC_HW_TXFIFOSIZE		GENMASK(10, 6)
> diff --git a/drivers/net/ethernet/stmicro/stmmac/dwmac4_core.c b/drivers/net/ethernet/stmicro/stmmac/dwmac4_core.c
> index 5e98da4..4183607 100644
> --- a/drivers/net/ethernet/stmicro/stmmac/dwmac4_core.c
> +++ b/drivers/net/ethernet/stmicro/stmmac/dwmac4_core.c
> @@ -403,41 +403,50 @@ static void dwmac4_set_filter(struct mac_device_info *hw,
>  			      struct net_device *dev)
>  {
>  	void __iomem *ioaddr = (void __iomem *)dev->base_addr;
> -	unsigned int value = 0;
> +	int numhashregs = (hw->multicast_filter_bins >> 5);
> +	int mcbitslog2 = hw->mcast_bits_log2;
> +	unsigned int value;
> +	int i;
>  
> +	value = readl(ioaddr + GMAC_PACKET_FILTER);
> +	value &= ~GMAC_PACKET_FILTER_HMC;
> +	value &= ~GMAC_PACKET_FILTER_HPF;
> +	value &= ~GMAC_PACKET_FILTER_PCF;
> +	value &= ~GMAC_PACKET_FILTER_PM;
> +	value &= ~GMAC_PACKET_FILTER_PR;
>  	if (dev->flags & IFF_PROMISC) {
>  		value = GMAC_PACKET_FILTER_PR | GMAC_PACKET_FILTER_PCF;
>  	} else if ((dev->flags & IFF_ALLMULTI) ||
> -			(netdev_mc_count(dev) > HASH_TABLE_SIZE)) {
> +		   (netdev_mc_count(dev) > hw->multicast_filter_bins)) {
>  		/* Pass all multi */
> -		value = GMAC_PACKET_FILTER_PM;
> -		/* Set the 64 bits of the HASH tab. To be updated if taller
> -		 * hash table is used
> -		 */
> -		writel(0xffffffff, ioaddr + GMAC_HASH_TAB_0_31);
> -		writel(0xffffffff, ioaddr + GMAC_HASH_TAB_32_63);
> +		value |= GMAC_PACKET_FILTER_PM;
> +		/* Set all the bits of the HASH tab */
> +		for (i = 0; i < numhashregs; i++)
> +			writel(0xffffffff, ioaddr + GMAC_HASH_TAB(i));
>  	} else if (!netdev_mc_empty(dev)) {
> -		u32 mc_filter[2];
>  		struct netdev_hw_addr *ha;
> +		u32 mc_filter[8];
>  
>  		/* Hash filter for multicast */
> -		value = GMAC_PACKET_FILTER_HMC;
> +		value |= GMAC_PACKET_FILTER_HMC;
>  
>  		memset(mc_filter, 0, sizeof(mc_filter));
>  		netdev_for_each_mc_addr(ha, dev) {
> -			/* The upper 6 bits of the calculated CRC are used to
> -			 * index the content of the Hash Table Reg 0 and 1.
> +			/* The upper n bits of the calculated CRC are used to
> +			 * index the contents of the hash table. The number of
> +			 * bits used depends on the hardware configuration
> +			 * selected at core configuration time.
>  			 */
> -			int bit_nr =
> -				(bitrev32(~crc32_le(~0, ha->addr, 6)) >> 26);
> -			/* The most significant bit determines the register
> -			 * to use while the other 5 bits determines the bit
> -			 * within the selected register
> +			int bit_nr = bitrev32(~crc32_le(~0, ha->addr,
> +					ETH_ALEN)) >> (32 - mcbitslog2);
> +			/* The most significant bit determines the register to
> +			 * use (H/L) while the other 5 bits determine the bit
> +			 * within the register.
>  			 */
> -			mc_filter[bit_nr >> 5] |= (1 << (bit_nr & 0x1F));
> +			mc_filter[bit_nr >> 5] |= (1 << (bit_nr & 0x1f));
>  		}
> -		writel(mc_filter[0], ioaddr + GMAC_HASH_TAB_0_31);
> -		writel(mc_filter[1], ioaddr + GMAC_HASH_TAB_32_63);
> +		for (i = 0; i < numhashregs; i++)
> +			writel(mc_filter[i], ioaddr + GMAC_HASH_TAB(i));
>  	}
>  
>  	value |= GMAC_PACKET_FILTER_HPF;
> diff --git a/drivers/net/ethernet/stmicro/stmmac/dwmac4_dma.c b/drivers/net/ethernet/stmicro/stmmac/dwmac4_dma.c
> index edb6053..59afb53 100644
> --- a/drivers/net/ethernet/stmicro/stmmac/dwmac4_dma.c
> +++ b/drivers/net/ethernet/stmicro/stmmac/dwmac4_dma.c
> @@ -354,6 +354,7 @@ static void dwmac4_get_hw_feature(void __iomem *ioaddr,
>  
>  	/* MAC HW feature1 */
>  	hw_cap = readl(ioaddr + GMAC_HW_FEATURE1);
> +	dma_cap->hash_tb_sz = (hw_cap & GMAC_HW_HASH_TB_SZ) >> 24;
>  	dma_cap->av = (hw_cap & GMAC_HW_FEAT_AVSEL) >> 20;
>  	dma_cap->tsoen = (hw_cap & GMAC_HW_TSOEN) >> 18;
>  	/* RX and TX FIFO sizes are encoded as log2(n / 128). Undo that by
> diff --git a/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c b/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c
> index 8fcbf22..f7aac15 100644
> --- a/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c
> +++ b/drivers/net/ethernet/stmicro/stmmac/stmmac_main.c
> @@ -4166,6 +4166,12 @@ static int stmmac_hw_init(struct stmmac_priv *priv)
>  		priv->plat->enh_desc = priv->dma_cap.enh_desc;
>  		priv->plat->pmt = priv->dma_cap.pmt_remote_wake_up;
>  		priv->hw->pmt = priv->plat->pmt;
> +		if (priv->dma_cap.hash_tb_sz) {
> +			priv->hw->multicast_filter_bins =
> +					(BIT(priv->dma_cap.hash_tb_sz) << 5);
> +			priv->hw->mcast_bits_log2 =
> +					ilog2(priv->hw->multicast_filter_bins);
> +		}
>  
>  		/* TXCOE doesn't work in thresh DMA mode */
>  		if (priv->plat->force_thresh_dma_mode)



_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
