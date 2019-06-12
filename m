Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A02141F60
	for <lists+linux-mediatek@lfdr.de>; Wed, 12 Jun 2019 10:38:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yvWzibykwFm0jvnUHemw1NlahNDjCDD0699ngHE9/8k=; b=bC/Hqw3l+4zRa1
	QFnziAmvAvVHajFYxZfL3rJkqhlhxjs8NaxIEGU2mliGB4ZXcWzh3Ujf7jZhtfXZpZveeiWd0qzYh
	R2dkwRAF96B6UR6zf+2G+QLPFeAoYExJF/FRtFQrQnlfZksp5lK1PNjTfP7ggAbNP8MbzUmTkrXbw
	DeWRrMBPHVyE1923GXMGdlTM/Hgr8JqQjjytBA9gExOh2N2CFRARHkr01MXo66PRyp1iZHYs6ke0O
	sE5r8ggeSjcRwVB3mxb/OmfbWz9zvonMLawSZwz0pvKU0eUfCoB/qiD/BDoa4+pkN/PtDAlgMmyVk
	EwrmUt3k8bU5Ig12D7OQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haylq-0007dl-H5; Wed, 12 Jun 2019 08:38:14 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hayll-0007c6-MT
 for linux-mediatek@lists.infradead.org; Wed, 12 Jun 2019 08:38:11 +0000
