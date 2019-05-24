Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A8C002A0B3
	for <lists+linux-mediatek@lfdr.de>; Fri, 24 May 2019 23:54:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zqPR9C+2LlJI+eet41y7UidAS2kdlUr1vMhOlgGpJ48=; b=tq4N8xU8+//DcW
	xdgqcS9jvJ3dpt2Y1vN1VDYZ8/fkvJ/H1yvE4grTYx6qH7hE1ENgD60D8Un48CpEnjyVpNz2yPwJL
	iMkJpmiEREy221z6sevaXFxFkdPThaYd5ayh8pV/tGwPbWUF4pmX5BoJvenRNWLmJE/rxqHUWhCD5
	ueQK3269TRbZolLXUV1qszMmt3URhRBB5lFHhS4W43N1jbpC+t4hofyBxU90EgqcrMqCsNprI3+DS
	Wl/91c/BXoscb6vipXgB7sfDKsn9EOH90aLe5De+e9zttBfh3AeGzV7f8wfOpx4ZN51tueKJHsaF2
	U5VnIe3w63qvphgAa+cA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hUI8p-0002Ky-Og; Fri, 24 May 2019 21:54:19 +0000
Received: from mail-ot1-f68.google.com ([209.85.210.68])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hUI8f-0002Da-Mv; Fri, 24 May 2019 21:54:11 +0000
Received: by mail-ot1-f68.google.com with SMTP id s19so10014016otq.5;
 Fri, 24 May 2019 14:54:09 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=ocTPW25nWKpvKq/JRulYN0S/pGd+SXijFY/6jO39icc=;
 b=gyOv4ZC2muZj1UTCNkvyO5MKCTRLGCIz4pQQ+CdOfDbtYA3AT3FVYjd5izxT0PfuXG
 OJokpEM+ph0NsGYxONBgnDW5L1JOQzmUoVHZ4qeuKnP8p80IXKWlSK+Wkb20ghFWNsRd
 KT1WERk+ToXIDAjgmpcm1GM6Ihvey2eD5ag7qoiXJnVLLHzTUscJFyvMumllRGtgoriW
 /4SNhqP8rbPIYN40PxJWRrHaDUFqVbvRUYgFWjjE/q10FOiIjs/k91DUGvZTABjjxG9x
 ppIO1nRP1zXJybnpvWZ2Sa10FKaL/CKtro8Jtud2K/hOoGz0LuEwi2JFnA0ytHHOSS66
 /ePQ==
X-Gm-Message-State: APjAAAUzT1jBsnvrd1lGsAsfGb7hyQdD/NqhJvs2OgS4vmiz2Qn7ILaZ
 jUtcfGe66nNc4t1IupBSLg==
X-Google-Smtp-Source: APXvYqxz7j6TAqcCOb7TkXaiVR8I/EoSc62MSkmCQ9hdBLYDFZ+4Dlt6IECHsh8xO5wmRSqntod77A==
X-Received: by 2002:a9d:6248:: with SMTP id i8mr198636otk.276.1558734848769;
 Fri, 24 May 2019 14:54:08 -0700 (PDT)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id p64sm1425346oif.8.2019.05.24.14.54.07
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Fri, 24 May 2019 14:54:08 -0700 (PDT)
Date: Fri, 24 May 2019 16:54:07 -0500
From: Rob Herring <robh@kernel.org>
To: Bibby Hsieh <bibby.hsieh@mediatek.com>
Subject: Re: [PATCH v6 04/12] dt-binding: gce: add binding for gce event
 property
Message-ID: <20190524215407.GA7214@bogus>
References: <20190516090224.59070-1-bibby.hsieh@mediatek.com>
 <20190516090224.59070-5-bibby.hsieh@mediatek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190516090224.59070-5-bibby.hsieh@mediatek.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190524_145409_744492_62D69385 
X-CRM114-Status: GOOD (  15.74  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.68 listed in list.dnswl.org]
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.68 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
 linux-kernel@vger.kernel.org, Houlong Wei <houlong.wei@mediatek.com>,
 CK HU <ck.hu@mediatek.com>, linux-mediatek@lists.infradead.org,
 Dennis-YC Hsieh
 <dennis-yc.hsimediatek/mtkcam/drv/fdvt/4.0/cam_fdvt_v4l2.cppeh@mediatek.com>,
 Sascha Hauer <kernel@pengutronix.de>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Jiaguang Zhang <jiaguang.zhang@mediatek.com>,
 linux-arm-kernel@lists.infradead.org, ginny.chen@mediatek.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Thu, May 16, 2019 at 05:02:16PM +0800, Bibby Hsieh wrote:
> Client hardware would send event to GCE hardware,
> mediatek,gce-event-names and mediatek,gce-events

We removed mediatek,gce-event-names?

> can be used to present the event.
> 
> Signed-off-by: Bibby Hsieh <bibby.hsieh@mediatek.com>
> ---
>  Documentation/devicetree/bindings/mailbox/mtk-gce.txt | 6 ++++--
>  1 file changed, 4 insertions(+), 2 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/mailbox/mtk-gce.txt b/Documentation/devicetree/bindings/mailbox/mtk-gce.txt
> index dceab63ccd06..265bb58da7bd 100644
> --- a/Documentation/devicetree/bindings/mailbox/mtk-gce.txt
> +++ b/Documentation/devicetree/bindings/mailbox/mtk-gce.txt
> @@ -35,6 +35,8 @@ Required properties for a client device:
>  Optional properties for a client device:
>  - mediatek,gce-client-reg: u32, specify the sub-system id which is corresponding
>    to the register address.
> +- mediatek,gce-events: u32, the event number defined in
> +  'dt-bindings/gce/mt8173-gce.h' or 'dt-binding/gce/mt8183-gce.h'.

This and the example don't match. Is it an u32 or an array of u32? If 
the latter, how many elements?

>  
>  Some vaules of properties are defined in 'dt-bindings/gce/mt8173-gce.h'
>  or 'dt-binding/gce/mt8183-gce.h'. Such as sub-system ids, thread priority, event ids.
> @@ -57,8 +59,8 @@ Example for a client device:
>  		compatible = "mediatek,mt8173-mmsys";
>  		mboxes = <&gce 0 CMDQ_THR_PRIO_LOWEST 1>,
>  			 <&gce 1 CMDQ_THR_PRIO_LOWEST 1>;
> -		mutex-event-eof = <CMDQ_EVENT_MUTEX0_STREAM_EOF
> -				CMDQ_EVENT_MUTEX1_STREAM_EOF>;
> +		mediatek,gce-events = <CMDQ_EVENT_MDP_RDMA0_SOF>,
> +				      <CMDQ_EVENT_MDP_RSZ0_SOF>;
>  		mediatek,gce-client-reg = <&gce SUBSYS_1400XXXX 0x3000 0x1000>,
>  					  <&gce SUBSYS_1401XXXX 0x2000 0x100>;
>  		...
> -- 
> 2.18.0
> 

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
