Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A69F26BC2B
	for <lists+linux-mediatek@lfdr.de>; Wed, 17 Jul 2019 14:15:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hx4UrPx9flqnevwMCGUPOwr2NHdHD9G095z+xO3Df3g=; b=J4/u9ppGFHv/z9
	YHuLGlOhzYSqixgOpQKhZexpSPpMy1R8wxkwTIMMVAOHlmo1uGi5ix40hrdqI/yzES5Gpaykw/IdA
	+3/3ag1Wh75uPDOM9R+xeXFSdva/lkCnn5twphedZLGI+Wu7DXEOtegzLao4kJ2arri9GHu+yGUIG
	Mic0xAnPEru/ge1Zr/2+D9czJFSQU2hSKAmtUgWIuCINoHajcAdXTl72UX8JcV8xNgtToprkp0FAc
	hMxhNmP39u1qHMsTJqiol5vzpwyPZP/8SzyDuRvYYg4JkG2O0rh9LUDTwh5cqT61xTcfq9AhZ+mxA
	s8IdyLgagMWiue4gtmCA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hniqN-0005TY-MB; Wed, 17 Jul 2019 12:15:35 +0000
Received: from fudo.makrotopia.org ([2a07:2ec0:3002::71])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hniqI-0005SX-DU
 for linux-mediatek@lists.infradead.org; Wed, 17 Jul 2019 12:15:34 +0000
Received: from local
 by fudo.makrotopia.org with esmtpsa (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256)
 (Exim 4.91) (envelope-from <daniel@makrotopia.org>)
 id 1hnipz-00035G-Qg; Wed, 17 Jul 2019 14:15:14 +0200
Date: Wed, 17 Jul 2019 14:15:06 +0200
From: Daniel Golle <daniel@makrotopia.org>
To: Stefan Roese <sr@denx.de>
Subject: Re: [PATCH] net: ethernet: mediatek: Add MT7628/88 SoC support
Message-ID: <20190717121506.GD18996@makrotopia.org>
References: <20190717110243.14240-1-sr@denx.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190717110243.14240-1-sr@denx.de>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190717_051530_788202_54A3F0E3 
X-CRM114-Status: GOOD (  24.47  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Felix Fietkau <nbd@openwrt.org>, netdev@vger.kernel.org,
 Sean Wang <sean.wang@mediatek.com>,
 =?iso-8859-1?Q?Ren=E9?= van Dorst <opensource@vdorst.com>,
 linux-mediatek@lists.infradead.org, John Crispin <john@phrozen.org>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Wed, Jul 17, 2019 at 01:02:43PM +0200, Stefan Roese wrote:
> This patch adds support for the MediaTek MT7628/88 SoCs to the common
> MediaTek ethernet driver. Some minor changes are needed for this and
> a bigger change, as the MT7628 does not support QDMA (only PDMA).

The Ethernet core found in MT7628/88 is identical to that found in
Ralink Rt5350F SoC. Wouldn't it hence make sense to indicate that
in the compatible string of this driver as well? In OpenWrt we are
using "ralink,rt5350-eth".


> =

> Signed-off-by: Stefan Roese <sr@denx.de>
> Cc: Ren=E9 van Dorst <opensource@vdorst.com>
> Cc: Sean Wang <sean.wang@mediatek.com>
> Cc: Felix Fietkau <nbd@openwrt.org>
> Cc: John Crispin <john@phrozen.org>
> ---
>  .../devicetree/bindings/net/mediatek-net.txt  |   1 +
>  drivers/net/ethernet/mediatek/mtk_eth_path.c  |   4 +
>  drivers/net/ethernet/mediatek/mtk_eth_soc.c   | 490 ++++++++++++++----
>  drivers/net/ethernet/mediatek/mtk_eth_soc.h   |  39 +-
>  4 files changed, 424 insertions(+), 110 deletions(-)
> =

> diff --git a/Documentation/devicetree/bindings/net/mediatek-net.txt b/Doc=
umentation/devicetree/bindings/net/mediatek-net.txt
> index 770ff98d4524..ec6793562148 100644
> --- a/Documentation/devicetree/bindings/net/mediatek-net.txt
> +++ b/Documentation/devicetree/bindings/net/mediatek-net.txt
> @@ -11,6 +11,7 @@ Required properties:
>  		"mediatek,mt2701-eth": for MT2701 SoC
>  		"mediatek,mt7623-eth", "mediatek,mt2701-eth": for MT7623 SoC
>  		"mediatek,mt7622-eth": for MT7622 SoC
> +		"mediatek,mt7628-eth": for MT7628/88 SoC
>  		"mediatek,mt7629-eth": for MT7629 SoC
>  - reg: Address and length of the register set for the device
>  - interrupts: Should contain the three frame engines interrupts in numer=
ic
> diff --git a/drivers/net/ethernet/mediatek/mtk_eth_path.c b/drivers/net/e=
thernet/mediatek/mtk_eth_path.c
> index 7f05880cf9ef..28960e4c4e43 100644
> --- a/drivers/net/ethernet/mediatek/mtk_eth_path.c
> +++ b/drivers/net/ethernet/mediatek/mtk_eth_path.c
> @@ -315,6 +315,10 @@ int mtk_setup_hw_path(struct mtk_eth *eth, int mac_i=
d, int phymode)
>  {
>  	int err;
>  =

> +	/* No mux'ing for MT7628/88 */
> +	if (MTK_HAS_CAPS(eth->soc->caps, MTK_SOC_MT7628))
> +		return 0;
> +
>  	switch (phymode) {
>  	case PHY_INTERFACE_MODE_TRGMII:
>  	case PHY_INTERFACE_MODE_RGMII_TXID:
> diff --git a/drivers/net/ethernet/mediatek/mtk_eth_soc.c b/drivers/net/et=
hernet/mediatek/mtk_eth_soc.c
> index b20b3a5a1ebb..1f248ef6ef88 100644
> --- a/drivers/net/ethernet/mediatek/mtk_eth_soc.c
> +++ b/drivers/net/ethernet/mediatek/mtk_eth_soc.c
> @@ -323,11 +323,14 @@ static int mtk_phy_connect(struct net_device *dev)
>  		goto err_phy;
>  	}
>  =

> -	/* put the gmac into the right mode */
> -	regmap_read(eth->ethsys, ETHSYS_SYSCFG0, &val);
> -	val &=3D ~SYSCFG0_GE_MODE(SYSCFG0_GE_MASK, mac->id);
> -	val |=3D SYSCFG0_GE_MODE(mac->ge_mode, mac->id);
> -	regmap_write(eth->ethsys, ETHSYS_SYSCFG0, val);
> +	/* No MT7628/88 support for now */
> +	if (!MTK_HAS_CAPS(eth->soc->caps, MTK_SOC_MT7628)) {
> +		/* put the gmac into the right mode */
> +		regmap_read(eth->ethsys, ETHSYS_SYSCFG0, &val);
> +		val &=3D ~SYSCFG0_GE_MODE(SYSCFG0_GE_MASK, mac->id);
> +		val |=3D SYSCFG0_GE_MODE(mac->ge_mode, mac->id);
> +		regmap_write(eth->ethsys, ETHSYS_SYSCFG0, val);
> +	}
>  =

>  	/* couple phydev to net_device */
>  	if (mtk_phy_connect_node(eth, mac, np))
> @@ -395,8 +398,8 @@ static inline void mtk_tx_irq_disable(struct mtk_eth =
*eth, u32 mask)
>  	u32 val;
>  =

>  	spin_lock_irqsave(&eth->tx_irq_lock, flags);
> -	val =3D mtk_r32(eth, MTK_QDMA_INT_MASK);
> -	mtk_w32(eth, val & ~mask, MTK_QDMA_INT_MASK);
> +	val =3D mtk_r32(eth, eth->tx_int_mask_reg);
> +	mtk_w32(eth, val & ~mask, eth->tx_int_mask_reg);
>  	spin_unlock_irqrestore(&eth->tx_irq_lock, flags);
>  }
>  =

> @@ -406,8 +409,8 @@ static inline void mtk_tx_irq_enable(struct mtk_eth *=
eth, u32 mask)
>  	u32 val;
>  =

>  	spin_lock_irqsave(&eth->tx_irq_lock, flags);
> -	val =3D mtk_r32(eth, MTK_QDMA_INT_MASK);
> -	mtk_w32(eth, val | mask, MTK_QDMA_INT_MASK);
> +	val =3D mtk_r32(eth, eth->tx_int_mask_reg);
> +	mtk_w32(eth, val | mask, eth->tx_int_mask_reg);
>  	spin_unlock_irqrestore(&eth->tx_irq_lock, flags);
>  }
>  =

