Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 840DF3A674
	for <lists+linux-mediatek@lfdr.de>; Sun,  9 Jun 2019 16:44:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=kRy6bALyepQovhpinESN1XVSnhzKgfzZlsL0vf8z2cE=; b=Fzjs8rNJl/nQIsLCkCFwPWQfY
	8UmXSUQ3mjGliOn796/rZwfFLhwv6uO2gxriNwGSpsrad55aOunITTs06BVMIISfBRAOkBa7c4m7W
	Wr6Kq4hwgMLkIGZZj2naYTo6bvGYGbpQh5HaQFnGO1Lv+g3zri2gmU2kz5ml+Y/A9exD/kN/dzAUI
	Oo/9FE7G2OePjz516ZdThFyDMTHRrvFQ3YIJgi7XOclT76PgeSSmsxOQthnPgf25yYp42iFwHKP1s
	kMUYh6lBcnqhG74j3eC78DpZ7ZtGPptYlVzqgI/spZ6BwRZbUO8QOovxYQTGpK56zMEW6UUEZEjWW
	8kinYddxw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hZz3x-0003UO-Hd; Sun, 09 Jun 2019 14:44:49 +0000
Received: from smtps.newmedia-net.de ([2a05:a1c0:0:de::167]
 helo=webmail.newmedia-net.de)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hZz3t-0003L7-LK
 for linux-mediatek@lists.infradead.org; Sun, 09 Jun 2019 14:44:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=newmedia-net.de; s=mikd; 
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:Message-ID:From:References:Cc:To:Subject;
 bh=yM5fipLJxa/mXIFECT+TVx859Rd8WsNIXWXUZfpdc50=; 
 b=ym07mQSzwe4qYsiK1HfUlQn/7+J/wdkHo+BrYWzngx3y14nQ87lTYu6X0bbCkLHMZI3Pfg15VY8UX7isXd34+lS5+2vsm4K8FG+6fJc4Jq6ed84HNCX6bO3FOXdfKZTokoJMbIzHXEG3gDvKGbGz8pBwsU1VkKCONDKS+9mADyw=;
Subject: Re: [PATCH] mt76: mt7615: add support for per-chain signal strength
 reporting
To: Ryder Lee <ryder.lee@mediatek.com>, Felix Fietkau <nbd@nbd.name>,
 Lorenzo Bianconi <lorenzo.bianconi@redhat.com>
