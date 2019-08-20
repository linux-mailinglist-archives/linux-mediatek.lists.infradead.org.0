Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6612E9704B
	for <lists+linux-mediatek@lfdr.de>; Wed, 21 Aug 2019 05:28:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kp/axCClgHVxZSe/BjzI9v2LrCXIYlouBmMDLqTwk1I=; b=mAwrOD+LuchtG0
	Pa+4Escc6h87gV0ElOPo7gCLqsoKw/ED/vnuWXmsBSKY5DQ5BIhAepPHDpZnyPm1CtgQmj0mkuyqI
	iIBdnDT1WBpRnzBopTdadKznT/LEDpALy3sQbbZkgbuD0wWu9ist/ANxA0n2Je2unUhhFr4ffoWXk
	ECAUUSD1uOqyAfGMnpsD8qSB4maKMHHvRcRafVHVjT03KHGrFYPaB6hrUkZgOivDjrzKkyOgS3GZl
	owXFlhQN8R0gXtTYcicp9Sq/fcn3jEVPAhXftOCIC5KNI++LSHTF3/UQVdvY/JIfXQRGM91ZQpdEx
	6r+NtkIVrFXts8NGLmfA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0HIh-0000Z1-0S; Wed, 21 Aug 2019 03:28:43 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0HFL-0007ZL-Sp; Wed, 21 Aug 2019 03:25:17 +0000
