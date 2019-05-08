Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C74DA1704A
	for <lists+linux-mediatek@lfdr.de>; Wed,  8 May 2019 07:11:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dXuHKnyuboYrViJpmQUH++k+dugkzjb6XXDXxplSM/w=; b=sraDnzQOzBcR0C
	zsZcDH34lBKIXHA+tNDAegNQcP7/hKXK/9/pn1GcH1skP6nTbzmjG8LnwMoK7PRAhR6uRE+ekm9IT
	Rk3DEX1C2qFXgwD3Fxfrack8y2ZDT+AkYYSnjnAtiN4LfvEXvijrrN6tOdj4Qh26lGZvnf2vJr+rA
	OcP5l/T60xyXh2UAfS5OwOiiqaXg5pj8hLglghOFKUmhjgpVtKM1HNi+1T6stmqM4qAmyw2f/3KMJ
	XisuX/6oMhwrPkdFYPRhDZFca2/U3SYYvOh5BmdFjllUfJwrN3SN+d81KPQgUn/tbpbbN/iNTLlyA
	t4BiqCy3JsAGagJZkm0Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOErG-0002G6-G0; Wed, 08 May 2019 05:11:10 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOEr7-00029R-KA; Wed, 08 May 2019 05:11:03 +0000
X-UUID: 4b3dc171ce14447ea085483545a4f267-20190507
X-UUID: 4b3dc171ce14447ea085483545a4f267-20190507
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw02.mediatek.com
 (envelope-from <ck.hu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 486262044; Tue, 07 May 2019 21:10:51 -0800
Received: from mtkmbs08n2.mediatek.inc (172.21.101.56) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 7 May 2019 22:10:50 -0700
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs08n2.mediatek.inc (172.21.101.56) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 8 May 2019 13:10:47 +0800
Received: from [172.21.77.4] (172.21.77.4) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Wed, 8 May 2019 13:10:47 +0800
Message-ID: <1557292247.3936.5.camel@mtksdaap41>
Subject: Re: [PATCH v5 04/12] dt-binding: gce: add binding for gce event
 property
From: CK Hu <ck.hu@mediatek.com>
To: Bibby Hsieh <bibby.hsieh@mediatek.com>
Date: Wed, 8 May 2019 13:10:47 +0800
In-Reply-To: <20190507081355.52630-5-bibby.hsieh@mediatek.com>
References: <20190507081355.52630-1-bibby.hsieh@mediatek.com>
 <20190507081355.52630-5-bibby.hsieh@mediatek.com>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-TM-SNTS-SMTP: CFEF6E4C8000EB0EEBA48929D835A093DAD685926104297EC42D763935B0D7792000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190507_221101_670204_FBE3501E 
X-CRM114-Status: GOOD (  15.27  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
 kendrick.hsu@mediatek.com, Daoyuan Huang <daoyuan.huang@mediatek.com>,
 Sascha Hauer <s.hauer@pengutronix.de>, Jassi Brar <jassisinghbrar@gmail.com>,
 linux-kernel@vger.kernel.org, Dennis-YC Hsieh <dennis-yc.hsieh@mediatek.com>,
 Rob Herring <robh+dt@kernel.org>, linux-mediatek@lists.infradead.org,
 Houlong Wei <houlong.wei@mediatek.com>, Sascha Hauer <kernel@pengutronix.de>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Jiaguang Zhang <jiaguang.zhang@mediatek.com>,
 Frederic Chen <Frederic.Chen@mediatek.com>,
 linux-arm-kernel@lists.infradead.org, ginny.chen@mediatek.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Hi, Bibby:

On Tue, 2019-05-07 at 16:13 +0800, Bibby Hsieh wrote:
> Client hardware would send event to GCE hardware,
> mediatek,gce-event-names and mediatek,gce-events
> can be used to present the event.
> 
> Signed-off-by: Bibby Hsieh <bibby.hsieh@mediatek.com>
> ---
>  Documentation/devicetree/bindings/mailbox/mtk-gce.txt | 9 +++++++--
>  1 file changed, 7 insertions(+), 2 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/mailbox/mtk-gce.txt b/Documentation/devicetree/bindings/mailbox/mtk-gce.txt
> index 8fd9479bc9f6..76491f194c56 100644
> --- a/Documentation/devicetree/bindings/mailbox/mtk-gce.txt
> +++ b/Documentation/devicetree/bindings/mailbox/mtk-gce.txt
> @@ -35,6 +35,9 @@ Required properties for a client device:
>  Optional propertier for a client device:
>  - mediatek,gce-client-reg: u32, specify the sub-system id which is corresponding
>    to the register address.
> +- mediatek,gce-event-names: the event name can be defined by user.

gce-event is like an interrupt from client hardware to GCE hardware, we
do not give a name to an interrupt, so do we need to give a name for
gce-event?

Regards,
CK

> +- mediatek,gce-events: u32, the event number defined in
> +  'dt-bindings/gce/mt8173-gce.h' or 'dt-binding/gce/mt8183-gce.h'.
>  
>  Some vaules of properties are defined in 'dt-bindings/gce/mt8173-gce.h'
>  or 'dt-binding/gce/mt8183-gce.h'. Such as sub-system ids, thread priority, event ids.
> @@ -57,8 +60,10 @@ Example for a client device:
>  		compatible = "mediatek,mt8173-mmsys";
>  		mboxes = <&gce 0 CMDQ_THR_PRIO_LOWEST 1>,
>  			 <&gce 1 CMDQ_THR_PRIO_LOWEST 1>;
> -		mutex-event-eof = <CMDQ_EVENT_MUTEX0_STREAM_EOF
> -				CMDQ_EVENT_MUTEX1_STREAM_EOF>;
> +		mediatek,gce-event-names = "rdma0_sof",
> +					   "rsz0_sof";
> +		mediatek,gce-events = <CMDQ_EVENT_MDP_RDMA0_SOF>,
> +				      <CMDQ_EVENT_MDP_RSZ0_SOF>;
>  		mediatek,gce-client-reg = <&gce SUBSYS_1400XXXX 0x3000 0x1000>,
>  					  <&gce SUBSYS_1401XXXX 0x2000 0x100>;
>  		...



_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
