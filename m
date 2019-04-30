Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 21D71F58C
	for <lists+linux-mediatek@lfdr.de>; Tue, 30 Apr 2019 13:28:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=E98klLbQvvWDal9y920kZUJX0ulEI+YYc4k/CKA7nts=; b=QsLJAlXxLCvoKF
	RfLo9NtwS6PWm0KfLSdf8vgcySDnckplJyz58vDwq3ul7Dprgo5udH1TSxzVTq7ZxTSOUyLvpfStK
	/ktjYJwDnLO/B+KmlgBPrXS7MsFO6/u69ygk7D5fVSXEczkdQqrOSuaJ9dlmxDS8pW9ubjjrStH7G
	RWfigdoVdz5VuAENnN5w/KGdDmIQbCyw98uFCOT50diIoItDuYHdM/wTR4ACiGceaSgn0NJdkyaAw
	cvdOc6jfteP7jhgh9WKVBWAge9INzdUJ/eAcmicJYC3R6XJl9zhbPRK+YgqRFg5jg3x8wDXYb5yZ0
	c1PsgY0MwnSzu0za7myQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLQvg-0004Zy-Bi; Tue, 30 Apr 2019 11:28:08 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLQvc-0004Z8-OU
 for linux-mediatek@lists.infradead.org; Tue, 30 Apr 2019 11:28:05 +0000
X-UUID: 083cdad0587447108c3e473d86945782-20190430
X-UUID: 083cdad0587447108c3e473d86945782-20190430
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <ryder.lee@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 364735567; Tue, 30 Apr 2019 03:28:01 -0800
Received: from mtkmbs08n1.mediatek.inc (172.21.101.55) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 30 Apr 2019 04:28:00 -0700
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs08n1.mediatek.inc (172.21.101.55) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 30 Apr 2019 19:27:58 +0800
Received: from [172.21.77.33] (172.21.77.33) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Tue, 30 Apr 2019 19:27:58 +0800
Message-ID: <1556623678.4496.1.camel@mtkswgap22>
Subject: Re: [PATCH v2] mt76: mt7615: add TX/RX antenna pattern capabilities
From: Ryder Lee <ryder.lee@mediatek.com>
To: Felix Fietkau <nbd@nbd.name>
Date: Tue, 30 Apr 2019 19:27:58 +0800
In-Reply-To: <c3f6e202-8c2f-a103-a104-e0d1cde8147b@nbd.name>
References: <4f7160cb9f52335ce15fccac087fec25e7650884.1556255852.git.ryder.lee@mediatek.com>
 <c3f6e202-8c2f-a103-a104-e0d1cde8147b@nbd.name>
X-Mailer: Evolution 3.2.3-0ubuntu6 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190430_042804_803679_8B19DCE6 
X-CRM114-Status: GOOD (  12.78  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: Sean Wang <sean.wang@mediatek.com>, YF Luo <yf.luo@mediatek.com>,
 linux-wireless@vger.kernel.org, linux-kernel@vger.kernel.org,
 Yiwei Chung <yiwei.chung@mediatek.com>, linux-mediatek@lists.infradead.org,
 Roy Luo <royluo@google.com>, Lorenzo Bianconi <lorenzo.bianconi@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Tue, 2019-04-30 at 11:24 +0200, Felix Fietkau wrote:
> On 2019-04-26 07:23, Ryder Lee wrote:
> > Announce antenna pattern cap to adapt PHY and baseband settings.
> > 
> > Signed-off-by: Ryder Lee <ryder.lee@mediatek.com>
> > ---
> > Changes since v2:
> > - Add a prefix mt76 in the title.
> > ---
> >  drivers/net/wireless/mediatek/mt76/mt7615/init.c | 2 ++
> >  1 file changed, 2 insertions(+)
> > 
> > diff --git a/drivers/net/wireless/mediatek/mt76/mt7615/init.c b/drivers/net/wireless/mediatek/mt76/mt7615/init.c
> > index 3ab3ff553ef2..122f7a565540 100644
> > --- a/drivers/net/wireless/mediatek/mt76/mt7615/init.c
> > +++ b/drivers/net/wireless/mediatek/mt76/mt7615/init.c
> > @@ -190,6 +190,8 @@ int mt7615_register_device(struct mt7615_dev *dev)
> >  			IEEE80211_VHT_CAP_SHORT_GI_160 |
> >  			IEEE80211_VHT_CAP_MAX_MPDU_LENGTH_11454 |
> >  			IEEE80211_VHT_CAP_MAX_A_MPDU_LENGTH_EXPONENT_MASK |
> > +			IEEE80211_VHT_CAP_RX_ANTENNA_PATTERN |
> > +			IEEE80211_VHT_CAP_TX_ANTENNA_PATTERN |
> If I read the standard correctly, these flags indicate that the rx/tx
> antenna pattern does NOT change during association.
> Doesn't that mean that we should set it in mac80211.c instead, so that
> it also applies to MT76x2?
> 
Right. I will add these flags in common code.

Ryder



_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
