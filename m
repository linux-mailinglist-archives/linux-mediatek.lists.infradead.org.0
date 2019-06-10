Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CA7D3ACCF
	for <lists+linux-mediatek@lfdr.de>; Mon, 10 Jun 2019 04:10:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ztloxJ6w3840GDwxCrAl1fbUUc4TN1xVoO9+kuLtokM=; b=kxfBvk9KldDRVD
	aQ1ZPc0SplRO1MhyblgBNHKi2YKpRE621qlf4qIkg2V8VOFuLHW2vRUtLZ96IN0CIfk3elkXNSNt/
	LLt+nnogcaGjbcK++cT6sQnILzTeR/rural1yKKTZE20Kh4Cvl6eVAHulmUKXf7Cp5yFdodYh8F2r
	s85kY5UpxRSFwgPO5End2VlTpA37KPJaXSCq/bENu/69tWoask7Vp4oL2ct7NdBiO35VvdSumyUe8
	y6knP3Td+c5RBJ0VOJnWpODQquTzuAuRk3E4FAfKLXkVv0FpacWWogMoLct+9V/jLklm6MfSmzoR/
	PVEd0mQK4TIP0mSQJsdg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1ha9l3-00044Z-Ba; Mon, 10 Jun 2019 02:10:01 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1ha9kz-000445-Js
 for linux-mediatek@lists.infradead.org; Mon, 10 Jun 2019 02:09:59 +0000
X-UUID: 89d30a1d294f49b199814ea0e34472a5-20190609
X-UUID: 89d30a1d294f49b199814ea0e34472a5-20190609
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <ryder.lee@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1189306827; Sun, 09 Jun 2019 18:09:54 -0800
Received: from MTKMBS06N2.mediatek.inc (172.21.101.130) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Sun, 9 Jun 2019 19:09:52 -0700
Received: from mtkcas09.mediatek.inc (172.21.101.178) by
 mtkmbs06n2.mediatek.inc (172.21.101.130) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 10 Jun 2019 10:09:50 +0800
Received: from [172.21.77.33] (172.21.77.33) by mtkcas09.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Mon, 10 Jun 2019 10:09:50 +0800
Message-ID: <1560132590.28258.5.camel@mtkswgap22>
Subject: Re: [PATCH] mt76: mt7615: add support for per-chain signal strength
 reporting
From: Ryder Lee <ryder.lee@mediatek.com>
To: Sebastian Gottschall <s.gottschall@newmedia-net.de>
Date: Mon, 10 Jun 2019 10:09:50 +0800
In-Reply-To: <d6cfd2e9-4b2b-36ac-6cae-a34f74204801@newmedia-net.de>
References: <3912a2863e858f3623ced61737836e42c7b19149.1560071167.git.ryder.lee@mediatek.com>
 <d6cfd2e9-4b2b-36ac-6cae-a34f74204801@newmedia-net.de>
X-Mailer: Evolution 3.2.3-0ubuntu6 
MIME-Version: 1.0
X-TM-SNTS-SMTP: 8D06DDBC87EE4513CDD414093242ECAB5DE3824B96BF2BAF50026F9C7918A2862000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190609_190957_664035_8BF7124F 
X-CRM114-Status: GOOD (  16.11  )
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
Cc: Sean Wang <sean.wang@mediatek.com>, Chih-Min
 Chen <chih-min.Chen@mediatek.com>, YF Luo <yf.luo@mediatek.com>,
 linux-wireless@vger.kernel.org, linux-kernel@vger.kernel.org,
 Yiwei Chung <yiwei.chung@mediatek.com>, linux-mediatek@lists.infradead.org,
 Roy Luo <royluo@google.com>, Lorenzo Bianconi <lorenzo.bianconi@redhat.com>,
 Felix Fietkau <nbd@nbd.name>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Sun, 2019-06-09 at 16:44 +0200, Sebastian Gottschall wrote:
> according to my findings
> 
> MT_RXV4_RCPI1 is part of rx descriptor 4 and not 3
> so it must be rxdg4 = rxd[4] etc.

RXV start from 1 in the code.

That is: RXV1 <-> rxdg0, RXV2 <-> rxdg1 ...so RXV4 <-> rxdg3

> however rxdg3 contains MT_RXV3_IB_RSSIRX which can be used for signal calculation.
> i already wrote a similar code for this driver which i sended to felix a long time ago.
> my variant looks like
>                  status->signal = (FIELD_GET(MT_RXV3_IB_RSSIRX, rxdg3) - 220) / 2;
>                  status->chain_signal[0] = (FIELD_GET(MT_RXV4_RCPI0, rxdg4) - 220) / 2;
>                  status->chain_signal[1] = (FIELD_GET(MT_RXV4_RCPI1, rxdg4) - 220) / 2;
>                  status->chain_signal[2] = (FIELD_GET(MT_RXV4_RCPI2, rxdg4) - 220) / 2;
>                  status->chain_signal[3] = (FIELD_GET(MT_RXV4_RCPI3, rxdg4) - 220) / 2;

