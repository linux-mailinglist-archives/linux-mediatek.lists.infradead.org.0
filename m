Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7690415D160
	for <lists+linux-mediatek@lfdr.de>; Fri, 14 Feb 2020 06:11:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8HR0dRKBXwaOLxsXUgHUkT1LC0nOrV2LeB6qNKbDTns=; b=BariBO3SZKmwOr
	RLSfeXLAoTWBGFSv9MauU8Zfy26G5YIBt90QEgB34LKCIXC/wGAt/9ND03tduhBlyNyyrysNQLOVd
	O8+8LlrWNT1UBVbO9+FBZ+O9et1ipRdTk/xuzEwkp8jnbeOEeSuVxep6yH3setlMA8Ws+evflgjNZ
	yr4TSm9ykQjnOmNFedNXWXu5lMOq8VuBZfkRkhS4rwoS3lo4uHRXt5g6LcvRS/kmcKa+pX1XY6ZV1
	A1oEwRbQJwlBJEkoDt7oXnD/KHoRfjB5jjjcynmYM1B2h13rFPGvKkkojrGNDT+Id8F4wSWOTNnsx
	3fvewwyEZYxOy5YAxzgA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2TFy-00026s-0v; Fri, 14 Feb 2020 05:11:14 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2TFu-00026N-Kn; Fri, 14 Feb 2020 05:11:12 +0000
X-UUID: 82b12ea381a44a71bb98198cda3a2122-20200213
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=Nk30hZyMmCTsGuoRVVxRW3RnPZuvr/Vyq/uf64SMG/w=; 
 b=tY83siKs+zarzkOB5JykZEfAHsvV5RJJu1MFJiPLBH2DV8w0NSB2VIvtuObOXuTV8eUfDz0psN7N+s+BhRK5av/BAfHm0QTRwiHsIaMwsdOCirRLenDvyJM7ljsdiM87W47U3Z+n8M29RiND0XAXmYvWVH5Bn400+KaBPphfAhI=;
X-UUID: 82b12ea381a44a71bb98198cda3a2122-20200213
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <ck.hu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 751781098; Thu, 13 Feb 2020 21:11:05 -0800
Received: from mtkmbs05n2.mediatek.inc (172.21.101.140) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 13 Feb 2020 21:06:05 -0800
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs05n2.mediatek.inc (172.21.101.140) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 14 Feb 2020 13:05:00 +0800
Received: from [172.21.77.4] (172.21.77.4) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Fri, 14 Feb 2020 13:05:50 +0800
Message-ID: <1581656751.9307.0.camel@mtksdaap41>
Subject: Re: [PATCH 3/3] dt-binding: gce: remove atomic_exec in mboxes property
From: CK Hu <ck.hu@mediatek.com>
To: Bibby Hsieh <bibby.hsieh@mediatek.com>
Date: Fri, 14 Feb 2020 13:05:51 +0800
In-Reply-To: <20200214043325.16618-4-bibby.hsieh@mediatek.com>
References: <20200214043325.16618-1-bibby.hsieh@mediatek.com>
 <20200214043325.16618-4-bibby.hsieh@mediatek.com>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200213_211110_691660_38ED2691 
X-CRM114-Status: GOOD (  14.42  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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

On Fri, 2020-02-14 at 12:33 +0800, Bibby Hsieh wrote:
> There is not any client driver using this feature now,
> so remove it from binding.
> 

Reviewed-by: CK Hu <ck.hu@mediatek.com>

> Signed-off-by: Bibby Hsieh <bibby.hsieh@mediatek.com>
> ---
>  Documentation/devicetree/bindings/mailbox/mtk-gce.txt | 10 ++++------
>  1 file changed, 4 insertions(+), 6 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/mailbox/mtk-gce.txt b/Documentation/devicetree/bindings/mailbox/mtk-gce.txt
> index 7b13787ab13d..0b5b2a6bcc48 100644
> --- a/Documentation/devicetree/bindings/mailbox/mtk-gce.txt
> +++ b/Documentation/devicetree/bindings/mailbox/mtk-gce.txt
> @@ -14,13 +14,11 @@ Required properties:
>  - interrupts: The interrupt signal from the GCE block
>  - clock: Clocks according to the common clock binding
>  - clock-names: Must be "gce" to stand for GCE clock
> -- #mbox-cells: Should be 3.
> -	<&phandle channel priority atomic_exec>
> +- #mbox-cells: Should be 2.
> +	<&phandle channel priority>
>  	phandle: Label name of a gce node.
>  	channel: Channel of mailbox. Be equal to the thread id of GCE.
>  	priority: Priority of GCE thread.
> -	atomic_exec: GCE processing continuous packets of commands in atomic
> -		way.
>  
>  Required properties for a client device:
>  - mboxes: Client use mailbox to communicate with GCE, it should have this
> @@ -54,8 +52,8 @@ Example for a client device:
>  
>  	mmsys: clock-controller@14000000 {
>  		compatible = "mediatek,mt8173-mmsys";
> -		mboxes = <&gce 0 CMDQ_THR_PRIO_LOWEST 1>,
> -			 <&gce 1 CMDQ_THR_PRIO_LOWEST 1>;
> +		mboxes = <&gce 0 CMDQ_THR_PRIO_LOWEST>,
> +			 <&gce 1 CMDQ_THR_PRIO_LOWEST>;
>  		mutex-event-eof = <CMDQ_EVENT_MUTEX0_STREAM_EOF
>  				CMDQ_EVENT_MUTEX1_STREAM_EOF>;
>  		mediatek,gce-client-reg = <&gce SUBSYS_1400XXXX 0x3000 0x1000>,

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