X-UUID: 19fced4d0f4144ad87914f32571bac20-20190820
X-UUID: 19fced4d0f4144ad87914f32571bac20-20190820
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw02.mediatek.com
 (envelope-from <houlong.wei@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1465933014; Tue, 20 Aug 2019 01:50:44 -0800
Received: from MTKMBS31N2.mediatek.inc (172.27.4.87) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 20 Aug 2019 02:50:42 -0700
Received: from MTKCAS36.mediatek.inc (172.27.4.186) by MTKMBS31N2.mediatek.inc
 (172.27.4.87) with Microsoft SMTP Server (TLS) id 15.0.1395.4;
 Tue, 20 Aug 2019 17:50:38 +0800
Received: from [10.17.3.153] (172.27.4.253) by MTKCAS36.mediatek.inc
 (172.27.4.170) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Tue, 20 Aug 2019 17:50:37 +0800
Message-ID: <1566294639.24117.20.camel@mhfsdcap03>
Subject: Re: [RESEND, PATCH v13 10/12] soc: mediatek: cmdq: add polling
 function
From: houlong wei <houlong.wei@mediatek.com>
To: Bibby Hsieh <bibby.hsieh@mediatek.com>
Date: Tue, 20 Aug 2019 17:50:39 +0800
In-Reply-To: <20190820084932.22282-11-bibby.hsieh@mediatek.com>
References: <20190820084932.22282-1-bibby.hsieh@mediatek.com>
 <20190820084932.22282-11-bibby.hsieh@mediatek.com>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-TM-SNTS-SMTP: AD847517EDF494422E6C49834592B2BA7A3D1534F5AC2FD5ACD6AD8A255DC0552000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190820_202516_587879_58A350D1 
X-CRM114-Status: GOOD (  17.98  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Nicolas Boichat <drinkcat@chromium.org>, Philipp
 Zabel <p.zabel@pengutronix.de>, srv_heupstream <srv_heupstream@mediatek.com>,
 Daoyuan Huang =?UTF-8?Q?=28=E9=BB=83=E9=81=93=E5=8E=9F=29?=
 <Daoyuan.Huang@mediatek.com>, Sascha Hauer <s.hauer@pengutronix.de>,
 Jassi Brar <jassisinghbrar@gmail.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 houlong.wei@mediatek.com,
 CK Hu =?UTF-8?Q?=28=E8=83=A1=E4=BF=8A=E5=85=89=29?= <ck.hu@mediatek.com>,
 Rob Herring <robh+dt@kernel.org>,
 "linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>,
 Ginny Chen =?UTF-8?Q?=28=E9=99=B3=E6=B2=BB=E5=82=91=29?=
 <ginny.chen@mediatek.com>, Sascha Hauer <kernel@pengutronix.de>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Jiaguang Zhang =?UTF-8?Q?=28=E5=BC=A0=E5=8A=A0=E5=B9=BF=29?=
 <Jiaguang.Zhang@mediatek.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Dennis-YC Hsieh =?UTF-8?Q?=28=E8=AC=9D=E5=AE=87=E5=93=B2=29?=
 <Dennis-YC.Hsieh@mediatek.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Tue, 2019-08-20 at 16:49 +0800, Bibby Hsieh wrote:
> add polling function in cmdq helper functions
> 
> Signed-off-by: Bibby Hsieh <bibby.hsieh@mediatek.com>
> Reviewed-by: CK Hu <ck.hu@mediatek.com>
> ---
>  drivers/soc/mediatek/mtk-cmdq-helper.c   | 28 ++++++++++++++++++++++++
>  include/linux/mailbox/mtk-cmdq-mailbox.h |  1 +
>  include/linux/soc/mediatek/mtk-cmdq.h    | 15 +++++++++++++
>  3 files changed, 44 insertions(+)
> 
> diff --git a/drivers/soc/mediatek/mtk-cmdq-helper.c b/drivers/soc/mediatek/mtk-cmdq-helper.c
> index e3d5b0be8e79..c53f8476c68d 100644
> --- a/drivers/soc/mediatek/mtk-cmdq-helper.c
> +++ b/drivers/soc/mediatek/mtk-cmdq-helper.c
> @@ -221,6 +221,34 @@ int cmdq_pkt_clear_event(struct cmdq_pkt *pkt, u16 event)
>  }
>  EXPORT_SYMBOL(cmdq_pkt_clear_event);
>  
> +int cmdq_pkt_poll(struct cmdq_pkt *pkt, u8 subsys,
> +		  u16 offset, u32 value, u32 mask)
> +{
> +	struct cmdq_instruction *inst;
> +
> +	if (mask != 0xffffffff) {
> +		inst = cmdq_pkt_append_command(pkt);
> +		if (!inst)
> +			return -ENOMEM;
> +
> +		inst->op = CMDQ_CODE_MASK;
> +		inst->value = ~mask;
> +		offset = offset | 0x1;
> +	}
> +
> +	inst = cmdq_pkt_append_command(pkt);
> +	if (!inst)
> +		return -ENOMEM;
> +
> +	inst->op = CMDQ_CODE_POLL;
> +	inst->value = value;
> +	inst->offset = offset;
> +	inst->subsys = subsys;
> +
> +	return 0;
> +}
> +EXPORT_SYMBOL(cmdq_pkt_poll);
> +
>  static int cmdq_pkt_finalize(struct cmdq_pkt *pkt)
>  {
>  	struct cmdq_instruction *inst;
> diff --git a/include/linux/mailbox/mtk-cmdq-mailbox.h b/include/linux/mailbox/mtk-cmdq-mailbox.h
> index c8adedefaf42..9e3502945bc1 100644
> --- a/include/linux/mailbox/mtk-cmdq-mailbox.h
> +++ b/include/linux/mailbox/mtk-cmdq-mailbox.h
> @@ -46,6 +46,7 @@
>  enum cmdq_code {
>  	CMDQ_CODE_MASK = 0x02,
>  	CMDQ_CODE_WRITE = 0x04,
> +	CMDQ_CODE_POLL = 0x08,
>  	CMDQ_CODE_JUMP = 0x10,
>  	CMDQ_CODE_WFE = 0x20,
>  	CMDQ_CODE_EOC = 0x40,
> diff --git a/include/linux/soc/mediatek/mtk-cmdq.h b/include/linux/soc/mediatek/mtk-cmdq.h
> index 9618debb9ceb..a345870a6d10 100644
> --- a/include/linux/soc/mediatek/mtk-cmdq.h
> +++ b/include/linux/soc/mediatek/mtk-cmdq.h
> @@ -99,6 +99,21 @@ int cmdq_pkt_wfe(struct cmdq_pkt *pkt, u16 event);
>   */
>  int cmdq_pkt_clear_event(struct cmdq_pkt *pkt, u16 event);
>  
> +/**
> + * cmdq_pkt_poll() - Append polling command to the CMDQ packet, ask GCE to
> + *		     execute an instruction that wait for a specified hardware
> + *		     register to check for the value. All GCE hardware
> + *		     threads will be blocked by this instruction.
> + * @pkt:	the CMDQ packet
> + * @subsys:	the CMDQ sub system code
> + * @offset:	register offset from CMDQ sub system
> + * @value:	the specified target register value
> + * @mask:	the specified target register mask
> + *
> + * Return: 0 for success; else the error code is returned
> + */
> +int cmdq_pkt_poll(struct cmdq_pkt *pkt, u8 subsys,
> +		  u16 offset, u32 value, u32 mask);
>  /**
>   * cmdq_pkt_flush_async() - trigger CMDQ to asynchronously execute the CMDQ
>   *                          packet and call back at the end of done packet

Reviewed-by: Houlong Wei <houlong.wei@mediatek.com>


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
