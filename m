Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B87FB1099EC
	for <lists+linux-mediatek@lfdr.de>; Tue, 26 Nov 2019 09:04:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XSOR8j+9ZLLmnuyxEXk54ttds9cPSrdnSnImQEalfbs=; b=EsmeBp8xDP7nex
	MTwjl2Ral3KGSRCAbBo180itDmVMbhQ5oMt3seJmTY9Tcw6tvIIvnJRQwoBzef4XHQPEh12mA3ua2
	d2EOmsBhWrdWWqWiNfayW/K3z+y0hZ17IsoLhmWYqImt1ut4Zw34plL9fwVYA+df99xJPjnZYtZwg
	7OfDsSaycLjVNVNVAiC991MOV7KU02diCgyo2t7CdnnRzH5Mry7PPOlDK32BXZHdjybzYkAFLJ/BQ
	+GzsRYINPneVKE+Iz07DBJpSTomjvNiaN2wX/3j+7Da5ZM4rEkYPbkw0k5GdW/2wh3jhpZ4Ayc41k
	D7Xbmpwnk3mDZysT+0jQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZVpn-0005mn-7H; Tue, 26 Nov 2019 08:04:31 +0000
Received: from us-smtp-delivery-1.mimecast.com ([205.139.110.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZVpi-0005lz-R5
 for linux-mediatek@lists.infradead.org; Tue, 26 Nov 2019 08:04:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1574755463;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=p0QjVXdu4Y2AOINMSIfcze5ED2P1CMqFasZGrM6CNSw=;
 b=AP3k+6NLkDL9G4rGedrJnCL7yiPNqprOccmxdyTfQyDX1WEmIa7HnZ+VfOsuCc4rbZRPJG
 QWdKa1LZ+lyTIPpn0sUS5X51MfGsKxJZWit4Oxn6wM2ww8AoEoBQzPWld5+EuOBYikJTDt
 RTvm+FPiC7/VKiZyZJB+9/vbHyQNV50=
Received: from mail-lj1-f200.google.com (mail-lj1-f200.google.com
 [209.85.208.200]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-392--ipUdqnlNueQ5ZgfizimGQ-1; Tue, 26 Nov 2019 03:04:19 -0500
Received: by mail-lj1-f200.google.com with SMTP id c17so3517364ljn.3
 for <linux-mediatek@lists.infradead.org>; Tue, 26 Nov 2019 00:04:19 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=xAdyr+rwPBLDYub0Hn/ky8FJbrCeMk6nQjNxbDanCII=;
 b=SlirHOS86a+Mkgfb0IDiakelrz8nd/nJiOEmvB9go2+dbipnBUmDik7X+wxqyE485L
 rNPbeVb2WrG31hQmk6qn6IMvWHVtG9KV5Vb0dd0BKos3BZEUdnCZaxeOYpvmmmh44R7K
 Rp8dIEtlXp7yreahOa9ZySj+xpe4mtQkdy7BRLLEewd9LOYwYreh3JYPPU1Jx/lWob0x
 qEysX6I+vGabPlSn0Oujxq/k70YkByvEoMt5VQ1LWePtKwZjjyYRMq+XvtKdzu4FlGPM
 hmBdU7WixQl8ZqFk5/zB2GwRgGbe1xZwMhS3op6V74h+50hJZ1iSw/A7MaC/Ot+IHHXX
 q6jQ==
X-Gm-Message-State: APjAAAV98/x2M2OURuQhnVhbajKuth3eXHcPQLSHzVOZk6wrdPmn2CN1
 lgt1014gGZagtIF+gRtdsmNLUo1E8BjHVtNfFIfN2G8ifSL5rD6diuP1c7V1hUYAkj2OvPqI2uA
 DQdcokLKFYw3jPpW6gPS838MRSvt/+gAR
X-Received: by 2002:ac2:4553:: with SMTP id j19mr24471024lfm.142.1574755458279; 
 Tue, 26 Nov 2019 00:04:18 -0800 (PST)
X-Google-Smtp-Source: APXvYqw32eL/XdPUwR/CzkaxG5SqjRG2kkpXaZKBrJPo2BO5WZZmA6tdOKC/JAyRfetBu+oBmdQytA==
X-Received: by 2002:ac2:4553:: with SMTP id j19mr24470996lfm.142.1574755458008; 
 Tue, 26 Nov 2019 00:04:18 -0800 (PST)
Received: from alrua-x1.borgediget.toke.dk ([2a0c:4d80:42:443::2])
 by smtp.gmail.com with ESMTPSA id n14sm4744577lfe.40.2019.11.26.00.04.17
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 26 Nov 2019 00:04:17 -0800 (PST)
Received: by alrua-x1.borgediget.toke.dk (Postfix, from userid 1000)
 id 5460B1818BF; Tue, 26 Nov 2019 09:04:15 +0100 (CET)
From: Toke =?utf-8?Q?H=C3=B8iland-J=C3=B8rgensen?= <toke@redhat.com>
To: Dan Carpenter <dan.carpenter@oracle.com>, Felix Fietkau <nbd@nbd.name>
Subject: Re: [PATCH] mt76: Off by one in mt76_calc_rx_airtime()
In-Reply-To: <20191121213935.2cbgh3qmd4hv4v5a@kili.mountain>
References: <20191121213935.2cbgh3qmd4hv4v5a@kili.mountain>
X-Clacks-Overhead: GNU Terry Pratchett
Date: Tue, 26 Nov 2019 09:04:15 +0100
Message-ID: <87v9r7ysg0.fsf@toke.dk>
MIME-Version: 1.0
X-MC-Unique: -ipUdqnlNueQ5ZgfizimGQ-1
X-Mimecast-Spam-Score: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191126_000426_953853_D487604E 
X-CRM114-Status: GOOD (  14.06  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [205.139.110.120 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Ryder Lee <ryder.lee@mediatek.com>, kernel-janitors@vger.kernel.org,
 linux-wireless@vger.kernel.org, Matthias Brugger <matthias.bgg@gmail.com>,
 linux-mediatek@lists.infradead.org, Roy Luo <royluo@google.com>,
 Lorenzo Bianconi <lorenzo.bianconi83@gmail.com>,
 Kalle Valo <kvalo@codeaurora.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Dan Carpenter <dan.carpenter@oracle.com> writes:

> The sband->bitrates[] array has "sband->n_bitrates" elements so this
> check needs to be >= instead of > or we could read beyond the end of the
> array.
>
> These values come from when we call mt76_register_device():
>
> 	ret = mt76_register_device(&dev->mt76, true, mt7603_rates,
> 				   ARRAY_SIZE(mt7603_rates));
>
> Here sband->bitrates[] is mt7603_rates[] and ->n_bitrates is the
> ARRAY_SIZE()
>
> Fixes: 5ce09c1a7907 ("mt76: track rx airtime for airtime fairness and survey")
> Signed-off-by: Dan Carpenter <dan.carpenter@oracle.com>
> ---
>  drivers/net/wireless/mediatek/mt76/airtime.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/net/wireless/mediatek/mt76/airtime.c b/drivers/net/wireless/mediatek/mt76/airtime.c
> index 55116f395f9a..a4a785467748 100644
> --- a/drivers/net/wireless/mediatek/mt76/airtime.c
> +++ b/drivers/net/wireless/mediatek/mt76/airtime.c
> @@ -242,7 +242,7 @@ u32 mt76_calc_rx_airtime(struct mt76_dev *dev, struct mt76_rx_status *status,
>  			return 0;
>  
>  		sband = dev->hw->wiphy->bands[status->band];
> -		if (!sband || status->rate_idx > sband->n_bitrates)
> +		if (!sband || status->rate_idx >= sband->n_bitrates)
>  			return 0;
>  
>  		rate = &sband->bitrates[status->rate_idx];

This code has recently been ported to mac80211 (net/mac80211/airtime.c).
It seems that the bug is also present there; care to send a patch for
that as well? :)

-Toke


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