X-UUID: 3d20323f93ec480eab67a9febee6f8b7-20190612
X-UUID: 3d20323f93ec480eab67a9febee6f8b7-20190612
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw02.mediatek.com
 (envelope-from <ryder.lee@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 264001651; Wed, 12 Jun 2019 00:38:02 -0800
Received: from mtkmbs08n2.mediatek.inc (172.21.101.56) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 12 Jun 2019 01:38:01 -0700
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 mtkmbs08n2.mediatek.inc (172.21.101.56) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 12 Jun 2019 16:37:58 +0800
Received: from [172.21.77.33] (172.21.77.33) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Wed, 12 Jun 2019 16:37:58 +0800
Message-ID: <1560328678.4743.6.camel@mtkswgap22>
Subject: Re: [PATCH 2/2] mt76: mt7615: update peer's bssid when state
 transition changes
From: Ryder Lee <ryder.lee@mediatek.com>
To: Lorenzo Bianconi <lorenzo@kernel.org>
Date: Wed, 12 Jun 2019 16:37:58 +0800
In-Reply-To: <20190612082618.GA8107@localhost.localdomain>
References: <3065a01998dfa04a5d2d680e820a17cb5c110d0f.1560221172.git.ryder.lee@mediatek.com>
 <449fee28c558b6f02b62275f9beefaab02b47efc.1560221172.git.ryder.lee@mediatek.com>
 <20190612082618.GA8107@localhost.localdomain>
X-Mailer: Evolution 3.2.3-0ubuntu6 
MIME-Version: 1.0
X-TM-SNTS-SMTP: 72901263F5700DB435DA5D08E473CCAD7D900AD367C6200865E79A301332B9AA2000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190612_013809_738435_075FBFA3 
X-CRM114-Status: GOOD (  14.19  )
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
Cc: Sean Wang <sean.wang@mediatek.com>, YF Luo <yf.luo@mediatek.com>,
 linux-wireless@vger.kernel.org, linux-kernel@vger.kernel.org,
 Yiwei Chung <yiwei.chung@mediatek.com>, linux-mediatek@lists.infradead.org,
 Roy Luo <royluo@google.com>, Lorenzo Bianconi <lorenzo.bianconi@redhat.com>,
 Felix Fietkau <nbd@nbd.name>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Wed, 2019-06-12 at 10:26 +0200, Lorenzo Bianconi wrote:
> > Driver should update peer's bssid and bss information when
> > state transition changes.
> > 
> > Signed-off-by: Ryder Lee <ryder.lee@mediatek.com>
> > ---
> >  .../net/wireless/mediatek/mt76/mt7615/main.c  |  5 +-
> >  .../net/wireless/mediatek/mt76/mt7615/mcu.c   | 49 ++++++++++---------
> >  2 files changed, 27 insertions(+), 27 deletions(-)
> > 
> 
> [...]
> 
> > diff --git a/drivers/net/wireless/mediatek/mt76/mt7615/mcu.c b/drivers/net/wireless/mediatek/mt76/mt7615/mcu.c
> > index e82086eb8aa4..8fc12cd37906 100644
> > --- a/drivers/net/wireless/mediatek/mt76/mt7615/mcu.c
> > +++ b/drivers/net/wireless/mediatek/mt76/mt7615/mcu.c
> > @@ -741,17 +741,6 @@ int mt7615_mcu_set_bss_info(struct mt7615_dev *dev,
> >  	u8 *buf, *data, tx_wlan_idx = 0;
> >  	struct req_hdr *hdr;
> >  
> > -	if (en) {
> > -		len += sizeof(struct bss_info_omac);
> > -		features |= BIT(BSS_INFO_OMAC);
> > -		if (mvif->omac_idx > EXT_BSSID_START) {
> > -			len += sizeof(struct bss_info_ext_bss);
> > -			features |= BIT(BSS_INFO_EXT_BSS);
> > -			ntlv++;
> > -		}
> > -		ntlv++;
> > -	}
> > -
> >  	switch (vif->type) {
> >  	case NL80211_IFTYPE_AP:
> >  	case NL80211_IFTYPE_MESH_POINT:
> > @@ -759,22 +748,23 @@ int mt7615_mcu_set_bss_info(struct mt7615_dev *dev,
> >  		conn_type = CONNECTION_INFRA_AP;
> >  		break;
> >  	case NL80211_IFTYPE_STATION: {
> > -		struct ieee80211_sta *sta;
> > -		struct mt7615_sta *msta;
> > -
> > -		rcu_read_lock();
> > -
> > -		sta = ieee80211_find_sta(vif, vif->bss_conf.bssid);
> > -		if (!sta) {
> > +		/* TODO: enable BSS_INFO_UAPSD & BSS_INFO_PM */
> > +		if (en) {
> > +			struct ieee80211_sta *sta;
> > +			struct mt7615_sta *msta;
> > +
> > +			rcu_read_lock();
> > +			sta = ieee80211_find_sta(vif, vif->bss_conf.bssid);
> > +			if (!sta) {
> > +				rcu_read_unlock();
> > +				return -EINVAL;
> > +			}
> > +
> > +			msta = (struct mt7615_sta *)sta->drv_priv;
> > +			tx_wlan_idx = msta->wcid.idx;
> >  			rcu_read_unlock();
> > -			return -EINVAL;
> >  		}
> > -
> > -		msta = (struct mt7615_sta *)sta->drv_priv;
> > -		tx_wlan_idx = msta->wcid.idx;
> >  		conn_type = CONNECTION_INFRA_STA;
> > -
> > -		rcu_read_unlock();
> >  		break;
> >  	}
> >  	default:
> > @@ -782,6 +772,17 @@ int mt7615_mcu_set_bss_info(struct mt7615_dev *dev,
> >  		break;
> >  	}
> >  
> > +	if (en) {
> > +		len += sizeof(struct bss_info_omac);
> > +		features |= BIT(BSS_INFO_OMAC);
> > +		if (mvif->omac_idx > EXT_BSSID_START) {
> > +			len += sizeof(struct bss_info_ext_bss);
> > +			features |= BIT(BSS_INFO_EXT_BSS);
> > +			ntlv++;
> > +		}
> > +		ntlv++;
> > +	}
> 
> What did you move this chunk down?

Ah, my bad. I originally planned to add other conditions and it may
change 'en' so moved these stuff behind them.

Anyway I forgot to remove this part. Will fix it

Ryder.

> Regards,
> Lorenzo
> 
> > +
> >  	buf = kzalloc(len, GFP_KERNEL);
> >  	if (!buf)
> >  		return -ENOMEM;
> > -- 
> > 2.18.0
> > 
> _______________________________________________
> Linux-mediatek mailing list
> Linux-mediatek@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-mediatek



_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
