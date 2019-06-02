Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E5BF3239A
	for <lists+linux-mediatek@lfdr.de>; Sun,  2 Jun 2019 16:37:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4bH0O0i9dxh4pjDCuNIowv97pBo76pMe324QULSjkYI=; b=qbP0k+vQPRrvw4
	pvHNBlPalAnqAKNCWqiROpDROqoNJxXHcNYKhQxcvL4n9KzUw1TF/p9WDeVRlp4tJdiQBUTec9jyp
	Ox74XKY+DPlEWtr1Ad3BP3KQ3az+peGTrQwp4vVFOtOggJfWjW8CKAgb1dm9e+pGlxmuQhgVuz8qJ
	x7cwxtOKJtMN4CyI67zlo5NBEaD35PV+JFA6MhvbE6Te3/FQyHP3LNE3mXZdcRt4Xo2V7DiEFN1Hp
	9CnV7dYApWqSEI3AeG0SjIJnq0q8m5FGhUjF2HSbCA3um/HGWSMarntlOrF9sfuI9Mzy+gmGTpU1i
	vd97Kvzs13H+zvyTI5VA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXRbU-0000FJ-OU; Sun, 02 Jun 2019 14:36:56 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXRbR-0000EL-96
 for linux-mediatek@lists.infradead.org; Sun, 02 Jun 2019 14:36:54 +0000
X-UUID: 6d91d45d1e14447a8e7e02e13ff9e55b-20190602
X-UUID: 6d91d45d1e14447a8e7e02e13ff9e55b-20190602
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <ryder.lee@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 254148315; Sun, 02 Jun 2019 06:36:44 -0800
Received: from MTKMBS07N2.mediatek.inc (172.21.101.141) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Sun, 2 Jun 2019 07:36:42 -0700
Received: from mtkcas09.mediatek.inc (172.21.101.178) by
 mtkmbs07n2.mediatek.inc (172.21.101.141) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Sun, 2 Jun 2019 22:36:41 +0800
Received: from [172.21.77.33] (172.21.77.33) by mtkcas09.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Sun, 2 Jun 2019 22:36:41 +0800
Message-ID: <1559486201.2086.4.camel@mtkswgap22>
Subject: Re: [PATCH v2 1/2] mt76: mt7615: enable support for mesh
From: Ryder Lee <ryder.lee@mediatek.com>
To: Felix Fietkau <nbd@nbd.name>
Date: Sun, 2 Jun 2019 22:36:41 +0800
In-Reply-To: <e459fbc79154da9e0e6e098d2c49a9b17e842f47.1559301203.git.ryder.lee@mediatek.com>
References: <e459fbc79154da9e0e6e098d2c49a9b17e842f47.1559301203.git.ryder.lee@mediatek.com>
X-Mailer: Evolution 3.2.3-0ubuntu6 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190602_073653_329981_444EDB3D 
X-CRM114-Status: GOOD (  13.90  )
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
Cc: Sean Wang <sean.wang@mediatek.com>, linux-wireless@vger.kernel.org,
 YF Luo <yf.luo@mediatek.com>, Chih-Min
 Chen <chih-min.Chen@mediatek.com>, linux-kernel@vger.kernel.org,
 Yiwei Chung <yiwei.chung@mediatek.com>, linux-mediatek@lists.infradead.org,
 Roy Luo <royluo@google.com>, Lorenzo Bianconi <lorenzo.bianconi@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Fri, 2019-05-31 at 22:09 +0800, Ryder Lee wrote:
