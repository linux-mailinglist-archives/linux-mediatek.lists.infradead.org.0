Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A7B514412E
	for <lists+linux-mediatek@lfdr.de>; Tue, 21 Jan 2020 17:01:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Jc/JiH3RJJEA3Bwti+OCOZ0ev1S65K9fBG/Zgiv6H+8=; b=bHIopqskbcLSdA
	2q37PT42uysrNTXPr6ndhslBCVJUXL5TuTOkqcpLhnGTSWe7vp0IX4r814cHEJC99ueYehvNzfNUO
	EE1ySJmZVwE8YQNe1IvS8gj5HBYlsAnUHQchAE5nyuGmFYzJES5gYigs8wu42fpl2NEC8CfeLG9Ex
	SgVH2Qd+dmivNc/OZxCe2icroCicBgqSbszW9C2t4jPcJRig1r4e2rv6gw8cn33V12ZHy2NkK05rY
	1LMBTPGxc13FqJkQhjThtHK+L4qspqmLdY6aAsAn6+TFGDCz4Hqi0DJoIz6zzR0Pr185d/CoXSLLG
	UDymGajl8oR7yeRkhWFg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itvyK-0003Tl-NR; Tue, 21 Jan 2020 16:01:44 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itvxP-00034D-9e
 for linux-mediatek@lists.infradead.org; Tue, 21 Jan 2020 16:00:52 +0000
X-UUID: 3d6219c086d54523a6a346ff6dea964b-20200121
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=hl0UeD+P+rTTtPqsFkqtujX3P2uXkUS9JL4iwIHiWhk=; 
 b=hB9PHdQocbpaaPneY55GxhipThVOhW6GnMyRx5l5kDd1bXoa+XuDa0ZWAaiMbygCpqZr/ov6Y8ReatlixWOvJDMUFukeKG+IbnIb98NFldU07DTPy6v4d8/HNvfHXft6ZFRVMv/M/rsi9XtPhd3zXCvFADS7+QnMa6GlW7x6wWU=;
X-UUID: 3d6219c086d54523a6a346ff6dea964b-20200121
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <ryder.lee@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 501276504; Tue, 21 Jan 2020 08:00:42 -0800
Received: from MTKMBS06N1.mediatek.inc (172.21.101.129) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 21 Jan 2020 08:01:40 -0800
Received: from mtkcas09.mediatek.inc (172.21.101.178) by
 mtkmbs06n1.mediatek.inc (172.21.101.129) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 22 Jan 2020 00:00:39 +0800
Received: from [172.21.77.33] (172.21.77.33) by mtkcas09.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Wed, 22 Jan 2020 00:01:35 +0800
Message-ID: <1579622439.4993.17.camel@mtkswgap22>
Subject: Re: [PATCH 1/7] mt76: mt7615: simplify mcu_set_bmc flow
From: Ryder Lee <ryder.lee@mediatek.com>
To: Lorenzo Bianconi <lorenzo@kernel.org>
Date: Wed, 22 Jan 2020 00:00:39 +0800
In-Reply-To: <20200121151105.GA2396@localhost.localdomain>
References: <ae72dd289f8a26a2c0f42de1f940bb8b6d1f2c29.1579237414.git.ryder.lee@mediatek.com>
 <20200121151105.GA2396@localhost.localdomain>
