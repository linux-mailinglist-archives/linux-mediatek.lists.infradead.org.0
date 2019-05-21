Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F3A65245F5
	for <lists+linux-mediatek@lfdr.de>; Tue, 21 May 2019 04:29:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bOd8UUZTqg8ZHEJ/2DKGyYmOIhn80PzfhX6nSS7OIgM=; b=ni8L/2Jk/Ovgxj
	MasBJHT8WTEb5yc7VFJmYopwpqgb+zz7zxeUKvFRMGo4+y54XCkMNrJ5SdyWHnaPvOlkyr2Pt3Uvx
	b+hI5BpuRthUe0CTobDepCTrqdiE9PFzwdPvm+1Zs5S7SSnr9xXdZkaC+YfN9hdj+t0rznMFQFB47
	gvktbCYy2s4zjqT2EGR1XXsEr7lPESLRA7qIih2P0sP1XQdxZmwpEvc8RO4ugIwh+UXKrnEffCqcc
	uyYUtYIBASUZ9/CzC8KEYIv0k8SN5BYlowojXcBI2+FPawH09J7pzXZjy8ZvY/vX2hhDRGWj8gshm
	4Rjmg1IFKGQPa/LKzIZg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSuWW-0006z5-Us; Tue, 21 May 2019 02:29:05 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSuWN-0006tb-Ei; Tue, 21 May 2019 02:28:57 +0000
X-UUID: 968015709c3d4be29556a070edd2c2c1-20190520
X-UUID: 968015709c3d4be29556a070edd2c2c1-20190520
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <ck.hu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 697854311; Mon, 20 May 2019 18:28:44 -0800
Received: from mtkmbs08n2.mediatek.inc (172.21.101.56) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 20 May 2019 19:28:43 -0700
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs08n2.mediatek.inc (172.21.101.56) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 21 May 2019 10:28:37 +0800
Received: from [172.21.77.4] (172.21.77.4) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Tue, 21 May 2019 10:28:37 +0800
Message-ID: <1558405717.25526.1.camel@mtksdaap41>
Subject: Re: [PATCH v7 07/12] soc: mediatek: cmdq: reorder the parameter
From: CK Hu <ck.hu@mediatek.com>
To: Bibby Hsieh <bibby.hsieh@mediatek.com>
Date: Tue, 21 May 2019 10:28:37 +0800
In-Reply-To: <20190521011108.40428-8-bibby.hsieh@mediatek.com>
References: <20190521011108.40428-1-bibby.hsieh@mediatek.com>
 <20190521011108.40428-8-bibby.hsieh@mediatek.com>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-TM-SNTS-SMTP: CB6BA5088D12BC8A5407696EA9FC8AAD7872A46B82C40CA30EDB3956441E95332000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190520_192855_500733_A5F08835 
X-CRM114-Status: GOOD (  15.28  )
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
Cc: devicetree@vger.kernel.org, Nicolas Boichat <drinkcat@chromium.org>,
 Philipp Zabel <p.zabel@pengutronix.de>, srv_heupstream@mediatek.com,
 Daoyuan Huang <daoyuan.huang@mediatek.com>,
 Sascha Hauer <s.hauer@pengutronix.de>, Jassi Brar <jassisinghbrar@gmail.com>,
 linux-kernel@vger.kernel.org, Dennis-YC Hsieh <dennis-yc.hsieh@mediatek.com>,
 Rob Herring <robh+dt@kernel.org>, linux-mediatek@lists.infradead.org,
 Houlong Wei <houlong.wei@mediatek.com>, Sascha Hauer <kernel@pengutronix.de>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Jiaguang Zhang <jiaguang.zhang@mediatek.com>,
 linux-arm-kernel@lists.infradead.org, ginny.chen@mediatek.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Hi, Bibby:

On Tue, 2019-05-21 at 09:11 +0800, Bibby Hsieh wrote:
> The order of instructions gce knowed is [subsys offset value]
> so reorder the parameter of cmdq_pkt_write_mask
> and cmdq_pkt_write function.
> 

