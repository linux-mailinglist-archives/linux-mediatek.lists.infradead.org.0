Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 707BB95E8D
	for <lists+linux-mediatek@lfdr.de>; Tue, 20 Aug 2019 14:30:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=C0cXBplKbgHGk2ObC9O8RwGUyUcf7bFyyZ2QfH8V3fc=; b=Y1Dnh3PhftJX13
	4VkMocZCk0tVCUClGI1Wd5pR9eyLcrHaVj24+h8xFGhQaG38Yw/zrFpgEa6D/gib15OhV6vFKEZAD
	4ubG1hvVmcKdcpgBffWmbc9iQSK/0A/xDGugG3IWme243JVuCyzhfFT0fV8UZxgvv2AfPeJH7kjW2
	PYgKwx+nC6MTSlpQ2xuwspK1lYz3lm/wNAbDZl1JmvW0uU5DyeOQW4gLIud0xlRpnArlZCcWZkJ5c
	wEyczjatqF5sANsfihwvWw5pxuIciG0EdxXTeIdNHz2kanIBv7To5+kgNU51VW2G37SXHT2NTpnkt
	BvtJ+bEzsW/BwP6tMQ3w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i03H0-0004x0-GI; Tue, 20 Aug 2019 12:30:02 +0000
Received: from nbd.name ([2a01:4f8:221:3d45::2])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i03Gv-0004uM-7a
 for linux-mediatek@lists.infradead.org; Tue, 20 Aug 2019 12:29:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=nbd.name;
 s=20160729; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=9cTelYKzCY4h/VMut/PrWo6Y/INNu9ufCmzyunzn+tc=; b=i1IGA7InYEtcB2AWFiHcBNQSJs
 IsTsUfRXEOZ2SuqMoJ+qc/2Zlchknim5JLYjtfoUvDrwdk1LNySnasSIKbpV0UhSKVEXmua2++LW8
 xCSaXLhGdCtI+kbZ1tjL488DSGl7L/4PgfR+xco9tAd3CZEVzXgRJENprduwNvT93waw=;
Received: from p54ae9443.dip0.t-ipconnect.de ([84.174.148.67] helo=nf.local)
 by ds12 with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.89) (envelope-from <nbd@nbd.name>)
 id 1i03Gq-0005YG-1E; Tue, 20 Aug 2019 14:29:52 +0200
Subject: Re: [PATCH v1 5/6] mt76: fix some checkpatch warnings
To: Ryder Lee <ryder.lee@mediatek.com>,
 Lorenzo Bianconi <lorenzo.bianconi@redhat.com>
References: <cover.1563944758.git.ryder.lee@mediatek.com>
 <0afa87cc70b34ee17d6c2247dfc8dac92c36852f.1563944758.git.ryder.lee@mediatek.com>
From: Felix Fietkau <nbd@nbd.name>
Openpgp: preference=signencrypt
Autocrypt: addr=nbd@nbd.name; prefer-encrypt=mutual; keydata=
 mQGiBEah5CcRBADIY7pu4LIv3jBlyQ/2u87iIZGe6f0f8pyB4UjzfJNXhJb8JylYYRzIOSxh
 ExKsdLCnJqsG1PY1mqTtoG8sONpwsHr2oJ4itjcGHfn5NJSUGTbtbbxLro13tHkGFCoCr4Z5
 Pv+XRgiANSpYlIigiMbOkide6wbggQK32tC20QxUIwCg4k6dtV/4kwEeiOUfErq00TVqIiEE
 AKcUi4taOuh/PQWx/Ujjl/P1LfJXqLKRPa8PwD4j2yjoc9l+7LptSxJThL9KSu6gtXQjcoR2
 vCK0OeYJhgO4kYMI78h1TSaxmtImEAnjFPYJYVsxrhay92jisYc7z5R/76AaELfF6RCjjGeP
 wdalulG+erWju710Bif7E1yjYVWeA/9Wd1lsOmx6uwwYgNqoFtcAunDaMKi9xVQW18FsUusM
 TdRvTZLBpoUAy+MajAL+R73TwLq3LnKpIcCwftyQXK5pEDKq57OhxJVv1Q8XkA9Dn1SBOjNB
 l25vJDFAT9ntp9THeDD2fv15yk4EKpWhu4H00/YX8KkhFsrtUs69+vZQwbQcRmVsaXggRmll
 dGthdSA8bmJkQG5iZC5uYW1lPohgBBMRAgAgBQJGoeQnAhsjBgsJCAcDAgQVAggDBBYCAwEC
 HgECF4AACgkQ130UHQKnbvXsvgCgjsAIIOsY7xZ8VcSm7NABpi91yTMAniMMmH7FRenEAYMa
 VrwYTIThkTlQuQINBEah5FQQCACMIep/hTzgPZ9HbCTKm9xN4bZX0JjrqjFem1Nxf3MBM5vN
 CYGBn8F4sGIzPmLhl4xFeq3k5irVg/YvxSDbQN6NJv8o+tP6zsMeWX2JjtV0P4aDIN1pK2/w
 VxcicArw0VYdv2ZCarccFBgH2a6GjswqlCqVM3gNIMI8ikzenKcso8YErGGiKYeMEZLwHaxE
 Y7mTPuOTrWL8uWWRL5mVjhZEVvDez6em/OYvzBwbkhImrryF29e3Po2cfY2n7EKjjr3/141K
 DHBBdgXlPNfDwROnA5ugjjEBjwkwBQqPpDA7AYPvpHh5vLbZnVGu5CwG7NAsrb2isRmjYoqk
 wu++3117AAMFB/9S0Sj7qFFQcD4laADVsabTpNNpaV4wAgVTRHKV/kC9luItzwDnUcsZUPdQ
 f3MueRJ3jIHU0UmRBG3uQftqbZJj3ikhnfvyLmkCNe+/hXhPu9sGvXyi2D4vszICvc1KL4RD
 aLSrOsROx22eZ26KqcW4ny7+va2FnvjsZgI8h4sDmaLzKczVRIiLITiMpLFEU/VoSv0m1F4B
 FtRgoiyjFzigWG0MsTdAN6FJzGh4mWWGIlE7o5JraNhnTd+yTUIPtw3ym6l8P+gbvfoZida0
 TspgwBWLnXQvP5EDvlZnNaKa/3oBes6z0QdaSOwZCRA3QSLHBwtgUsrT6RxRSweLrcabiEkE
 GBECAAkFAkah5FQCGwwACgkQ130UHQKnbvW2GgCfTKx80VvCR/PvsUlrvdOLsIgeRGAAn1ee
 RjMaxwtSdaCKMw3j33ZbsWS4