X-Mailer: Evolution 3.2.3-0ubuntu6 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200121_080048_389986_F053402F 
X-CRM114-Status: GOOD (  14.50  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Sean Wang <sean.wang@mediatek.com>, linux-wireless@vger.kernel.org,
 linux-mediatek@lists.infradead.org, Roy
 Luo <royluo@google.com>, Lorenzo Bianconi <lorenzo.bianconi@redhat.com>,
 Felix Fietkau <nbd@nbd.name>, Shayne Chen <shayne.chen@mediatek.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Tue, 2020-01-21 at 16:11 +0100, Lorenzo Bianconi wrote:
> > Move mcu_wtbl_bmc into mcu_set_sta_rec_bmc to simplify flow.
> > 
> > Signed-off-by: Ryder Lee <ryder.lee@mediatek.com>
> > ---
> >  .../net/wireless/mediatek/mt76/mt7615/main.c  |  3 +-
> >  .../net/wireless/mediatek/mt76/mt7615/mcu.c   | 97 ++++++++-----------
> >  .../wireless/mediatek/mt76/mt7615/mt7615.h    |  6 +-
> >  3 files changed, 45 insertions(+), 61 deletions(-)
> > 
> 
> [...]
> 
> > -int mt7615_mcu_set_sta_rec_bmc(struct mt7615_dev *dev,
> > -			       struct ieee80211_vif *vif, bool en)
> > +int mt7615_mcu_set_bmc(struct mt7615_dev *dev,
> > +		       struct ieee80211_vif *vif, bool en)
> >  {
> >  	struct mt7615_vif *mvif = (struct mt7615_vif *)vif->drv_priv;
> >  	struct {
> >  		struct sta_req_hdr hdr;
> >  		struct sta_rec_basic basic;
> > -	} req = {
> > +		u8 buf[MT7615_WTBL_UPDATE_MAX_SIZE];
> > +	} __packed req = {
> >  		.hdr = {
> >  			.bss_idx = mvif->idx,
> >  			.wlan_idx = mvif->sta.wcid.idx,
> > @@ -1109,8 +1059,18 @@ int mt7615_mcu_set_sta_rec_bmc(struct mt7615_dev *dev,
> >  			.conn_type = cpu_to_le32(CONNECTION_INFRA_BC),
> >  		},
> >  	};
> > +	struct wtbl_req_hdr *wtbl_hdr;
> > +	struct wtbl_generic *wtbl_g;
> > +	struct wtbl_rx *wtbl_rx;
> > +	u8 *buf = req.buf;
> > +
> >  	eth_broadcast_addr(req.basic.peer_addr);
> >  
> > +	wtbl_hdr = (struct wtbl_req_hdr *)buf;
> > +	buf += sizeof(*wtbl_hdr);
> > +	wtbl_hdr->wlan_idx = mvif->sta.wcid.idx;
> > +	wtbl_hdr->operation = WTBL_RESET_AND_SET;
> > +
> >  	if (en) {
> >  		req.basic.conn_state = CONN_STATE_PORT_SECURE;
> >  		req.basic.extra_info = cpu_to_le16(EXTRA_INFO_VER |
> > @@ -1118,10 +1078,37 @@ int mt7615_mcu_set_sta_rec_bmc(struct mt7615_dev *dev,
> >  	} else {
> >  		req.basic.conn_state = CONN_STATE_DISCONNECT;
> >  		req.basic.extra_info = cpu_to_le16(EXTRA_INFO_VER);
> > +
> > +		__mt76_mcu_send_msg(&dev->mt76, MCU_EXT_CMD_STA_REC_UPDATE,
> > +				    &req, (u8 *)wtbl_hdr - (u8 *)&req, true);
> 
> we need to check the return value from __mt76_mcu_send_msg here.

Okay, but it seems we lack of some error handling for mcu in main.c.

> Moreover, here (u8 *)wtbl_hdr - (u8 *)&req is
> sizeof(struct sta_req_hdr) + sizeof(struct sta_rec_basic), right?
> I guess it would be easier to understand if we explicit the length, what do you think?

I'd love to explicit the length, but the length of these variable tlv
rely on sta's ht/vht_cap. Especially we have to take backward
compatibility (firmware v1) into account, and this actually makes code a
bit messy. 

> > +
> > +		return __mt76_mcu_send_msg(&dev->mt76, MCU_EXT_CMD_WTBL_UPDATE,
> > +					   (u8 *)wtbl_hdr, buf - (u8 *)wtbl_hdr,
> > +					   true);
> >  	}
> >  
> > +	wtbl_g = (struct wtbl_generic *)buf;
> > +	buf += sizeof(*wtbl_g);
> > +	wtbl_g->tag = cpu_to_le16(WTBL_GENERIC);
> > +	wtbl_g->len = cpu_to_le16(sizeof(*wtbl_g));
> > +	wtbl_g->muar_idx = 0xe;
> > +	eth_broadcast_addr(wtbl_g->peer_addr);
> > +
> > +	wtbl_rx = (struct wtbl_rx *)buf;
> > +	buf += sizeof(*wtbl_rx);
> > +	wtbl_rx->tag = cpu_to_le16(WTBL_RX);
> > +	wtbl_rx->len = cpu_to_le16(sizeof(*wtbl_rx));
> > +	wtbl_rx->rv = 1;
> > +	wtbl_rx->rca1 = 1;
> > +	wtbl_rx->rca2 = 1;
> > +
> > +	wtbl_hdr->tlv_num = cpu_to_le16(2);
> > +
> > +	__mt76_mcu_send_msg(&dev->mt76, MCU_EXT_CMD_WTBL_UPDATE,
> > +			    (u8 *)wtbl_hdr, buf - (u8 *)wtbl_hdr, true);
> 
> we need to check the return value from __mt76_mcu_send_msg here
> > +
> >  	return __mt76_mcu_send_msg(&dev->mt76, MCU_EXT_CMD_STA_REC_UPDATE,
> > -				   &req, sizeof(req), true);
> > +				   &req, (u8 *)wtbl_hdr - (u8 *)&req, true);
> 
> same here about the length.
> 
> Regards,
> Lorenzo
> 
Ryder


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
