Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 05C4C173BA7
	for <lists+linux-mediatek@lfdr.de>; Fri, 28 Feb 2020 16:39:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3+fKfpdg9HX3nDQenqGlCNJ74ej3yzCaK8/5ZNG4MhQ=; b=t1y7X5C17JOUIM
	ka5rjYxubHOwJw+knyRSknKDc3lyKwvIV5PFbItJV8CWUiIBVcSjYouQfloNjjaQmRhKy7BPGUAJU
	Hxguq2wnS7m2hlh/AMmWHV6F7EdinUXsrLlqsCARifSNNWZeqhdQ4VbfQAKF1qghVRwqk74dwhwjg
	iYiO14UgePtAjujyh9HtIGKtfhv6XzSdVF6MbrB11d5PHff/qtTYMQj1mEauT/qgyOeaAD1gGOjL2
	Dni80mIf4PloRFj+W7r98NDUQ++JI4dEsI83b2vREIvrpDJhoISN6yONKviYHinghyId2pJGsjKAT
	F07k7h2ADZlLyF3JjkoQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7hjQ-0003i3-FO; Fri, 28 Feb 2020 15:39:16 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7hjN-0003hL-8H; Fri, 28 Feb 2020 15:39:14 +0000
X-UUID: d003b5e3a6584b3dbe47e66289d5cdd8-20200228
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=K1/FjNHc57KhQ76Cn3QZo1foNtzkkZjOg40TS1GEvyY=; 
 b=g3K1Y1p/qZhV8mQJYQfdAUDtkefLMI9pegbj47KFIPBiyYkZRG1MQhrYjBHwq2gRuzCamSd4E+xoz7bPMvdYxBqjGfy8HGb0FxDXr7tIZgDNgztlFkyxPHHySge3sF9Q0kUlsWfrb3W0J9J5Mw8pFVNiDmLnXQI/77g8cDalwU0=;
X-UUID: d003b5e3a6584b3dbe47e66289d5cdd8-20200228
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <ck.hu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 53787421; Fri, 28 Feb 2020 07:39:12 -0800
Received: from mtkmbs07n1.mediatek.inc (172.21.101.16) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 28 Feb 2020 07:39:53 -0800
Received: from mtkcas09.mediatek.inc (172.21.101.178) by
 mtkmbs07n1.mediatek.inc (172.21.101.16) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 28 Feb 2020 23:38:15 +0800
Received: from [172.21.77.4] (172.21.77.4) by mtkcas09.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Fri, 28 Feb 2020 23:39:00 +0800
Message-ID: <1582904349.14824.19.camel@mtksdaap41>
Subject: Re: [PATCH v3 05/13] soc: mediatek: cmdq: return send msg error code
From: CK Hu <ck.hu@mediatek.com>
To: Dennis YC Hsieh <dennis-yc.hsieh@mediatek.com>
Date: Fri, 28 Feb 2020 23:39:09 +0800
In-Reply-To: <1582897461-15105-7-git-send-email-dennis-yc.hsieh@mediatek.com>
References: <1582897461-15105-1-git-send-email-dennis-yc.hsieh@mediatek.com>
 <1582897461-15105-7-git-send-email-dennis-yc.hsieh@mediatek.com>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200228_073913_301502_F8AA83B2 
X-CRM114-Status: GOOD (  12.36  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, srv_heupstream@mediatek.com,
 wsd_upstream@mediatek.com, Jassi Brar <jassisinghbrar@gmail.com>,
 linux-kernel@vger.kernel.org, Houlong Wei <houlong.wei@mediatek.com>,
 Rob Herring <robh+dt@kernel.org>, linux-mediatek@lists.infradead.org,
 Bibby Hsieh <bibby.hsieh@mediatek.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Ming-Fan Chen <ming-fan.chen@mediatek.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Hi, Dennis:

On Fri, 2020-02-28 at 21:44 +0800, Dennis YC Hsieh wrote:
> Return error code to client if send message fail,
> so that client has chance to error handling.
> 
> Fixes: 576f1b4bc802 ("soc: mediatek: Add Mediatek CMDQ helper")
> Signed-off-by: Dennis YC Hsieh <dennis-yc.hsieh@mediatek.com>
> ---
>  drivers/soc/mediatek/mtk-cmdq-helper.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/soc/mediatek/mtk-cmdq-helper.c b/drivers/soc/mediatek/mtk-cmdq-helper.c
> index 2e1bc513569b..0698612de5ad 100644
> --- a/drivers/soc/mediatek/mtk-cmdq-helper.c
> +++ b/drivers/soc/mediatek/mtk-cmdq-helper.c
> @@ -351,11 +351,11 @@ int cmdq_pkt_flush_async(struct cmdq_pkt *pkt, cmdq_async_flush_cb cb,
>  		spin_unlock_irqrestore(&client->lock, flags);
>  	}
>  
> -	mbox_send_message(client->chan, pkt);
> +	err = mbox_send_message(client->chan, pkt);
>  	/* We can send next packet immediately, so just call txdone. */
>  	mbox_client_txdone(client->chan, 0);

If error happen, why tx is done? I think you should return immediately
when error happen.

Regards,
CK

>  
> -	return 0;
> +	return err;
>  }
>  EXPORT_SYMBOL(cmdq_pkt_flush_async);
>  

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