> @@ -437,6 +440,7 @@ static int mtk_set_mac_address(struct net_device *dev=
, void *p)
>  {
>  	int ret =3D eth_mac_addr(dev, p);
>  	struct mtk_mac *mac =3D netdev_priv(dev);
> +	struct mtk_eth *eth =3D mac->hw;
>  	const char *macaddr =3D dev->dev_addr;
>  =

>  	if (ret)
> @@ -446,11 +450,19 @@ static int mtk_set_mac_address(struct net_device *d=
ev, void *p)
>  		return -EBUSY;
>  =

>  	spin_lock_bh(&mac->hw->page_lock);
> -	mtk_w32(mac->hw, (macaddr[0] << 8) | macaddr[1],
> -		MTK_GDMA_MAC_ADRH(mac->id));
> -	mtk_w32(mac->hw, (macaddr[2] << 24) | (macaddr[3] << 16) |
> -		(macaddr[4] << 8) | macaddr[5],
> -		MTK_GDMA_MAC_ADRL(mac->id));
> +	if (MTK_HAS_CAPS(eth->soc->caps, MTK_SOC_MT7628)) {
> +		mtk_w32(mac->hw, (macaddr[0] << 8) | macaddr[1],
> +			MT7628_SDM_MAC_ADRH);
> +		mtk_w32(mac->hw, (macaddr[2] << 24) | (macaddr[3] << 16) |
> +			(macaddr[4] << 8) | macaddr[5],
> +			MT7628_SDM_MAC_ADRL);
> +	} else {
> +		mtk_w32(mac->hw, (macaddr[0] << 8) | macaddr[1],
> +			MTK_GDMA_MAC_ADRH(mac->id));
> +		mtk_w32(mac->hw, (macaddr[2] << 24) | (macaddr[3] << 16) |
> +			(macaddr[4] << 8) | macaddr[5],
> +			MTK_GDMA_MAC_ADRL(mac->id));
> +	}
>  	spin_unlock_bh(&mac->hw->page_lock);
>  =

>  	return 0;
> @@ -626,19 +638,47 @@ static inline struct mtk_tx_buf *mtk_desc_to_tx_buf=
(struct mtk_tx_ring *ring,
>  	return &ring->buf[idx];
>  }
>  =

> +static struct mtk_tx_dma *qdma_to_pdma(struct mtk_tx_ring *ring,
> +				       struct mtk_tx_dma *dma)
> +{
> +	return ring->dma_pdma - ring->dma + dma;
> +}
> +
> +static int txd_to_idx(struct mtk_tx_ring *ring, struct mtk_tx_dma *dma)
> +{
> +	return ((u32)dma - (u32)ring->dma) / sizeof(*dma);
> +}
> +
>  static void mtk_tx_unmap(struct mtk_eth *eth, struct mtk_tx_buf *tx_buf)
>  {
> -	if (tx_buf->flags & MTK_TX_FLAGS_SINGLE0) {
> -		dma_unmap_single(eth->dev,
> -				 dma_unmap_addr(tx_buf, dma_addr0),
> -				 dma_unmap_len(tx_buf, dma_len0),
> -				 DMA_TO_DEVICE);
> -	} else if (tx_buf->flags & MTK_TX_FLAGS_PAGE0) {
> -		dma_unmap_page(eth->dev,
> -			       dma_unmap_addr(tx_buf, dma_addr0),
> -			       dma_unmap_len(tx_buf, dma_len0),
> -			       DMA_TO_DEVICE);
> +	if (MTK_HAS_CAPS(eth->soc->caps, MTK_SOC_MT7628)) {
> +		if (dma_unmap_len(tx_buf, dma_len0)) {
> +			dma_unmap_page(eth->dev,
> +				       dma_unmap_addr(tx_buf, dma_addr0),
> +				       dma_unmap_len(tx_buf, dma_len0),
> +				       DMA_TO_DEVICE);
> +		}
> +
> +		if (dma_unmap_len(tx_buf, dma_len1)) {
> +			dma_unmap_page(eth->dev,
> +				       dma_unmap_addr(tx_buf, dma_addr1),
> +				       dma_unmap_len(tx_buf, dma_len1),
> +				       DMA_TO_DEVICE);
> +		}
> +	} else {
> +		if (tx_buf->flags & MTK_TX_FLAGS_SINGLE0) {
> +			dma_unmap_single(eth->dev,
> +					 dma_unmap_addr(tx_buf, dma_addr0),
> +					 dma_unmap_len(tx_buf, dma_len0),
> +					 DMA_TO_DEVICE);
> +		} else if (tx_buf->flags & MTK_TX_FLAGS_PAGE0) {
> +			dma_unmap_page(eth->dev,
> +				       dma_unmap_addr(tx_buf, dma_addr0),
> +				       dma_unmap_len(tx_buf, dma_len0),
> +				       DMA_TO_DEVICE);
> +		}
>  	}
> +
>  	tx_buf->flags =3D 0;
>  	if (tx_buf->skb &&
>  	    (tx_buf->skb !=3D (struct sk_buff *)MTK_DMA_DUMMY_DESC))
> @@ -646,19 +686,45 @@ static void mtk_tx_unmap(struct mtk_eth *eth, struc=
t mtk_tx_buf *tx_buf)
>  	tx_buf->skb =3D NULL;
>  }
>  =

> +static void setup_tx_buf(struct mtk_eth *eth, struct mtk_tx_buf *tx_buf,
> +			 struct mtk_tx_dma *txd, dma_addr_t mapped_addr,
> +			 size_t size, int idx)
> +{
> +	if (MTK_HAS_CAPS(eth->soc->caps, MTK_SOC_MT7628)) {
> +		if (idx & 1) {
> +			txd->txd3 =3D mapped_addr;
> +			txd->txd2 |=3D TX_DMA_PLEN1(size);
> +			dma_unmap_addr_set(tx_buf, dma_addr1, mapped_addr);
> +			dma_unmap_len_set(tx_buf, dma_len1, size);
> +		} else {
> +			tx_buf->skb =3D (struct sk_buff *)MTK_DMA_DUMMY_DESC;
> +			txd->txd1 =3D mapped_addr;
> +			txd->txd2 =3D TX_DMA_PLEN0(size);
> +			dma_unmap_addr_set(tx_buf, dma_addr0, mapped_addr);
> +			dma_unmap_len_set(tx_buf, dma_len0, size);
> +		}
> +	} else {
> +		dma_unmap_addr_set(tx_buf, dma_addr0, mapped_addr);
> +		dma_unmap_len_set(tx_buf, dma_len0, size);
> +	}
> +}
> +
>  static int mtk_tx_map(struct sk_buff *skb, struct net_device *dev,
>  		      int tx_num, struct mtk_tx_ring *ring, bool gso)
>  {
>  	struct mtk_mac *mac =3D netdev_priv(dev);
>  	struct mtk_eth *eth =3D mac->hw;
>  	struct mtk_tx_dma *itxd, *txd;
> +	struct mtk_tx_dma *itxd_pdma, *txd_pdma;
>  	struct mtk_tx_buf *itx_buf, *tx_buf;
>  	dma_addr_t mapped_addr;
>  	unsigned int nr_frags;
>  	int i, n_desc =3D 1;
>  	u32 txd4 =3D 0, fport;
> +	int k =3D 0;
>  =

>  	itxd =3D ring->next_free;
> +	itxd_pdma =3D qdma_to_pdma(ring, itxd);
>  	if (itxd =3D=3D ring->last_free)
>  		return -ENOMEM;
>  =

> @@ -689,12 +755,14 @@ static int mtk_tx_map(struct sk_buff *skb, struct n=
et_device *dev,
>  	itx_buf->flags |=3D MTK_TX_FLAGS_SINGLE0;
>  	itx_buf->flags |=3D (!mac->id) ? MTK_TX_FLAGS_FPORT0 :
>  			  MTK_TX_FLAGS_FPORT1;
> -	dma_unmap_addr_set(itx_buf, dma_addr0, mapped_addr);
> -	dma_unmap_len_set(itx_buf, dma_len0, skb_headlen(skb));
> +	setup_tx_buf(eth, itx_buf, itxd_pdma, mapped_addr, skb_headlen(skb),
> +		     k++);
>  =

>  	/* TX SG offload */
>  	txd =3D itxd;
> +	txd_pdma =3D qdma_to_pdma(ring, txd);
>  	nr_frags =3D skb_shinfo(skb)->nr_frags;
> +
>  	for (i =3D 0; i < nr_frags; i++) {
>  		struct skb_frag_struct *frag =3D &skb_shinfo(skb)->frags[i];
>  		unsigned int offset =3D 0;
> @@ -703,12 +771,20 @@ static int mtk_tx_map(struct sk_buff *skb, struct n=
et_device *dev,
>  		while (frag_size) {
>  			bool last_frag =3D false;
>  			unsigned int frag_map_size;
> +			bool new_desc =3D true;
> +
> +			if (MTK_HAS_CAPS(eth->soc->caps, MTK_SOC_MT7628) &&
> +			    !(i & 0x1)) {
> +				new_desc =3D false;
> +			} else {
> +				txd =3D mtk_qdma_phys_to_virt(ring, txd->txd2);
> +				txd_pdma =3D qdma_to_pdma(ring, txd);
> +				if (txd =3D=3D ring->last_free)
> +					goto err_dma;
> +
> +				n_desc++;
> +			}
>  =

> -			txd =3D mtk_qdma_phys_to_virt(ring, txd->txd2);
> -			if (txd =3D=3D ring->last_free)
> -				goto err_dma;
> -
> -			n_desc++;
>  			frag_map_size =3D min(frag_size, MTK_TX_DMA_BUF_LEN);
>  			mapped_addr =3D skb_frag_dma_map(eth->dev, frag, offset,
>  						       frag_map_size,
> @@ -727,14 +803,16 @@ static int mtk_tx_map(struct sk_buff *skb, struct n=
et_device *dev,
>  			WRITE_ONCE(txd->txd4, fport);
>  =

>  			tx_buf =3D mtk_desc_to_tx_buf(ring, txd);
> -			memset(tx_buf, 0, sizeof(*tx_buf));
> +			if (new_desc)
> +				memset(tx_buf, 0, sizeof(*tx_buf));
>  			tx_buf->skb =3D (struct sk_buff *)MTK_DMA_DUMMY_DESC;
>  			tx_buf->flags |=3D MTK_TX_FLAGS_PAGE0;
>  			tx_buf->flags |=3D (!mac->id) ? MTK_TX_FLAGS_FPORT0 :
>  					 MTK_TX_FLAGS_FPORT1;
>  =

> -			dma_unmap_addr_set(tx_buf, dma_addr0, mapped_addr);
> -			dma_unmap_len_set(tx_buf, dma_len0, frag_map_size);
> +			setup_tx_buf(eth, tx_buf, txd_pdma, mapped_addr,
> +				     frag_map_size, k++);
> +
>  			frag_size -=3D frag_map_size;
>  			offset +=3D frag_map_size;
>  		}
> @@ -746,6 +824,12 @@ static int mtk_tx_map(struct sk_buff *skb, struct ne=
t_device *dev,
>  	WRITE_ONCE(itxd->txd4, txd4);
>  	WRITE_ONCE(itxd->txd3, (TX_DMA_SWC | TX_DMA_PLEN0(skb_headlen(skb)) |
>  				(!nr_frags * TX_DMA_LS0)));
> +	if (MTK_HAS_CAPS(eth->soc->caps, MTK_SOC_MT7628)) {
> +		if (k & 0x1)
> +			txd_pdma->txd2 |=3D TX_DMA_LS0;
> +		else
> +			txd_pdma->txd2 |=3D TX_DMA_LS1;
> +	}
>  =

>  	netdev_sent_queue(dev, skb->len);
>  	skb_tx_timestamp(skb);
> @@ -758,9 +842,15 @@ static int mtk_tx_map(struct sk_buff *skb, struct ne=
t_device *dev,
>  	 */
>  	wmb();
>  =

> -	if (netif_xmit_stopped(netdev_get_tx_queue(dev, 0)) ||
> -	    !netdev_xmit_more())
> -		mtk_w32(eth, txd->txd2, MTK_QTX_CTX_PTR);
> +	if (MTK_HAS_CAPS(eth->soc->caps, MTK_SOC_MT7628)) {
> +		int next_idx =3D NEXT_DESP_IDX(txd_to_idx(ring, txd),
> +					     ring->dma_size);
> +		mtk_w32(eth, next_idx, MT7628_TX_CTX_IDX0);
> +	} else {
> +		if (netif_xmit_stopped(netdev_get_tx_queue(dev, 0)) ||
> +		    !netdev_xmit_more())
> +			mtk_w32(eth, txd->txd2, MTK_QTX_CTX_PTR);
> +	}
>  =

>  	return 0;
>  =

> @@ -772,7 +862,11 @@ static int mtk_tx_map(struct sk_buff *skb, struct ne=
t_device *dev,
>  		mtk_tx_unmap(eth, tx_buf);
>  =

>  		itxd->txd3 =3D TX_DMA_LS0 | TX_DMA_OWNER_CPU;
> +		if (MTK_HAS_CAPS(eth->soc->caps, MTK_SOC_MT7628))
> +			itxd_pdma->txd2 =3D TX_DMA_DESP2_DEF;
> +
>  		itxd =3D mtk_qdma_phys_to_virt(ring, itxd->txd2);
> +		itxd_pdma =3D qdma_to_pdma(ring, itxd);
>  	} while (itxd !=3D txd);
>  =

>  	return -ENOMEM;
> @@ -902,7 +996,7 @@ static struct mtk_rx_ring *mtk_get_rx_ring(struct mtk=
_eth *eth)
>  =

>  	for (i =3D 0; i < MTK_MAX_RX_RING_NUM; i++) {
>  		ring =3D &eth->rx_ring[i];
> -		idx =3D NEXT_RX_DESP_IDX(ring->calc_idx, ring->dma_size);
> +		idx =3D NEXT_DESP_IDX(ring->calc_idx, ring->dma_size);
>  		if (ring->dma[idx].rxd2 & RX_DMA_DONE) {
>  			ring->calc_idx_update =3D true;
>  			return ring;
> @@ -945,13 +1039,13 @@ static int mtk_poll_rx(struct napi_struct *napi, i=
nt budget,
>  		struct net_device *netdev;
>  		unsigned int pktlen;
>  		dma_addr_t dma_addr;
> -		int mac =3D 0;
> +		int mac;
>  =

>  		ring =3D mtk_get_rx_ring(eth);
>  		if (unlikely(!ring))
>  			goto rx_done;
>  =

> -		idx =3D NEXT_RX_DESP_IDX(ring->calc_idx, ring->dma_size);
> +		idx =3D NEXT_DESP_IDX(ring->calc_idx, ring->dma_size);
>  		rxd =3D &ring->dma[idx];
>  		data =3D ring->data[idx];
>  =

> @@ -960,9 +1054,13 @@ static int mtk_poll_rx(struct napi_struct *napi, in=
t budget,
>  			break;
>  =

>  		/* find out which mac the packet come from. values start at 1 */
> -		mac =3D (trxd.rxd4 >> RX_DMA_FPORT_SHIFT) &
> -		      RX_DMA_FPORT_MASK;
> -		mac--;
> +		if (MTK_HAS_CAPS(eth->soc->caps, MTK_SOC_MT7628)) {
> +			mac =3D 0;
> +		} else {
> +			mac =3D (trxd.rxd4 >> RX_DMA_FPORT_SHIFT) &
> +				RX_DMA_FPORT_MASK;
> +			mac--;
> +		}
>  =

>  		if (unlikely(mac < 0 || mac >=3D MTK_MAC_COUNT ||
>  			     !eth->netdev[mac]))
> @@ -980,7 +1078,8 @@ static int mtk_poll_rx(struct napi_struct *napi, int=
 budget,
>  			goto release_desc;
>  		}
>  		dma_addr =3D dma_map_single(eth->dev,
> -					  new_data + NET_SKB_PAD,
> +					  new_data + NET_SKB_PAD +
> +					  eth->ip_align,
>  					  ring->buf_size,
>  					  DMA_FROM_DEVICE);
>  		if (unlikely(dma_mapping_error(eth->dev, dma_addr))) {
> @@ -1003,7 +1102,7 @@ static int mtk_poll_rx(struct napi_struct *napi, in=
t budget,
>  		pktlen =3D RX_DMA_GET_PLEN0(trxd.rxd2);
>  		skb->dev =3D netdev;
>  		skb_put(skb, pktlen);
> -		if (trxd.rxd4 & RX_DMA_L4_VALID)
> +		if (trxd.rxd4 & eth->rx_dma_l4_valid)
>  			skb->ip_summed =3D CHECKSUM_UNNECESSARY;
>  		else
>  			skb_checksum_none_assert(skb);
> @@ -1020,7 +1119,10 @@ static int mtk_poll_rx(struct napi_struct *napi, i=
nt budget,
>  		rxd->rxd1 =3D (unsigned int)dma_addr;
>  =

>  release_desc:
> -		rxd->rxd2 =3D RX_DMA_PLEN0(ring->buf_size);
> +		if (MTK_HAS_CAPS(eth->soc->caps, MTK_SOC_MT7628))
> +			rxd->rxd2 =3D RX_DMA_LSO;
> +		else
> +			rxd->rxd2 =3D RX_DMA_PLEN0(ring->buf_size);
>  =

>  		ring->calc_idx =3D idx;
>  =

> @@ -1039,19 +1141,14 @@ static int mtk_poll_rx(struct napi_struct *napi, =
int budget,
>  	return done;
>  }
>  =

> -static int mtk_poll_tx(struct mtk_eth *eth, int budget)
> +static int mtk_poll_tx_qdma(struct mtk_eth *eth, int budget,
> +			    unsigned int *done, unsigned int *bytes)
>  {
>  	struct mtk_tx_ring *ring =3D &eth->tx_ring;
>  	struct mtk_tx_dma *desc;
>  	struct sk_buff *skb;
>  	struct mtk_tx_buf *tx_buf;
> -	unsigned int done[MTK_MAX_DEVS];
> -	unsigned int bytes[MTK_MAX_DEVS];
>  	u32 cpu, dma;
> -	int total =3D 0, i;
> -
> -	memset(done, 0, sizeof(done));
> -	memset(bytes, 0, sizeof(bytes));
>  =

>  	cpu =3D mtk_r32(eth, MTK_QTX_CRX_PTR);
>  	dma =3D mtk_r32(eth, MTK_QTX_DRX_PTR);
> @@ -1089,6 +1186,62 @@ static int mtk_poll_tx(struct mtk_eth *eth, int bu=
dget)
>  =

>  	mtk_w32(eth, cpu, MTK_QTX_CRX_PTR);
>  =

> +	return budget;
> +}
> +
> +static int mtk_poll_tx_pdma(struct mtk_eth *eth, int budget,
> +			    unsigned int *done, unsigned int *bytes)
> +{
> +	struct mtk_tx_ring *ring =3D &eth->tx_ring;
> +	struct mtk_tx_dma *desc;
> +	struct sk_buff *skb;
> +	struct mtk_tx_buf *tx_buf;
> +	u32 cpu, dma;
> +
> +	cpu =3D ring->cpu_idx;
> +	dma =3D mtk_r32(eth, MT7628_TX_DTX_IDX0);
> +
> +	while ((cpu !=3D dma) && budget) {
> +		tx_buf =3D &ring->buf[cpu];
> +		skb =3D tx_buf->skb;
> +		if (!skb)
> +			break;
> +
> +		if (skb !=3D (struct sk_buff *)MTK_DMA_DUMMY_DESC) {
> +			bytes[0] +=3D skb->len;
> +			done[0]++;
> +			budget--;
> +		}
> +
> +		mtk_tx_unmap(eth, tx_buf);
> +
> +		desc =3D &ring->dma[cpu];
> +		ring->last_free =3D desc;
> +		atomic_inc(&ring->free_count);
> +
> +		cpu =3D NEXT_DESP_IDX(cpu, ring->dma_size);
> +	}
> +
> +	ring->cpu_idx =3D cpu;
> +
> +	return budget;
> +}
> +
> +static int mtk_poll_tx(struct mtk_eth *eth, int budget)
> +{
> +	struct mtk_tx_ring *ring =3D &eth->tx_ring;
> +	unsigned int done[MTK_MAX_DEVS];
> +	unsigned int bytes[MTK_MAX_DEVS];
> +	int total =3D 0, i;
> +
> +	memset(done, 0, sizeof(done));
> +	memset(bytes, 0, sizeof(bytes));
> +
> +	if (MTK_HAS_CAPS(eth->soc->caps, MTK_SOC_MT7628))
> +		budget =3D mtk_poll_tx_pdma(eth, budget, done, bytes);
> +	else
> +		budget =3D mtk_poll_tx_qdma(eth, budget, done, bytes);
> +
>  	for (i =3D 0; i < MTK_MAC_COUNT; i++) {
>  		if (!eth->netdev[i] || !done[i])
>  			continue;
> @@ -1120,8 +1273,12 @@ static int mtk_napi_tx(struct napi_struct *napi, i=
nt budget)
>  	u32 status, mask;
>  	int tx_done =3D 0;
>  =

> -	mtk_handle_status_irq(eth);
> -	mtk_w32(eth, MTK_TX_DONE_INT, MTK_QMTK_INT_STATUS);
> +	if (MTK_HAS_CAPS(eth->soc->caps, MTK_SOC_MT7628)) {
> +		mtk_w32(eth, MTK_TX_DONE_INT, MTK_PDMA_INT_STATUS);
> +	} else {
> +		mtk_handle_status_irq(eth);
> +		mtk_w32(eth, MTK_TX_DONE_INT, MTK_QMTK_INT_STATUS);
> +	}
>  	tx_done =3D mtk_poll_tx(eth, budget);
>  =

>  	if (unlikely(netif_msg_intr(eth))) {
> @@ -1135,7 +1292,10 @@ static int mtk_napi_tx(struct napi_struct *napi, i=
nt budget)
>  	if (tx_done =3D=3D budget)
>  		return budget;
>  =

> -	status =3D mtk_r32(eth, MTK_QMTK_INT_STATUS);
> +	if (MTK_HAS_CAPS(eth->soc->caps, MTK_SOC_MT7628))
> +		status =3D mtk_r32(eth, MTK_PDMA_INT_STATUS);
> +	else
> +		status =3D mtk_r32(eth, MTK_QMTK_INT_STATUS);
>  	if (status & MTK_TX_DONE_INT)
>  		return budget;
>  =

> @@ -1202,6 +1362,24 @@ static int mtk_tx_alloc(struct mtk_eth *eth)
>  		ring->dma[i].txd3 =3D TX_DMA_LS0 | TX_DMA_OWNER_CPU;
>  	}
>  =

> +	/* On MT7688 (PDMA only) this driver uses the ring->dma structs
> +	 * only as the framework. The real HW descriptors are the PDMA
> +	 * descriptors in ring->dma_pdma.
> +	 */
> +	if (MTK_HAS_CAPS(eth->soc->caps, MTK_SOC_MT7628)) {
> +		ring->dma_pdma =3D dma_alloc_coherent(eth->dev, MTK_DMA_SIZE * sz,
> +						    &ring->phys_pdma,
> +						    GFP_ATOMIC);
> +		if (!ring->dma_pdma)
> +			goto no_tx_mem;
> +
> +		for (i =3D 0; i < MTK_DMA_SIZE; i++) {
> +			ring->dma_pdma[i].txd2 =3D TX_DMA_DESP2_DEF;
> +			ring->dma_pdma[i].txd4 =3D 0;
> +		}
> +	}
> +
> +	ring->dma_size =3D MTK_DMA_SIZE;
>  	atomic_set(&ring->free_count, MTK_DMA_SIZE - 2);
>  	ring->next_free =3D &ring->dma[0];
>  	ring->last_free =3D &ring->dma[MTK_DMA_SIZE - 1];
> @@ -1212,15 +1390,23 @@ static int mtk_tx_alloc(struct mtk_eth *eth)
>  	 */
>  	wmb();
>  =

> -	mtk_w32(eth, ring->phys, MTK_QTX_CTX_PTR);
> -	mtk_w32(eth, ring->phys, MTK_QTX_DTX_PTR);
> -	mtk_w32(eth,
> -		ring->phys + ((MTK_DMA_SIZE - 1) * sz),
> -		MTK_QTX_CRX_PTR);
> -	mtk_w32(eth,
> -		ring->phys + ((MTK_DMA_SIZE - 1) * sz),
> -		MTK_QTX_DRX_PTR);
> -	mtk_w32(eth, (QDMA_RES_THRES << 8) | QDMA_RES_THRES, MTK_QTX_CFG(0));
> +	if (MTK_HAS_CAPS(eth->soc->caps, MTK_SOC_MT7628)) {
> +		mtk_w32(eth, ring->phys_pdma, MT7628_TX_BASE_PTR0);
> +		mtk_w32(eth, MTK_DMA_SIZE, MT7628_TX_MAX_CNT0);
> +		mtk_w32(eth, 0, MT7628_TX_CTX_IDX0);
> +		mtk_w32(eth, MT7628_PST_DTX_IDX0, MTK_PDMA_RST_IDX);
> +	} else {
> +		mtk_w32(eth, ring->phys, MTK_QTX_CTX_PTR);
> +		mtk_w32(eth, ring->phys, MTK_QTX_DTX_PTR);
> +		mtk_w32(eth,
> +			ring->phys + ((MTK_DMA_SIZE - 1) * sz),
> +			MTK_QTX_CRX_PTR);
> +		mtk_w32(eth,
> +			ring->phys + ((MTK_DMA_SIZE - 1) * sz),
> +			MTK_QTX_DRX_PTR);
> +		mtk_w32(eth, (QDMA_RES_THRES << 8) | QDMA_RES_THRES,
> +			MTK_QTX_CFG(0));
> +	}
>  =

>  	return 0;
>  =

> @@ -1247,6 +1433,14 @@ static void mtk_tx_clean(struct mtk_eth *eth)
>  				  ring->phys);
>  		ring->dma =3D NULL;
>  	}
> +
> +	if (ring->dma_pdma) {
> +		dma_free_coherent(eth->dev,
> +				  MTK_DMA_SIZE * sizeof(*ring->dma_pdma),
> +				  ring->dma_pdma,
> +				  ring->phys_pdma);
> +		ring->dma_pdma =3D NULL;
> +	}
>  }
>  =

>  static int mtk_rx_alloc(struct mtk_eth *eth, int ring_no, int rx_flag)
> @@ -1294,14 +1488,17 @@ static int mtk_rx_alloc(struct mtk_eth *eth, int =
ring_no, int rx_flag)
>  =

>  	for (i =3D 0; i < rx_dma_size; i++) {
>  		dma_addr_t dma_addr =3D dma_map_single(eth->dev,
> -				ring->data[i] + NET_SKB_PAD,
> +				ring->data[i] + NET_SKB_PAD + eth->ip_align,
>  				ring->buf_size,
>  				DMA_FROM_DEVICE);
>  		if (unlikely(dma_mapping_error(eth->dev, dma_addr)))
>  			return -ENOMEM;
>  		ring->dma[i].rxd1 =3D (unsigned int)dma_addr;
>  =

> -		ring->dma[i].rxd2 =3D RX_DMA_PLEN0(ring->buf_size);
> +		if (MTK_HAS_CAPS(eth->soc->caps, MTK_SOC_MT7628))
> +			ring->dma[i].rxd2 =3D RX_DMA_LSO;
> +		else
> +			ring->dma[i].rxd2 =3D RX_DMA_PLEN0(ring->buf_size);
>  	}
>  	ring->dma_size =3D rx_dma_size;
>  	ring->calc_idx_update =3D false;
> @@ -1617,9 +1814,16 @@ static int mtk_dma_busy_wait(struct mtk_eth *eth)
>  	unsigned long t_start =3D jiffies;
>  =

>  	while (1) {
> -		if (!(mtk_r32(eth, MTK_QDMA_GLO_CFG) &
> -		      (MTK_RX_DMA_BUSY | MTK_TX_DMA_BUSY)))
> -			return 0;
> +		if (MTK_HAS_CAPS(eth->soc->caps, MTK_SOC_MT7628)) {
> +			if (!(mtk_r32(eth, MTK_PDMA_GLO_CFG) &
> +			      (MTK_RX_DMA_BUSY | MTK_TX_DMA_BUSY)))
> +				return 0;
> +		} else {
> +			if (!(mtk_r32(eth, MTK_QDMA_GLO_CFG) &
> +			      (MTK_RX_DMA_BUSY | MTK_TX_DMA_BUSY)))
> +				return 0;
> +		}
> +
>  		if (time_after(jiffies, t_start + MTK_DMA_BUSY_TIMEOUT))
>  			break;
>  	}
> @@ -1636,20 +1840,24 @@ static int mtk_dma_init(struct mtk_eth *eth)
>  	if (mtk_dma_busy_wait(eth))
>  		return -EBUSY;
>  =

> -	/* QDMA needs scratch memory for internal reordering of the
> -	 * descriptors
> -	 */
> -	err =3D mtk_init_fq_dma(eth);
> -	if (err)
> -		return err;
> +	if (!MTK_HAS_CAPS(eth->soc->caps, MTK_SOC_MT7628)) {
> +		/* QDMA needs scratch memory for internal reordering of the
> +		 * descriptors
> +		 */
> +		err =3D mtk_init_fq_dma(eth);
> +		if (err)
> +			return err;
> +	}
>  =

>  	err =3D mtk_tx_alloc(eth);
>  	if (err)
>  		return err;
>  =

> -	err =3D mtk_rx_alloc(eth, 0, MTK_RX_FLAGS_QDMA);
> -	if (err)
> -		return err;
> +	if (!MTK_HAS_CAPS(eth->soc->caps, MTK_SOC_MT7628)) {
> +		err =3D mtk_rx_alloc(eth, 0, MTK_RX_FLAGS_QDMA);
> +		if (err)
> +			return err;
> +	}
>  =

>  	err =3D mtk_rx_alloc(eth, 0, MTK_RX_FLAGS_NORMAL);
>  	if (err)
> @@ -1666,10 +1874,14 @@ static int mtk_dma_init(struct mtk_eth *eth)
>  			return err;
>  	}
>  =

> -	/* Enable random early drop and set drop threshold automatically */
> -	mtk_w32(eth, FC_THRES_DROP_MODE | FC_THRES_DROP_EN | FC_THRES_MIN,
> -		MTK_QDMA_FC_THRES);
> -	mtk_w32(eth, 0x0, MTK_QDMA_HRED2);
> +	if (!MTK_HAS_CAPS(eth->soc->caps, MTK_SOC_MT7628)) {
> +		/* Enable random early drop and set drop threshold
> +		 * automatically
> +		 */
> +		mtk_w32(eth, FC_THRES_DROP_MODE | FC_THRES_DROP_EN |
> +			FC_THRES_MIN, MTK_QDMA_FC_THRES);
> +		mtk_w32(eth, 0x0, MTK_QDMA_HRED2);
> +	}
>  =

>  	return 0;
>  }
> @@ -1740,14 +1952,23 @@ static irqreturn_t mtk_handle_irq_tx(int irq, voi=
d *_eth)
>  static irqreturn_t mtk_handle_irq(int irq, void *_eth)
>  {
>  	struct mtk_eth *eth =3D _eth;
> +	u32 status;
>  =

> +	status =3D mtk_r32(eth, MTK_PDMA_INT_STATUS);
>  	if (mtk_r32(eth, MTK_PDMA_INT_MASK) & MTK_RX_DONE_INT) {
>  		if (mtk_r32(eth, MTK_PDMA_INT_STATUS) & MTK_RX_DONE_INT)
>  			mtk_handle_irq_rx(irq, _eth);
>  	}
> -	if (mtk_r32(eth, MTK_QDMA_INT_MASK) & MTK_TX_DONE_INT) {
> -		if (mtk_r32(eth, MTK_QMTK_INT_STATUS) & MTK_TX_DONE_INT)
> -			mtk_handle_irq_tx(irq, _eth);
> +	if (MTK_HAS_CAPS(eth->soc->caps, MTK_SOC_MT7628)) {
> +		if (mtk_r32(eth, MTK_PDMA_INT_MASK) & MTK_TX_DONE_INT) {
> +			if (mtk_r32(eth, MTK_PDMA_INT_STATUS) & MTK_TX_DONE_INT)
> +				mtk_handle_irq_tx(irq, _eth);
> +		}
> +	} else {
> +		if (mtk_r32(eth, MTK_QDMA_INT_MASK) & MTK_TX_DONE_INT) {
> +			if (mtk_r32(eth, MTK_QMTK_INT_STATUS) & MTK_TX_DONE_INT)
> +				mtk_handle_irq_tx(irq, _eth);
> +		}
>  	}
>  =

>  	return IRQ_HANDLED;
> @@ -1778,17 +1999,23 @@ static int mtk_start_dma(struct mtk_eth *eth)
>  		return err;
>  	}
>  =

> -	mtk_w32(eth,
> -		MTK_TX_WB_DDONE | MTK_TX_DMA_EN |
> -		MTK_DMA_SIZE_16DWORDS | MTK_NDP_CO_PRO |
> -		MTK_RX_DMA_EN | MTK_RX_2B_OFFSET |
> -		MTK_RX_BT_32DWORDS,
> -		MTK_QDMA_GLO_CFG);
> +	if (!MTK_HAS_CAPS(eth->soc->caps, MTK_SOC_MT7628)) {
> +		mtk_w32(eth,
> +			MTK_TX_WB_DDONE | MTK_TX_DMA_EN |
> +			MTK_DMA_SIZE_16DWORDS | MTK_NDP_CO_PRO |
> +			MTK_RX_DMA_EN | MTK_RX_2B_OFFSET |
> +			MTK_RX_BT_32DWORDS,
> +			MTK_QDMA_GLO_CFG);
>  =

> -	mtk_w32(eth,
> -		MTK_RX_DMA_EN | rx_2b_offset |
> -		MTK_RX_BT_32DWORDS | MTK_MULTI_EN,
> -		MTK_PDMA_GLO_CFG);
> +		mtk_w32(eth,
> +			MTK_RX_DMA_EN | rx_2b_offset |
> +			MTK_RX_BT_32DWORDS | MTK_MULTI_EN,
> +			MTK_PDMA_GLO_CFG);
> +	} else {
> +		mtk_w32(eth, MTK_TX_WB_DDONE | MTK_TX_DMA_EN | MTK_RX_DMA_EN |
> +			MTK_MULTI_EN | MTK_PDMA_SIZE_8DWORDS,
> +			MTK_PDMA_GLO_CFG);
> +	}
>  =

>  	return 0;
>  }
> @@ -1816,7 +2043,6 @@ static int mtk_open(struct net_device *dev)
>  =

>  	phy_start(dev->phydev);
>  	netif_start_queue(dev);
> -
>  	return 0;
>  }
>  =

> @@ -1860,7 +2086,8 @@ static int mtk_stop(struct net_device *dev)
>  	napi_disable(&eth->tx_napi);
>  	napi_disable(&eth->rx_napi);
>  =

> -	mtk_stop_dma(eth, MTK_QDMA_GLO_CFG);
> +	if (!MTK_HAS_CAPS(eth->soc->caps, MTK_SOC_MT7628))
> +		mtk_stop_dma(eth, MTK_QDMA_GLO_CFG);
>  	mtk_stop_dma(eth, MTK_PDMA_GLO_CFG);
>  =

>  	mtk_dma_free(eth);
> @@ -1922,6 +2149,24 @@ static int mtk_hw_init(struct mtk_eth *eth)
>  	if (ret)
>  		goto err_disable_pm;
>  =

> +	if (MTK_HAS_CAPS(eth->soc->caps, MTK_SOC_MT7628)) {
> +		ret =3D device_reset(eth->dev);
> +		if (ret) {
> +			dev_err(eth->dev, "MAC reset failed!\n");
> +			goto err_disable_pm;
> +		}
> +
> +		/* enable interrupt delay for RX */
> +		mtk_w32(eth, MTK_PDMA_DELAY_RX_DELAY, MTK_PDMA_DELAY_INT);
> +
> +		/* disable delay and normal interrupt */
> +		mtk_tx_irq_disable(eth, ~0);
> +		mtk_rx_irq_disable(eth, ~0);
> +
> +		return 0;
> +	}
> +
> +	/* Non-MT7628 handling... */
>  	ethsys_reset(eth, RSTCTRL_FE);
>  	ethsys_reset(eth, RSTCTRL_PPE);
>  =

> @@ -2425,13 +2670,13 @@ static int mtk_add_mac(struct mtk_eth *eth, struc=
t device_node *np)
>  	eth->netdev[id]->netdev_ops =3D &mtk_netdev_ops;
>  	eth->netdev[id]->base_addr =3D (unsigned long)eth->base;
>  =

> -	eth->netdev[id]->hw_features =3D MTK_HW_FEATURES;
> +	eth->netdev[id]->hw_features =3D eth->soc->hw_features;
>  	if (eth->hwlro)
>  		eth->netdev[id]->hw_features |=3D NETIF_F_LRO;
>  =

> -	eth->netdev[id]->vlan_features =3D MTK_HW_FEATURES &
> +	eth->netdev[id]->vlan_features =3D eth->soc->hw_features &
>  		~(NETIF_F_HW_VLAN_CTAG_TX | NETIF_F_HW_VLAN_CTAG_RX);
> -	eth->netdev[id]->features |=3D MTK_HW_FEATURES;
> +	eth->netdev[id]->features |=3D eth->soc->hw_features;
>  	eth->netdev[id]->ethtool_ops =3D &mtk_ethtool_ops;
>  =

>  	eth->netdev[id]->irq =3D eth->irq[0];
> @@ -2463,15 +2708,26 @@ static int mtk_probe(struct platform_device *pdev)
>  	if (IS_ERR(eth->base))
>  		return PTR_ERR(eth->base);
>  =

> +	if (MTK_HAS_CAPS(eth->soc->caps, MTK_SOC_MT7628)) {
> +		eth->tx_int_mask_reg =3D MTK_PDMA_INT_MASK;
> +		eth->rx_dma_l4_valid =3D RX_DMA_L4_VALID_PDMA;
> +		eth->ip_align =3D NET_IP_ALIGN;
> +	} else {
> +		eth->tx_int_mask_reg =3D MTK_QDMA_INT_MASK;
> +		eth->rx_dma_l4_valid =3D RX_DMA_L4_VALID;
> +	}
> +
>  	spin_lock_init(&eth->page_lock);
>  	spin_lock_init(&eth->tx_irq_lock);
>  	spin_lock_init(&eth->rx_irq_lock);
>  =

> -	eth->ethsys =3D syscon_regmap_lookup_by_phandle(pdev->dev.of_node,
> -						      "mediatek,ethsys");
> -	if (IS_ERR(eth->ethsys)) {
> -		dev_err(&pdev->dev, "no ethsys regmap found\n");
> -		return PTR_ERR(eth->ethsys);
> +	if (!MTK_HAS_CAPS(eth->soc->caps, MTK_SOC_MT7628)) {
> +		eth->ethsys =3D syscon_regmap_lookup_by_phandle(pdev->dev.of_node,
> +							      "mediatek,ethsys");
> +		if (IS_ERR(eth->ethsys)) {
> +			dev_err(&pdev->dev, "no ethsys regmap found\n");
> +			return PTR_ERR(eth->ethsys);
> +		}
>  	}
>  =

>  	if (MTK_HAS_CAPS(eth->soc->caps, MTK_INFRA)) {
> @@ -2570,9 +2826,12 @@ static int mtk_probe(struct platform_device *pdev)
>  	if (err)
>  		goto err_free_dev;
>  =

> -	err =3D mtk_mdio_init(eth);
> -	if (err)
> -		goto err_free_dev;
> +	/* No MT7628/88 support yet */
> +	if (!MTK_HAS_CAPS(eth->soc->caps, MTK_SOC_MT7628)) {
> +		err =3D mtk_mdio_init(eth);
> +		if (err)
> +			goto err_free_dev;
> +	}
>  =

>  	for (i =3D 0; i < MTK_MAX_DEVS; i++) {
>  		if (!eth->netdev[i])
> @@ -2635,12 +2894,14 @@ static int mtk_remove(struct platform_device *pde=
v)
>  =

>  static const struct mtk_soc_data mt2701_data =3D {
>  	.caps =3D MT7623_CAPS | MTK_HWLRO,
> +	.hw_features =3D MTK_HW_FEATURES,
>  	.required_clks =3D MT7623_CLKS_BITMAP,
>  	.required_pctl =3D true,
>  };
>  =

>  static const struct mtk_soc_data mt7621_data =3D {
>  	.caps =3D MT7621_CAPS,
> +	.hw_features =3D MTK_HW_FEATURES,
>  	.required_clks =3D MT7621_CLKS_BITMAP,
>  	.required_pctl =3D false,
>  };
> @@ -2648,19 +2909,29 @@ static const struct mtk_soc_data mt7621_data =3D {
>  static const struct mtk_soc_data mt7622_data =3D {
>  	.ana_rgc3 =3D 0x2028,
>  	.caps =3D MT7622_CAPS | MTK_HWLRO,
> +	.hw_features =3D MTK_HW_FEATURES,
>  	.required_clks =3D MT7622_CLKS_BITMAP,
>  	.required_pctl =3D false,
>  };
>  =

>  static const struct mtk_soc_data mt7623_data =3D {
>  	.caps =3D MT7623_CAPS | MTK_HWLRO,
> +	.hw_features =3D MTK_HW_FEATURES,
>  	.required_clks =3D MT7623_CLKS_BITMAP,
>  	.required_pctl =3D true,
>  };
>  =

> +static const struct mtk_soc_data mt7628_data =3D {
> +	.caps =3D MT7628_CAPS,
> +	.hw_features =3D MTK_HW_FEATURES_MT7628,
> +	.required_clks =3D MT7628_CLKS_BITMAP,
> +	.required_pctl =3D false,
> +};
> +
>  static const struct mtk_soc_data mt7629_data =3D {
>  	.ana_rgc3 =3D 0x128,
>  	.caps =3D MT7629_CAPS | MTK_HWLRO,
> +	.hw_features =3D MTK_HW_FEATURES,
>  	.required_clks =3D MT7629_CLKS_BITMAP,
>  	.required_pctl =3D false,
>  };
> @@ -2670,6 +2941,7 @@ const struct of_device_id of_mtk_match[] =3D {
>  	{ .compatible =3D "mediatek,mt7621-eth", .data =3D &mt7621_data},
>  	{ .compatible =3D "mediatek,mt7622-eth", .data =3D &mt7622_data},
>  	{ .compatible =3D "mediatek,mt7623-eth", .data =3D &mt7623_data},
> +	{ .compatible =3D "mediatek,mt7628-eth", .data =3D &mt7628_data},
>  	{ .compatible =3D "mediatek,mt7629-eth", .data =3D &mt7629_data},
>  	{},
>  };
> diff --git a/drivers/net/ethernet/mediatek/mtk_eth_soc.h b/drivers/net/et=
hernet/mediatek/mtk_eth_soc.h
> index bab94f763e2c..c3866d6451e2 100644
> --- a/drivers/net/ethernet/mediatek/mtk_eth_soc.h
> +++ b/drivers/net/ethernet/mediatek/mtk_eth_soc.h
> @@ -39,7 +39,8 @@
>  				 NETIF_F_SG | NETIF_F_TSO | \
>  				 NETIF_F_TSO6 | \
>  				 NETIF_F_IPV6_CSUM)
> -#define NEXT_RX_DESP_IDX(X, Y)	(((X) + 1) & ((Y) - 1))
> +#define MTK_HW_FEATURES_MT7628	(NETIF_F_SG | NETIF_F_RXCSUM)
> +#define NEXT_DESP_IDX(X, Y)	(((X) + 1) & ((Y) - 1))
>  =

>  #define MTK_MAX_RX_RING_NUM	4
>  #define MTK_HW_LRO_DMA_SIZE	8
> @@ -118,6 +119,7 @@
>  /* PDMA Global Configuration Register */
>  #define MTK_PDMA_GLO_CFG	0xa04
>  #define MTK_MULTI_EN		BIT(10)
> +#define MTK_PDMA_SIZE_8DWORDS	(1 << 4)
>  =

>  /* PDMA Reset Index Register */
>  #define MTK_PDMA_RST_IDX	0xa08
> @@ -276,11 +278,18 @@
>  #define TX_DMA_OWNER_CPU	BIT(31)
>  #define TX_DMA_LS0		BIT(30)
>  #define TX_DMA_PLEN0(_x)	(((_x) & MTK_TX_DMA_BUF_LEN) << 16)
> +#define TX_DMA_PLEN1(_x)	((_x) & MTK_TX_DMA_BUF_LEN)
>  #define TX_DMA_SWC		BIT(14)
>  #define TX_DMA_SDL(_x)		(((_x) & 0x3fff) << 16)
>  =

> +/* PDMA on MT7628 */
> +#define TX_DMA_DONE		BIT(31)
> +#define TX_DMA_LS1		BIT(14)
> +#define TX_DMA_DESP2_DEF	(TX_DMA_LS0 | TX_DMA_DONE)
> +
>  /* QDMA descriptor rxd2 */
>  #define RX_DMA_DONE		BIT(31)
> +#define RX_DMA_LSO		BIT(30)
>  #define RX_DMA_PLEN0(_x)	(((_x) & 0x3fff) << 16)
>  #define RX_DMA_GET_PLEN0(_x)	(((_x) >> 16) & 0x3fff)
>  =

> @@ -289,6 +298,7 @@
>  =

>  /* QDMA descriptor rxd4 */
>  #define RX_DMA_L4_VALID		BIT(24)
> +#define RX_DMA_L4_VALID_PDMA	BIT(30)		/* when PDMA is used */
>  #define RX_DMA_FPORT_SHIFT	19
>  #define RX_DMA_FPORT_MASK	0x7
>  =

> @@ -412,6 +422,19 @@
>  #define CO_QPHY_SEL            BIT(0)
>  #define GEPHY_MAC_SEL          BIT(1)
>  =

> +/* MT7628/88 specific stuff */
> +#define MT7628_PDMA_OFFSET	0x0800
> +#define MT7628_SDM_OFFSET	0x0c00
> +
> +#define MT7628_TX_BASE_PTR0	(MT7628_PDMA_OFFSET + 0x00)
> +#define MT7628_TX_MAX_CNT0	(MT7628_PDMA_OFFSET + 0x04)
> +#define MT7628_TX_CTX_IDX0	(MT7628_PDMA_OFFSET + 0x08)
> +#define MT7628_TX_DTX_IDX0	(MT7628_PDMA_OFFSET + 0x0c)
> +#define MT7628_PST_DTX_IDX0	BIT(0)
> +
> +#define MT7628_SDM_MAC_ADRL	(MT7628_SDM_OFFSET + 0x0c)
> +#define MT7628_SDM_MAC_ADRH	(MT7628_SDM_OFFSET + 0x10)
> +
>  struct mtk_rx_dma {
>  	unsigned int rxd1;
>  	unsigned int rxd2;
> @@ -509,6 +532,7 @@ enum mtk_clks_map {
>  				 BIT(MTK_CLK_SGMII_CK) | \
>  				 BIT(MTK_CLK_ETH2PLL))
>  #define MT7621_CLKS_BITMAP	(0)
> +#define MT7628_CLKS_BITMAP	(0)
>  #define MT7629_CLKS_BITMAP	(BIT(MTK_CLK_ETHIF) | BIT(MTK_CLK_ESW) |  \
>  				 BIT(MTK_CLK_GP0) | BIT(MTK_CLK_GP1) | \
>  				 BIT(MTK_CLK_GP2) | BIT(MTK_CLK_FE) | \
> @@ -563,6 +587,10 @@ struct mtk_tx_ring {
>  	struct mtk_tx_dma *last_free;
>  	u16 thresh;
>  	atomic_t free_count;
> +	int dma_size;
> +	struct mtk_tx_dma *dma_pdma;	/* For MT7628/88 PDMA handling */
> +	dma_addr_t phys_pdma;
> +	int cpu_idx;
>  };
>  =

>  /* PDMA rx ring mode */
> @@ -604,6 +632,7 @@ enum mkt_eth_capabilities {
>  	MTK_HWLRO_BIT,
>  	MTK_SHARED_INT_BIT,
>  	MTK_TRGMII_MT7621_CLK_BIT,
> +	MTK_SOC_MT7628,
>  =

>  	/* MUX BITS*/
>  	MTK_ETH_MUX_GDM1_TO_GMAC1_ESW_BIT,
> @@ -696,6 +725,8 @@ enum mkt_eth_capabilities {
>  =

>  #define MT7623_CAPS  (MTK_GMAC1_RGMII | MTK_GMAC1_TRGMII | MTK_GMAC2_RGM=
II)
>  =

> +#define MT7628_CAPS  (MTK_SHARED_INT | MTK_SOC_MT7628)
> +
>  #define MT7629_CAPS  (MTK_GMAC1_SGMII | MTK_GMAC2_SGMII | MTK_GMAC2_GEPH=
Y | \
>  		      MTK_GDM1_ESW | MTK_MUX_GDM1_TO_GMAC1_ESW | \
>  		      MTK_MUX_GMAC2_GMAC0_TO_GEPHY | \
> @@ -707,6 +738,7 @@ enum mkt_eth_capabilities {
>   * @ana_rgc3:                   The offset for register ANA_RGC3 related=
 to
>   *				sgmiisys syscon
>   * @caps			Flags shown the extra capability for the SoC
> + * @hw_features			Flags shown HW features
>   * @required_clks		Flags shown the bitmap for required clocks on
>   *				the target SoC
>   * @required_pctl		A bool value to show whether the SoC requires
> @@ -717,6 +749,7 @@ struct mtk_soc_data {
>  	u32		caps;
>  	u32		required_clks;
>  	bool		required_pctl;
> +	netdev_features_t hw_features;
>  };
>  =

>  /* currently no SoC has more than 2 macs */
> @@ -810,6 +843,10 @@ struct mtk_eth {
>  	unsigned long			state;
>  =

>  	const struct mtk_soc_data	*soc;
> +
> +	u32				tx_int_mask_reg;
> +	u32				rx_dma_l4_valid;
> +	int				ip_align;
>  };
>  =

>  /* struct mtk_mac -	the structure that holds the info about the MACs of =
the
> -- =

> 2.22.0
> =

> =

> _______________________________________________
> Linux-mediatek mailing list
> Linux-mediatek@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-mediatek

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