> Am 09.06.2019 um 11:09 schrieb Ryder Lee:
> > Fill in RX status->chain_signal to avoid empty value.
> >
> > Signed-off-by: Ryder Lee <ryder.lee@mediatek.com>
> > ---
> >   .../net/wireless/mediatek/mt76/mt7615/mac.c   | 30 ++++++++++++++++++-
> >   .../net/wireless/mediatek/mt76/mt7615/mac.h   |  5 ++++
> >   2 files changed, 34 insertions(+), 1 deletion(-)
> >
> > diff --git a/drivers/net/wireless/mediatek/mt76/mt7615/mac.c b/drivers/net/wireless/mediatek/mt76/mt7615/mac.c
> > index b60d42b5923d..9ee83ea11b8c
> > --- a/drivers/net/wireless/mediatek/mt76/mt7615/mac.c
> > +++ b/drivers/net/wireless/mediatek/mt76/mt7615/mac.c
> > @@ -13,6 +13,11 @@
> >   #include "../dma.h"
> >   #include "mac.h"
> >   
> > +static inline s8 to_rssi(u32 field, u32 rxv)
> > +{
> > +	return (FIELD_GET(field, rxv) - 220) / 2;
> > +}
> > +
> >   static struct mt76_wcid *mt7615_rx_get_wcid(struct mt7615_dev *dev,
> >   					    u8 idx, bool unicast)
> >   {
> > @@ -120,6 +125,7 @@ int mt7615_mac_fill_rx(struct mt7615_dev *dev, struct sk_buff *skb)
> >   	if (rxd0 & MT_RXD0_NORMAL_GROUP_3) {
> >   		u32 rxdg0 = le32_to_cpu(rxd[0]);
> >   		u32 rxdg1 = le32_to_cpu(rxd[1]);
> > +		u32 rxdg3 = le32_to_cpu(rxd[3]);
> >   		u8 stbc = FIELD_GET(MT_RXV1_HT_STBC, rxdg0);
> >   		bool cck = false;
> >   
> > @@ -169,7 +175,29 @@ int mt7615_mac_fill_rx(struct mt7615_dev *dev, struct sk_buff *skb)
> >   
> >   		status->enc_flags |= RX_ENC_FLAG_STBC_MASK * stbc;
> >   
> > -		/* TODO: RSSI */
> > +		status->chains = dev->mt76.antenna_mask;
> > +		status->chain_signal[0] = to_rssi(MT_RXV4_RCPI0, rxdg3);
> > +		status->signal = status->chain_signal[0];
> > +
> > +		switch (status->chains) {
> > +		case 0x3:
> > +			status->chain_signal[1] = to_rssi(MT_RXV4_RCPI1, rxdg3);
> > +			status->signal = max(status->signal,
> > +					     status->chain_signal[1]);
> > +			break;
> > +		case 0x7:
> > +			status->chain_signal[2] = to_rssi(MT_RXV4_RCPI2, rxdg3);
> > +			status->signal = max(status->signal,
> > +					     status->chain_signal[2]);
> > +			break;
> > +		case 0xf:
> > +			status->chain_signal[3] = to_rssi(MT_RXV4_RCPI3, rxdg3);
> > +			status->signal = max(status->signal,
> > +					     status->chain_signal[3]);
> > +			break;
> > +		default:
> > +			break;
> > +		}
> >   		rxd += 6;
> >   		if ((u8 *)rxd - skb->data >= skb->len)
> >   			return -EINVAL;
> > diff --git a/drivers/net/wireless/mediatek/mt76/mt7615/mac.h b/drivers/net/wireless/mediatek/mt76/mt7615/mac.h
> > index 18ad4b8a3807..b00ce8db58e9
> > --- a/drivers/net/wireless/mediatek/mt76/mt7615/mac.h
> > +++ b/drivers/net/wireless/mediatek/mt76/mt7615/mac.h
> > @@ -98,6 +98,11 @@ enum rx_pkt_type {
> >   #define MT_RXV2_GROUP_ID		GENMASK(26, 21)
> >   #define MT_RXV2_LENGTH			GENMASK(20, 0)
> >   
> > +#define MT_RXV4_RCPI3			GENMASK(31, 24)
> > +#define MT_RXV4_RCPI2			GENMASK(23, 16)
> > +#define MT_RXV4_RCPI1			GENMASK(15, 8)
> > +#define MT_RXV4_RCPI0			GENMASK(7, 0)
> > +
> >   enum tx_header_format {
> >   	MT_HDR_FORMAT_802_3,
> >   	MT_HDR_FORMAT_CMD,
> 
> _______________________________________________
> Linux-mediatek mailing list
> Linux-mediatek@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-mediatek



_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
