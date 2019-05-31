Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0AAEC30C9C
	for <lists+linux-mediatek@lfdr.de>; Fri, 31 May 2019 12:32:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GZ8qbfAoaaIS7gGLetczgxv+ffnBHbMa+J2JxA0HT4Q=; b=dBBHy16cnWC8Yq
	rFjp8aWcSi7+I4Kb3Nd4WZqoKJl1m0VZ8MYJDe1hJYPDKOx53FcLIlKCWNWWAgUh3lUvnMRX8iQAm
	qP62o2KAh72MBNIKqCGoBL1Oa038w7N2oqxuSKXfVaJCHAni/OdW5S+K8Z4DNvLWGgywqQ9G/561U
	cjOduAgOZYvRwr1hvAK5Hl6UzLs3lN5jb/Q8X0qXCH37W6iFrpZMUAY2LzmBeydx13DGyvnTrb6qa
	tj18nLI8nEkZ5Iy5VJmPVs9VLk9Ax425r4yXLZgby0IUFW/4njaffcqr7qy+IuizKEW+oPafZus4L
	YmKIDnZ8KvenYhhFhlhw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWepH-0005bc-NF; Fri, 31 May 2019 10:31:55 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWep6-0005RO-Si
 for linux-mediatek@lists.infradead.org; Fri, 31 May 2019 10:31:46 +0000
X-UUID: d84cde6df3204248bc8c4c189c5f3c38-20190531
X-UUID: d84cde6df3204248bc8c4c189c5f3c38-20190531
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw01.mediatek.com
 (envelope-from <ryder.lee@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1690118973; Fri, 31 May 2019 02:31:30 -0800
Received: from mtkmbs07n1.mediatek.inc (172.21.101.16) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 31 May 2019 03:31:29 -0700
Received: from mtkcas09.mediatek.inc (172.21.101.178) by
 mtkmbs07n1.mediatek.inc (172.21.101.16) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 31 May 2019 18:31:27 +0800
Received: from [172.21.77.33] (172.21.77.33) by mtkcas09.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Fri, 31 May 2019 18:31:21 +0800
Message-ID: <1559298681.3296.3.camel@mtkswgap22>
Subject: Re: [PATCH 1/2] mt76: mt7615: enable support for mesh
From: Ryder Lee <ryder.lee@mediatek.com>
To: Lorenzo Bianconi <lorenzo@kernel.org>
Date: Fri, 31 May 2019 18:31:21 +0800
In-Reply-To: <20190531100201.GA3527@localhost.localdomain>
References: <7f167d09736652f81383991c971506630bbedacc.1559287432.git.ryder.lee@mediatek.com>
 <20190531100201.GA3527@localhost.localdomain>
X-Mailer: Evolution 3.2.3-0ubuntu6 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190531_033144_928410_E1FD2859 
X-CRM114-Status: GOOD (  14.63  )
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
 YF Luo <yf.luo@mediatek.com>, Chih-Min Chen <chih-min.Chen@mediatek.com>,
 linux-kernel@vger.kernel.org, Yiwei Chung <yiwei.chung@mediatek.com>,
 linux-mediatek@lists.infradead.org, Roy Luo <royluo@google.com>,
 Lorenzo Bianconi <lorenzo.bianconi@redhat.com>, Felix Fietkau <nbd@nbd.name>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Fri, 2019-05-31 at 12:02 +0200, Lorenzo Bianconi wrote:
> > Enable NL80211_IFTYPE_MESH_POINT and add its path.
> > 
> > Signed-off-by: Ryder Lee <ryder.lee@mediatek.com>
> > ---
> >  drivers/net/wireless/mediatek/mt76/mt7615/init.c | 6 ++++++
> >  drivers/net/wireless/mediatek/mt76/mt7615/main.c | 1 +
> >  drivers/net/wireless/mediatek/mt76/mt7615/mcu.c  | 5 ++++-
> >  3 files changed, 11 insertions(+), 1 deletion(-)
> > 
> 
> [...]
> 
> > diff --git a/drivers/net/wireless/mediatek/mt76/mt7615/main.c b/drivers/net/wireless/mediatek/mt76/mt7615/main.c
> > index b0bb7cc12385..585e67fa2728 100644
> > --- a/drivers/net/wireless/mediatek/mt76/mt7615/main.c
> > +++ b/drivers/net/wireless/mediatek/mt76/mt7615/main.c
> > @@ -37,6 +37,7 @@ static int get_omac_idx(enum nl80211_iftype type, u32 mask)
> >  
> >  	switch (type) {
> >  	case NL80211_IFTYPE_AP:
> > +	case NL80211_IFTYPE_MESH_POINT:
> >  		/* ap use hw bssid 0 and ext bssid */
> >  		if (~mask & BIT(HW_BSSID_0))
> >  			return HW_BSSID_0;
> > diff --git a/drivers/net/wireless/mediatek/mt76/mt7615/mcu.c b/drivers/net/wireless/mediatek/mt76/mt7615/mcu.c
> > index 43f70195244c..8b8db526cb16 100644
> > --- a/drivers/net/wireless/mediatek/mt76/mt7615/mcu.c
> > +++ b/drivers/net/wireless/mediatek/mt76/mt7615/mcu.c
> > @@ -754,6 +754,7 @@ int mt7615_mcu_set_bss_info(struct mt7615_dev *dev,
> >  
> >  	switch (vif->type) {
> >  	case NL80211_IFTYPE_AP:
> > +	case NL80211_IFTYPE_MESH_POINT:
> >  		tx_wlan_idx = mvif->sta.wcid.idx;
> >  		conn_type = CONNECTION_INFRA_AP;
> 
> Just out of curiosity, why not using CONNECTION_MESH_{AP,STA} here?
> why not NETWORK_MESH?

Actually the CONNECTION_MESH_{AP,STA} are useless and I will send v2 to
remove them.

> >  		break;
> > @@ -968,7 +969,8 @@ int mt7615_mcu_add_wtbl(struct mt7615_dev *dev, struct ieee80211_vif *vif,
> >  		.rx_wtbl = {
> >  			.tag = cpu_to_le16(WTBL_RX),
> >  			.len = cpu_to_le16(sizeof(struct wtbl_rx)),
> > -			.rca1 = vif->type != NL80211_IFTYPE_AP,
> > +			.rca1 = vif->type != (NL80211_IFTYPE_AP ||
> > +					      NL80211_IFTYPE_MESH_POINT),
> >  			.rca2 = 1,
> >  			.rv = 1,
> >  		},
> > @@ -1042,6 +1044,7 @@ static void sta_rec_convert_vif_type(enum nl80211_iftype type, u32 *conn_type)
> >  {
> >  	switch (type) {
> >  	case NL80211_IFTYPE_AP:
> > +	case NL80211_IFTYPE_MESH_POINT:
> >  		if (conn_type)
> >  			*conn_type = CONNECTION_INFRA_STA;
> >  		break;
> 
> same here.
> 
> Regards,
> Lorenzo
> 
> > -- 
> > 2.18.0
> > 



_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