References: <3912a2863e858f3623ced61737836e42c7b19149.1560071167.git.ryder.lee@mediatek.com>
From: Sebastian Gottschall <s.gottschall@newmedia-net.de>
Message-ID: <d6cfd2e9-4b2b-36ac-6cae-a34f74204801@newmedia-net.de>
Date: Sun, 9 Jun 2019 16:44:09 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <3912a2863e858f3623ced61737836e42c7b19149.1560071167.git.ryder.lee@mediatek.com>
X-Received: from [2003:c9:3f05:3a00:f095:7be4:6d09:fd49]
 by webmail.newmedia-net.de with esmtpsa (TLSv1:AES128-SHA:128)
 (Exim 4.72) (envelope-from <s.gottschall@newmedia-net.de>)
 id 1hZz3z-0006SK-2d; Sun, 09 Jun 2019 16:44:51 +0200
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190609_074445_995374_1EEF06C7 
X-CRM114-Status: GOOD (  12.52  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Sean Wang <sean.wang@mediatek.com>,
 Chih-Min Chen <chih-min.Chen@mediatek.com>, YF Luo <yf.luo@mediatek.com>,
 linux-wireless@vger.kernel.org, linux-kernel@vger.kernel.org,
 Yiwei Chung <yiwei.chung@mediatek.com>, linux-mediatek@lists.infradead.org,
 Roy Luo <royluo@google.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

according to my findings

MT_RXV4_RCPI1 is part of rx descriptor 4 and not 3
so it must be rxdg4 = rxd[4] etc.
however rxdg3 contains MT_RXV3_IB_RSSIRX which can be used for signal calculation.
i already wrote a similar code for this driver which i sended to felix a long time ago.

my variant looks like
                 status->signal = (FIELD_GET(MT_RXV3_IB_RSSIRX, rxdg3) - 220) / 2;
                 status->chain_signal[0] = (FIELD_GET(MT_RXV4_RCPI0, rxdg4) - 220) / 2;
                 status->chain_signal[1] = (FIELD_GET(MT_RXV4_RCPI1, rxdg4) - 220) / 2;
                 status->chain_signal[2] = (FIELD_GET(MT_RXV4_RCPI2, rxdg4) - 220) / 2;
                 status->chain_signal[3] = (FIELD_GET(MT_RXV4_RCPI3, rxdg4) - 220) / 2;


Am 09.06.2019 um 11:09 schrieb Ryder Lee:
> Fill in RX status->chain_signal to avoid empty value.
>
> Signed-off-by: Ryder Lee <ryder.lee@mediatek.com>
> ---
>   .../net/wireless/mediatek/mt76/mt7615/mac.c   | 30 ++++++++++++++++++-
>   .../net/wireless/mediatek/mt76/mt7615/mac.h   |  5 ++++
>   2 files changed, 34 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/net/wireless/mediatek/mt76/mt7615/mac.c b/drivers/net/wireless/mediatek/mt76/mt7615/mac.c
> index b60d42b5923d..9ee83ea11b8c
> --- a/drivers/net/wireless/mediatek/mt76/mt7615/mac.c
> +++ b/drivers/net/wireless/mediatek/mt76/mt7615/mac.c
> @@ -13,6 +13,11 @@
>   #include "../dma.h"
>   #include "mac.h"
>   
> +static inline s8 to_rssi(u32 field, u32 rxv)
> +{
> +	return (FIELD_GET(field, rxv) - 220) / 2;
> +}
> +
>   static struct mt76_wcid *mt7615_rx_get_wcid(struct mt7615_dev *dev,
>   					    u8 idx, bool unicast)
>   {
> @@ -120,6 +125,7 @@ int mt7615_mac_fill_rx(struct mt7615_dev *dev, struct sk_buff *skb)
>   	if (rxd0 & MT_RXD0_NORMAL_GROUP_3) {
>   		u32 rxdg0 = le32_to_cpu(rxd[0]);
>   		u32 rxdg1 = le32_to_cpu(rxd[1]);
> +		u32 rxdg3 = le32_to_cpu(rxd[3]);
>   		u8 stbc = FIELD_GET(MT_RXV1_HT_STBC, rxdg0);
>   		bool cck = false;
>   
> @@ -169,7 +175,29 @@ int mt7615_mac_fill_rx(struct mt7615_dev *dev, struct sk_buff *skb)
>   
>   		status->enc_flags |= RX_ENC_FLAG_STBC_MASK * stbc;
>   
> -		/* TODO: RSSI */
> +		status->chains = dev->mt76.antenna_mask;
> +		status->chain_signal[0] = to_rssi(MT_RXV4_RCPI0, rxdg3);
> +		status->signal = status->chain_signal[0];
> +
> +		switch (status->chains) {
> +		case 0x3:
> +			status->chain_signal[1] = to_rssi(MT_RXV4_RCPI1, rxdg3);
> +			status->signal = max(status->signal,
> +					     status->chain_signal[1]);
> +			break;
> +		case 0x7:
> +			status->chain_signal[2] = to_rssi(MT_RXV4_RCPI2, rxdg3);
> +			status->signal = max(status->signal,
> +					     status->chain_signal[2]);
> +			break;
> +		case 0xf:
> +			status->chain_signal[3] = to_rssi(MT_RXV4_RCPI3, rxdg3);
> +			status->signal = max(status->signal,
> +					     status->chain_signal[3]);
> +			break;
> +		default:
> +			break;
> +		}
>   		rxd += 6;
>   		if ((u8 *)rxd - skb->data >= skb->len)
>   			return -EINVAL;
> diff --git a/drivers/net/wireless/mediatek/mt76/mt7615/mac.h b/drivers/net/wireless/mediatek/mt76/mt7615/mac.h
> index 18ad4b8a3807..b00ce8db58e9
> --- a/drivers/net/wireless/mediatek/mt76/mt7615/mac.h
> +++ b/drivers/net/wireless/mediatek/mt76/mt7615/mac.h
> @@ -98,6 +98,11 @@ enum rx_pkt_type {
>   #define MT_RXV2_GROUP_ID		GENMASK(26, 21)
>   #define MT_RXV2_LENGTH			GENMASK(20, 0)
>   
> +#define MT_RXV4_RCPI3			GENMASK(31, 24)
> +#define MT_RXV4_RCPI2			GENMASK(23, 16)
> +#define MT_RXV4_RCPI1			GENMASK(15, 8)
> +#define MT_RXV4_RCPI0			GENMASK(7, 0)
> +
>   enum tx_header_format {
>   	MT_HDR_FORMAT_802_3,
>   	MT_HDR_FORMAT_CMD,

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
