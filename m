Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CDFF1DF5BC
	for <lists+linux-mediatek@lfdr.de>; Sat, 23 May 2020 09:47:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=B4qyeAotHmHjwxYT0E580ww8ca2Qt57DjgfqXi02B5Y=; b=TLlh/NF0G8gTQK
	lg4LsAbGGSyB7qcR76tImNdA27dJE00uOrGBcq2p2f6Hcy0K+BG1RcyTE90J/fvwOezhAZ5Hgj76b
	k1fzbCJf2lRuHlyrf1b6FubY+/7BeW6otv9stK4y9REopf5z2Rk8dPcc7OG9lS3MTtueiD1Hw24Rn
	Ii5p1qgPfx3BCXPf6mgXUnAJ+U/1md1llBoaUSNjAwDhPrYWQQHtteUpCTURF0eh6V+ejioLPv8wI
	kJIy7uiYluwe4CUmrQiZkttse5clllNdyaBo32QecV/vH7ChfJDVNrfRsKB9ibQKbl7Z9mRnYzx+l
	2/2vm05HuxKHMzPnguKg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jcOrn-00080S-A1; Sat, 23 May 2020 07:46:47 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jcOri-0007zI-SB
 for linux-mediatek@lists.infradead.org; Sat, 23 May 2020 07:46:45 +0000
X-UUID: ef25c29a3ae44a35baed4e19b57b3d67-20200522
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=K1YlH6sKupJLxMJK8vacs2+pPTOSyNUkbRTASPYPs78=; 
 b=RT9OPW5J7GOUkmUxh8d8R8DlL7KcSaC82yN9fWOcLe2ZzJmmp6tpKUvjSpYM45kMHs1TWbyJ6zp3x7YSv7LpcijMZifvfT6OPnlCgVWDnW0M0cKwVZ1cm8HrNYXoep2cjI4NSI+fFZj8lQCpyghTsW0AatR/d0T3y+jpJUQu314=;
X-UUID: ef25c29a3ae44a35baed4e19b57b3d67-20200522
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <ryder.lee@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 463250327; Fri, 22 May 2020 23:46:30 -0800
Received: from mtkexhb02.mediatek.inc (172.21.101.103) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Sat, 23 May 2020 00:46:33 -0700
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkexhb02.mediatek.inc (172.21.101.103) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Sat, 23 May 2020 15:46:19 +0800
Received: from [172.21.77.33] (172.21.77.33) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via Frontend
 Transport; Sat, 23 May 2020 15:46:18 +0800
Message-ID: <1590219979.19657.2.camel@mtkswgap22>
Subject: Re: [PATCH] mt76: mt7915: Use proper enum type in
 __mt7915_mcu_msg_send
From: Ryder Lee <ryder.lee@mediatek.com>
To: Nathan Chancellor <natechancellor@gmail.com>
Date: Sat, 23 May 2020 15:46:19 +0800
In-Reply-To: <20200523041923.3332257-1-natechancellor@gmail.com>
References: <20200523041923.3332257-1-natechancellor@gmail.com>
X-Mailer: Evolution 3.2.3-0ubuntu6 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200523_004642_915624_5485D43C 
X-CRM114-Status: GOOD (  12.70  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: netdev@vger.kernel.org, linux-wireless@vger.kernel.org,
 linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com,
 linux-mediatek@lists.infradead.org,
 Lorenzo Bianconi <lorenzo.bianconi83@gmail.com>, Felix Fietkau <nbd@nbd.name>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Fri, 2020-05-22 at 21:19 -0700, Nathan Chancellor wrote:
> Clang warns:
> 
> drivers/net/wireless/mediatek/mt76/mt7915/mcu.c:232:9: warning: implicit
> conversion from enumeration type 'enum mt76_txq_id' to different
> enumeration type 'enum mt7915_txq_id' [-Wenum-conversion]
>                 txq = MT_TXQ_FWDL;
>                     ~ ^~~~~~~~~~~
> drivers/net/wireless/mediatek/mt76/mt7915/mcu.c:239:9: warning: implicit
> conversion from enumeration type 'enum mt76_txq_id' to different
> enumeration type 'enum mt7915_txq_id' [-Wenum-conversion]
>                 txq = MT_TXQ_MCU_WA;
>                     ~ ^~~~~~~~~~~~~
> drivers/net/wireless/mediatek/mt76/mt7915/mcu.c:243:9: warning: implicit
> conversion from enumeration type 'enum mt76_txq_id' to different
> enumeration type 'enum mt7915_txq_id' [-Wenum-conversion]
>                 txq = MT_TXQ_MCU;
>                     ~ ^~~~~~~~~~
> drivers/net/wireless/mediatek/mt76/mt7915/mcu.c:287:36: warning:
> implicit conversion from enumeration type 'enum mt7915_txq_id' to
> different enumeration type 'enum mt76_txq_id' [-Wenum-conversion]
>         return mt76_tx_queue_skb_raw(dev, txq, skb, 0);
>                ~~~~~~~~~~~~~~~~~~~~~~~~~~~^~~~~~~~~~~~
> 
> txq should be a "enum mt76_txq_id" as values of that type are the only
> ones assigned to it and that is the type that mt76_tx_queue_skb_raw
> expects.
> 
> Fixes: e57b7901469f ("mt76: add mac80211 driver for MT7915 PCIe-based chipsets")
> Link: https://github.com/ClangBuiltLinux/linux/issues/1035
> Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
> ---
>  drivers/net/wireless/mediatek/mt76/mt7915/mcu.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/net/wireless/mediatek/mt76/mt7915/mcu.c b/drivers/net/wireless/mediatek/mt76/mt7915/mcu.c
> index f00ad2b66761..916f664e964e 100644
> --- a/drivers/net/wireless/mediatek/mt76/mt7915/mcu.c
> +++ b/drivers/net/wireless/mediatek/mt76/mt7915/mcu.c
> @@ -220,7 +220,7 @@ static int __mt7915_mcu_msg_send(struct mt7915_dev *dev, struct sk_buff *skb,
>  {
>  	struct mt7915_mcu_txd *mcu_txd;
>  	u8 seq, pkt_fmt, qidx;
> -	enum mt7915_txq_id txq;
> +	enum mt76_txq_id txq;
>  	__le32 *txd;
>  	u32 val;
>  
> 
> base-commit: c11d28ab4a691736e30b49813fb801847bd44e83

Thanks. I have posted the fix here:
https://patchwork.kernel.org/patch/11553415/
This is already in Felix's tree.
_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
