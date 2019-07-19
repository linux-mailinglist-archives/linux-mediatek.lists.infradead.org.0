Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C5CC06E1AC
	for <lists+linux-mediatek@lfdr.de>; Fri, 19 Jul 2019 09:27:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=O6XSAt3HDK190qMk5DGnTGeOuesHH4TOC6AljP3W5CY=; b=R6WLpu+GF/z5gB
	BCIBX+8vV+qw2gBhKvh8gwAIYjIgJydvx7e0S2QxNCZPXhWCpqZVNXXWmw+9hbCUrTdLJZxDO4pHs
	W1S7DpJfrofDyOxnm8IkboSQ263eY4tgHXu9DLmrv4ufFcOxp2LpYMlfhpgPlQeo3dAgX4w71DDIL
	y16B/39x3eVFpK7X0D08UwA5xrqcjupA/5Z7twLu1czkHGzBTwbQIu7salBioKWliMGDfO1xRDPsB
	6h+202nTn4IzQT/eyC2yVhhCMMEZGv0Kbiv/QQuXfWFsLaygpRsDxHQeaM6C4K0HcCMREpOHRUZfk
	6KvCXTrBBnH00rIQ52WA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hoNIt-0001LQ-3a; Fri, 19 Jul 2019 07:27:43 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hoNIg-0001DE-UD
 for linux-mediatek@lists.infradead.org; Fri, 19 Jul 2019 07:27:32 +0000