Message-ID: <29c75c5f-6e75-3de4-4e4a-a66f72844733@nbd.name>
Date: Tue, 20 Aug 2019 14:29:51 +0200
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.14; rv:60.0)
 Gecko/20100101 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <0afa87cc70b34ee17d6c2247dfc8dac92c36852f.1563944758.git.ryder.lee@mediatek.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190820_052957_437070_FE15B66A 
X-CRM114-Status: UNSURE (   8.84  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 Roy Luo <royluo@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On 2019-07-24 10:58, Ryder Lee wrote:
> --- a/drivers/net/wireless/mediatek/mt76/mt76.h
> +++ b/drivers/net/wireless/mediatek/mt76/mt76.h
> @@ -537,25 +537,25 @@ struct mt76_rx_status {
>  	s8 chain_signal[IEEE80211_MAX_CHAINS];
>  };
>  
> -#define __mt76_rr(dev, ...)	(dev)->bus->rr((dev), __VA_ARGS__)
> -#define __mt76_wr(dev, ...)	(dev)->bus->wr((dev), __VA_ARGS__)
> -#define __mt76_rmw(dev, ...)	(dev)->bus->rmw((dev), __VA_ARGS__)
> -#define __mt76_wr_copy(dev, ...)	(dev)->bus->copy((dev), __VA_ARGS__)
> +#define __mt76_rr(dev, ...)	((dev)->bus->rr((dev), __VA_ARGS__))
> +#define __mt76_wr(dev, ...)	((dev)->bus->wr((dev), __VA_ARGS__))
> +#define __mt76_rmw(dev, ...)	((dev)->bus->rmw((dev), __VA_ARGS__))
> +#define __mt76_wr_copy(dev, ...)	((dev)->bus->copy((dev), __VA_ARGS__))
>  
>  #define __mt76_set(dev, offset, val)	__mt76_rmw(dev, offset, 0, val)
>  #define __mt76_clear(dev, offset, val)	__mt76_rmw(dev, offset, val, 0)
>  
> -#define mt76_rr(dev, ...)	(dev)->mt76.bus->rr(&((dev)->mt76), __VA_ARGS__)
> -#define mt76_wr(dev, ...)	(dev)->mt76.bus->wr(&((dev)->mt76), __VA_ARGS__)
> -#define mt76_rmw(dev, ...)	(dev)->mt76.bus->rmw(&((dev)->mt76), __VA_ARGS__)
> -#define mt76_wr_copy(dev, ...)	(dev)->mt76.bus->copy(&((dev)->mt76), __VA_ARGS__)
> -#define mt76_wr_rp(dev, ...)	(dev)->mt76.bus->wr_rp(&((dev)->mt76), __VA_ARGS__)
> -#define mt76_rd_rp(dev, ...)	(dev)->mt76.bus->rd_rp(&((dev)->mt76), __VA_ARGS__)
> +#define mt76_rr(dev, ...)	((dev)->mt76.bus->rr(&((dev)->mt76), __VA_ARGS__))
> +#define mt76_wr(dev, ...)	((dev)->mt76.bus->wr(&((dev)->mt76), __VA_ARGS__))
> +#define mt76_rmw(dev, ...)	((dev)->mt76.bus->rmw(&((dev)->mt76), __VA_ARGS__))
> +#define mt76_wr_copy(dev, ...)	((dev)->mt76.bus->copy(&((dev)->mt76), __VA_ARGS__))
> +#define mt76_wr_rp(dev, ...)	((dev)->mt76.bus->wr_rp(&((dev)->mt76), __VA_ARGS__))
> +#define mt76_rd_rp(dev, ...)	((dev)->mt76.bus->rd_rp(&((dev)->mt76), __VA_ARGS__))
>  
> -#define mt76_mcu_send_msg(dev, ...)	(dev)->mt76.mcu_ops->mcu_send_msg(&((dev)->mt76), __VA_ARGS__)
> -#define __mt76_mcu_send_msg(dev, ...)	(dev)->mcu_ops->mcu_send_msg((dev), __VA_ARGS__)
> -#define mt76_mcu_restart(dev, ...)	(dev)->mt76.mcu_ops->mcu_restart(&((dev)->mt76))
> -#define __mt76_mcu_restart(dev, ...)	(dev)->mcu_ops->mcu_restart((dev))
> +#define mt76_mcu_send_msg(dev, ...)	((dev)->mt76.mcu_ops->mcu_send_msg(&((dev)->mt76), __VA_ARGS__))
> +#define __mt76_mcu_send_msg(dev, ...)	((dev)->mcu_ops->mcu_send_msg((dev), __VA_ARGS__))
> +#define mt76_mcu_restart(dev, ...)	((dev)->mt76.mcu_ops->mcu_restart(&((dev)->mt76)))
> +#define __mt76_mcu_restart(dev, ...)	((dev)->mcu_ops->mcu_restart((dev)))
>  
>  #define mt76_set(dev, offset, val)	mt76_rmw(dev, offset, 0, val)
>  #define mt76_clear(dev, offset, val)	mt76_rmw(dev, offset, val, 0)
> @@ -569,7 +569,7 @@ struct mt76_rx_status {
>  #define __mt76_rmw_field(_dev, _reg, _field, _val)	\
>  	__mt76_rmw(_dev, _reg, _field, FIELD_PREP(_field, _val))
>  
> -#define mt76_hw(dev) (dev)->mt76.hw
> +#define mt76_hw(dev) ((dev)->mt76.hw)
>  
>  bool __mt76_poll(struct mt76_dev *dev, u32 offset, u32 mask, u32 val,
>  		 int timeout);
> @@ -596,13 +596,13 @@ static inline u16 mt76_rev(struct mt76_dev *dev)
>  #define mt76xx_chip(dev) mt76_chip(&((dev)->mt76))
>  #define mt76xx_rev(dev) mt76_rev(&((dev)->mt76))
>  
> -#define mt76_init_queues(dev)		(dev)->mt76.queue_ops->init(&((dev)->mt76))
> -#define mt76_queue_alloc(dev, ...)	(dev)->mt76.queue_ops->alloc(&((dev)->mt76), __VA_ARGS__)
> -#define mt76_tx_queue_skb_raw(dev, ...)	(dev)->mt76.queue_ops->tx_queue_skb_raw(&((dev)->mt76), __VA_ARGS__)
> -#define mt76_tx_queue_skb(dev, ...)	(dev)->mt76.queue_ops->tx_queue_skb(&((dev)->mt76), __VA_ARGS__)
> -#define mt76_queue_rx_reset(dev, ...)	(dev)->mt76.queue_ops->rx_reset(&((dev)->mt76), __VA_ARGS__)
> -#define mt76_queue_tx_cleanup(dev, ...)	(dev)->mt76.queue_ops->tx_cleanup(&((dev)->mt76), __VA_ARGS__)
> -#define mt76_queue_kick(dev, ...)	(dev)->mt76.queue_ops->kick(&((dev)->mt76), __VA_ARGS__)
> +#define mt76_init_queues(dev)		((dev)->mt76.queue_ops->init(&((dev)->mt76)))
> +#define mt76_queue_alloc(dev, ...)	((dev)->mt76.queue_ops->alloc(&((dev)->mt76), __VA_ARGS__))
> +#define mt76_tx_queue_skb_raw(dev, ...)	((dev)->mt76.queue_ops->tx_queue_skb_raw(&((dev)->mt76), __VA_ARGS__))
> +#define mt76_tx_queue_skb(dev, ...)	((dev)->mt76.queue_ops->tx_queue_skb(&((dev)->mt76), __VA_ARGS__))
> +#define mt76_queue_rx_reset(dev, ...)	((dev)->mt76.queue_ops->rx_reset(&((dev)->mt76), __VA_ARGS__))
> +#define mt76_queue_tx_cleanup(dev, ...)	((dev)->mt76.queue_ops->tx_cleanup(&((dev)->mt76), __VA_ARGS__))
> +#define mt76_queue_kick(dev, ...)	((dev)->mt76.queue_ops->kick(&((dev)->mt76), __VA_ARGS__))
>  
>  static inline struct mt76_channel_state *
>  mt76_channel_state(struct mt76_dev *dev, struct ieee80211_channel *c)

I don't think these changes are making the code any better. The
corresponding checkpatch warnings might be a false positive.

- Felix

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
