Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AA2FE15D203
	for <lists+linux-mediatek@lfdr.de>; Fri, 14 Feb 2020 07:24:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QhDoJ5jOc9XGmEzR5LkIZqPZUClTsgf5KkOkisXVu6w=; b=WIK9JGd67m4YKj
	rHECJC0m7ySJW/vro5Fe4MhekHk7Nt2CjJ2ekpGLyDNVv90R8pd+R5ez+ktnLo7vidNgI/O7uEoOg
	29V3s520S3AoZ2YkZwks6TqowjvXM8M5tbim1COJLc2tOe9FUyw3ce5SR8L12FvKHVbUCJ8+kRAqG
	6whlXivPw//0cDZRlh9Mz+nlPPpRe/kjVDD65eWVlhiV1aFGAKI24tV3TqgCAZzV13sQgy8NW/sD9
	2REeIj/cHOWxM83JaEcNLt5bIhKtm0DWKqBSoVOGJNKYnvfabgv91d1BZV1Py+7V5HkDI+/CzyZ9o
	F05dByhByWg8ZqVTLTDw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2UOZ-0000p7-BS; Fri, 14 Feb 2020 06:24:11 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2UOV-0000oD-7l; Fri, 14 Feb 2020 06:24:08 +0000
X-UUID: d45e58ba65754133ad0b8a9a99ffac24-20200213
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=mJEdOBJrDxxHAkQhloAsNjKpaHcV9joa9xc+Z06QjCA=; 
 b=Ocmec2C4uJn1VHMiRGwWoV+jBtk2k31FbI/Bcxy0ZbHJ4B1W4bkfy/ILRXsK5LG6Hf2BjM7xo/CrpiiHhbmxuiOcippNW/j95z0KiLssEgonPX9GYuIIqdUpfd7fhSqe3vMyMBxf4LKKqJOS+mraBp7+bVfJv3LcvWHXdSyW84I=;
X-UUID: d45e58ba65754133ad0b8a9a99ffac24-20200213
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <ck.hu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 741567612; Thu, 13 Feb 2020 22:24:00 -0800
Received: from mtkmbs05n1.mediatek.inc (172.21.101.15) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 13 Feb 2020 22:23:57 -0800
Received: from mtkcas09.mediatek.inc (172.21.101.178) by
 mtkmbs05n1.mediatek.inc (172.21.101.15) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 14 Feb 2020 14:23:05 +0800
Received: from [172.21.77.4] (172.21.77.4) by mtkcas09.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Fri, 14 Feb 2020 14:23:28 +0800
Message-ID: <1581661437.16618.0.camel@mtksdaap41>
Subject: Re: [PATCH] soc: mediatek: knows_txdone needs to be set in Mediatek
 CMDQ helper
From: CK Hu <ck.hu@mediatek.com>
To: Bibby Hsieh <bibby.hsieh@mediatek.com>
Date: Fri, 14 Feb 2020 14:23:57 +0800
In-Reply-To: <20200214043545.16713-1-bibby.hsieh@mediatek.com>
References: <20200214043545.16713-1-bibby.hsieh@mediatek.com>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200213_222407_285661_47C66BA4 
X-CRM114-Status: GOOD (  12.67  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, Nicolas Boichat <drinkcat@chromium.org>,
 srv_heupstream@mediatek.com, Jassi Brar <jassisinghbrar@gmail.com>,
 linux-kernel@vger.kernel.org, Houlong Wei <houlong.wei@mediatek.com>,
 Dennis-YC Hsieh <dennis-yc.hsieh@mediatek.com>,
 Rob Herring <robh+dt@kernel.org>, linux-mediatek@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Hi, Bibby:

On Fri, 2020-02-14 at 12:35 +0800, Bibby Hsieh wrote:
> Mediatek CMDQ driver have a mechanism to do TXDONE_BY_ACK,
> so we should set knows_txdone.
> 

Reviewed-by: CK Hu <ck.hu@mediatek.com>

> Fixes:576f1b4bc802 ("soc: mediatek: Add Mediatek CMDQ helper")
> 
> Signed-off-by: Bibby Hsieh <bibby.hsieh@mediatek.com>
> ---
>  drivers/soc/mediatek/mtk-cmdq-helper.c | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/soc/mediatek/mtk-cmdq-helper.c b/drivers/soc/mediatek/mtk-cmdq-helper.c
> index 9add0fd5fa6c..2ca1a759a347 100644
> --- a/drivers/soc/mediatek/mtk-cmdq-helper.c
> +++ b/drivers/soc/mediatek/mtk-cmdq-helper.c
> @@ -80,6 +80,7 @@ struct cmdq_client *cmdq_mbox_create(struct device *dev, int index, u32 timeout)
>  	client->pkt_cnt = 0;
>  	client->client.dev = dev;
>  	client->client.tx_block = false;
> +	client->client.knows_txdone = true;
>  	client->chan = mbox_request_channel(&client->client, index);
>  
>  	if (IS_ERR(client->chan)) {

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