X-UUID: d1ae961662a042108347cc882e019911-20190718
X-UUID: d1ae961662a042108347cc882e019911-20190718
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw01.mediatek.com
 (envelope-from <ryder.lee@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 2119242978; Thu, 18 Jul 2019 23:27:25 -0800
Received: from mtkmbs08n2.mediatek.inc (172.21.101.56) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 19 Jul 2019 00:27:24 -0700
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 mtkmbs08n2.mediatek.inc (172.21.101.56) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 19 Jul 2019 15:27:14 +0800
Received: from [172.21.77.33] (172.21.77.33) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Fri, 19 Jul 2019 15:27:14 +0800
Message-ID: <1563521234.8090.4.camel@mtkswgap22>
Subject: Re: [PATCH 2/3] mt76: mt7615: add 4 WMM sets support
From: Ryder Lee <ryder.lee@mediatek.com>
To: Roy Luo <royluo@google.com>
Date: Fri, 19 Jul 2019 15:27:14 +0800
In-Reply-To: <CA+zupgwyz2hdVRmnGr+4vzeEfvTfxYkLmu6jD_jFNjrPAdbvCQ@mail.gmail.com>
References: <50d28c9b0f9e7d6b277d36fc93f55142d7535259.1563518381.git.ryder.lee@mediatek.com>
 <1dc3cbc32729be40d0e1f2ef831377f2cddf3df3.1563518381.git.ryder.lee@mediatek.com>
 <CA+zupgwyz2hdVRmnGr+4vzeEfvTfxYkLmu6jD_jFNjrPAdbvCQ@mail.gmail.com>
X-Mailer: Evolution 3.2.3-0ubuntu6 
MIME-Version: 1.0
X-TM-SNTS-SMTP: D61FDE6DCE5E490ED94D7E171FF4DB4510347F1D7F8F881410629479B1536F882000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190719_002731_014275_5DBDA22D 
X-CRM114-Status: GOOD (  15.02  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
 Lorenzo Bianconi <lorenzo.bianconi@redhat.com>, Felix Fietkau <nbd@nbd.name>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Fri, 2019-07-19 at 15:05 +0800, Roy Luo wrote:
> 
> 
> 
> On Fri, Jul 19, 2019 at 2:55 PM Ryder Lee <ryder.lee@mediatek.com>
> wrote:
> 
>         MT7615 hardware supoorts 4 WMM sets, so this patch adds them
>         accordingly.
>         Also remove incorrect queue mapping in .conf_tx
>         
>         Signed-off-by: Ryder Lee <ryder.lee@mediatek.com>
>         ---
>          drivers/net/wireless/mediatek/mt76/mt7615/mac.c  |  5 +++--
>          drivers/net/wireless/mediatek/mt76/mt7615/main.c | 16
>         ++++++----------
>          .../net/wireless/mediatek/mt76/mt7615/mt7615.h   |  1 +
>          3 files changed, 10 insertions(+), 12 deletions(-)
>         
>         diff --git a/drivers/net/wireless/mediatek/mt76/mt7615/mac.c
>         b/drivers/net/wireless/mediatek/mt76/mt7615/mac.c
>         index 8f9a2bb68ded..d85b3904f33a 100644
>         --- a/drivers/net/wireless/mediatek/mt76/mt7615/mac.c
>         +++ b/drivers/net/wireless/mediatek/mt76/mt7615/mac.c
>         @@ -314,7 +314,7 @@ int mt7615_mac_write_txwi(struct
>         mt7615_dev *dev, __le32 *txwi,
>                 struct ieee80211_hdr *hdr = (struct ieee80211_hdr
>         *)skb->data;
>                 struct ieee80211_vif *vif = info->control.vif;
>                 int tx_count = 8;
>         -       u8 fc_type, fc_stype, p_fmt, q_idx, omac_idx = 0;
>         +       u8 fc_type, fc_stype, p_fmt, q_idx, omac_idx = 0,
>         wmm_idx = 0;
>                 __le16 fc = hdr->frame_control;
>                 u16 seqno = 0;
>                 u32 val;
>         @@ -323,6 +323,7 @@ int mt7615_mac_write_txwi(struct
>         mt7615_dev *dev, __le32 *txwi,
>                         struct mt7615_vif *mvif = (struct mt7615_vif
>         *)vif->drv_priv;
>         
>                         omac_idx = mvif->omac_idx;
>         +               wmm_idx = mvif->wmm_idx;
>                 }
>         
>                 if (sta) {
>         @@ -335,7 +336,7 @@ int mt7615_mac_write_txwi(struct
>         mt7615_dev *dev, __le32 *txwi,
>                 fc_stype = (le16_to_cpu(fc) & IEEE80211_FCTL_STYPE) >>
>         4;
>         
>                 if (ieee80211_is_data(fc) ||
>         ieee80211_is_bufferable_mmpdu(fc)) {
>         -               q_idx = skb_get_queue_mapping(skb);
>         +               q_idx = skb_get_queue_mapping(skb) + wmm_idx *
>         MT7615_MAX_WMM_SETS;
>                         p_fmt = MT_TX_TYPE_CT;
>                 } else if (ieee80211_is_beacon(fc)) {
>                         q_idx = MT_LMAC_BCN0;
>         diff --git a/drivers/net/wireless/mediatek/mt76/mt7615/main.c
>         b/drivers/net/wireless/mediatek/mt76/mt7615/main.c
>         index 2c702b31d55f..ea48dcdb65c0 100644
>         --- a/drivers/net/wireless/mediatek/mt76/mt7615/main.c
>         +++ b/drivers/net/wireless/mediatek/mt76/mt7615/main.c
>         @@ -85,9 +85,9 @@ static int mt7615_add_interface(struct
>         ieee80211_hw *hw,
>                 }
>                 mvif->omac_idx = idx;
>         
>         -       /* TODO: DBDC support. Use band 0 and wmm 0 for now */
>         +       /* TODO: DBDC support. Use band 0 for now */
>                 mvif->band_idx = 0;
>         -       mvif->wmm_idx = 0;
>         +       mvif->wmm_idx = mvif->idx % MT7615_MAX_WMM_SETS;
>         
> 
> 
> IIUC, vifs with the same wmm_idx will share the same WMM HW, thus the
> same WMM parameter.
> Shouldn't we assign wmm_idx based on that?

I think that's what I did here. vif0 <-> wmm0, vif1 <->wmm1 ...

> 
> 


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