> Enable NL80211_IFTYPE_MESH_POINT and update its path.
> 
> Signed-off-by: Ryder Lee <ryder.lee@mediatek.com>
> ---
> Changes since v2 - remove unused definitions
> ---
>  drivers/net/wireless/mediatek/mt76/mt7615/init.c | 6 ++++++
>  drivers/net/wireless/mediatek/mt76/mt7615/main.c | 1 +
>  drivers/net/wireless/mediatek/mt76/mt7615/mcu.c  | 5 ++++-
>  drivers/net/wireless/mediatek/mt76/mt7615/mcu.h  | 6 ------
>  4 files changed, 11 insertions(+), 7 deletions(-)
> 
> diff --git a/drivers/net/wireless/mediatek/mt76/mt7615/init.c b/drivers/net/wireless/mediatek/mt76/mt7615/init.c
> index 59f604f3161f..f860af6a42da 100644
> --- a/drivers/net/wireless/mediatek/mt76/mt7615/init.c
> +++ b/drivers/net/wireless/mediatek/mt76/mt7615/init.c
> @@ -133,6 +133,9 @@ static const struct ieee80211_iface_limit if_limits[] = {
>  	{
>  		.max = MT7615_MAX_INTERFACES,
>  		.types = BIT(NL80211_IFTYPE_AP) |
> +#ifdef CONFIG_MAC80211_MESH
> +			 BIT(NL80211_IFTYPE_MESH_POINT) |
> +#endif
>  			 BIT(NL80211_IFTYPE_STATION)
>  	}
>  };
> @@ -195,6 +198,9 @@ int mt7615_register_device(struct mt7615_dev *dev)
>  	dev->mt76.antenna_mask = 0xf;
>  
>  	wiphy->interface_modes = BIT(NL80211_IFTYPE_STATION) |
> +#ifdef CONFIG_MAC80211_MESH
> +				 BIT(NL80211_IFTYPE_MESH_POINT) |
> +#endif
>  				 BIT(NL80211_IFTYPE_AP);
>  
>  	ret = mt76_register_device(&dev->mt76, true, mt7615_rates,
> diff --git a/drivers/net/wireless/mediatek/mt76/mt7615/main.c b/drivers/net/wireless/mediatek/mt76/mt7615/main.c
> index b0bb7cc12385..585e67fa2728 100644
> --- a/drivers/net/wireless/mediatek/mt76/mt7615/main.c
> +++ b/drivers/net/wireless/mediatek/mt76/mt7615/main.c
> @@ -37,6 +37,7 @@ static int get_omac_idx(enum nl80211_iftype type, u32 mask)
>  
>  	switch (type) {
>  	case NL80211_IFTYPE_AP:
> +	case NL80211_IFTYPE_MESH_POINT:
>  		/* ap use hw bssid 0 and ext bssid */
>  		if (~mask & BIT(HW_BSSID_0))
>  			return HW_BSSID_0;
> diff --git a/drivers/net/wireless/mediatek/mt76/mt7615/mcu.c b/drivers/net/wireless/mediatek/mt76/mt7615/mcu.c
> index 43f70195244c..8b8db526cb16 100644
> --- a/drivers/net/wireless/mediatek/mt76/mt7615/mcu.c
> +++ b/drivers/net/wireless/mediatek/mt76/mt7615/mcu.c
> @@ -754,6 +754,7 @@ int mt7615_mcu_set_bss_info(struct mt7615_dev *dev,
>  
>  	switch (vif->type) {
>  	case NL80211_IFTYPE_AP:
> +	case NL80211_IFTYPE_MESH_POINT:
>  		tx_wlan_idx = mvif->sta.wcid.idx;
>  		conn_type = CONNECTION_INFRA_AP;
>  		break;
> @@ -968,7 +969,8 @@ int mt7615_mcu_add_wtbl(struct mt7615_dev *dev, struct ieee80211_vif *vif,
>  		.rx_wtbl = {
>  			.tag = cpu_to_le16(WTBL_RX),
>  			.len = cpu_to_le16(sizeof(struct wtbl_rx)),
> -			.rca1 = vif->type != NL80211_IFTYPE_AP,
> +			.rca1 = vif->type != (NL80211_IFTYPE_AP ||
> +					      NL80211_IFTYPE_MESH_POINT),

Oops, this expression is wrong. I will fix it in v3.
Sorry for the inconvenience.

Ryder


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