Except the word 'knowed',

Reviewed-by: CK Hu <ck.hu@mediatek.com>

> Signed-off-by: Bibby Hsieh <bibby.hsieh@mediatek.com>
> ---
>  drivers/soc/mediatek/mtk-cmdq-helper.c |  6 +++---
>  include/linux/soc/mediatek/mtk-cmdq.h  | 10 +++++-----
>  2 files changed, 8 insertions(+), 8 deletions(-)
> 
> diff --git a/drivers/soc/mediatek/mtk-cmdq-helper.c b/drivers/soc/mediatek/mtk-cmdq-helper.c
> index ff9fef5a032b..082b8978651e 100644
> --- a/drivers/soc/mediatek/mtk-cmdq-helper.c
> +++ b/drivers/soc/mediatek/mtk-cmdq-helper.c
> @@ -136,7 +136,7 @@ static int cmdq_pkt_append_command(struct cmdq_pkt *pkt, enum cmdq_code code,
>  	return 0;
>  }
>  
> -int cmdq_pkt_write(struct cmdq_pkt *pkt, u32 value, u32 subsys, u32 offset)
> +int cmdq_pkt_write(struct cmdq_pkt *pkt, u32 subsys, u32 offset, u32 value)
>  {
>  	u32 arg_a = (offset & CMDQ_ARG_A_WRITE_MASK) |
>  		    (subsys << CMDQ_SUBSYS_SHIFT);
> @@ -145,8 +145,8 @@ int cmdq_pkt_write(struct cmdq_pkt *pkt, u32 value, u32 subsys, u32 offset)
>  }
>  EXPORT_SYMBOL(cmdq_pkt_write);
>  
> -int cmdq_pkt_write_mask(struct cmdq_pkt *pkt, u32 value,
> -			u32 subsys, u32 offset, u32 mask)
> +int cmdq_pkt_write_mask(struct cmdq_pkt *pkt, u32 subsys,
> +			u32 offset, u32 value, u32 mask)
>  {
>  	u32 offset_mask = offset;
>  	int err = 0;
> diff --git a/include/linux/soc/mediatek/mtk-cmdq.h b/include/linux/soc/mediatek/mtk-cmdq.h
> index 4e8899972db4..39d813dde4b4 100644
> --- a/include/linux/soc/mediatek/mtk-cmdq.h
> +++ b/include/linux/soc/mediatek/mtk-cmdq.h
> @@ -60,26 +60,26 @@ void cmdq_pkt_destroy(struct cmdq_pkt *pkt);
>  /**
>   * cmdq_pkt_write() - append write command to the CMDQ packet
>   * @pkt:	the CMDQ packet
> - * @value:	the specified target register value
>   * @subsys:	the CMDQ sub system code
>   * @offset:	register offset from CMDQ sub system
> + * @value:	the specified target register value
>   *
>   * Return: 0 for success; else the error code is returned
>   */
> -int cmdq_pkt_write(struct cmdq_pkt *pkt, u32 value, u32 subsys, u32 offset);
> +int cmdq_pkt_write(struct cmdq_pkt *pkt, u32 subsys, u32 offset, u32 value);
>  
>  /**
>   * cmdq_pkt_write_mask() - append write command with mask to the CMDQ packet
>   * @pkt:	the CMDQ packet
> - * @value:	the specified target register value
>   * @subsys:	the CMDQ sub system code
>   * @offset:	register offset from CMDQ sub system
> + * @value:	the specified target register value
>   * @mask:	the specified target register mask
>   *
>   * Return: 0 for success; else the error code is returned
>   */
> -int cmdq_pkt_write_mask(struct cmdq_pkt *pkt, u32 value,
> -			u32 subsys, u32 offset, u32 mask);
> +int cmdq_pkt_write_mask(struct cmdq_pkt *pkt, u32 subsys,
> +			u32 offset, u32 value, u32 mask);
>  
>  /**
>   * cmdq_pkt_wfe() - append wait for event command to the CMDQ packet



_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
