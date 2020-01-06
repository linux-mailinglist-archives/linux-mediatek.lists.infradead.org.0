Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D9C9131AD7
	for <lists+linux-mediatek@lfdr.de>; Mon,  6 Jan 2020 22:57:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5HbKKQgOuwpzydZe2Hb9h0NPo1Zm+OO3lVxD8yXnH58=; b=QVH36SmiSguLYK
	QpqxRq3gqzXFmR4HMnJqzKNG88nYqPZEm9EQNHbwpilmDAidrnZkUPSIlWZdA3ZCa4QbIc4SeMN1p
	ytxC6+d2Yq4hqpAASK4BsZXg0nyAkT4RcDtWweFr0TjlhwbR+4y4REfRl0JCa+WJ/yrI3vhHLy3MD
	Cpg8t0mPQI3+OxP11hfnJ1VZHpR05xp4wEbdizYhUb6u74WP/h2Hr/H8UlxZbmih0pPz/axqDzOow
	8cQypCidPe3GUESRt9AZpaXwAEERJoXvHrKQBYh6ta8mbfZQRSLurj5s2w/+lR57/Yy3vvkGXzh14
	aM9TN3OgzmUYVvCTPyMw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ioaNl-0007ze-GX; Mon, 06 Jan 2020 21:57:53 +0000
Received: from mail-ot1-f65.google.com ([209.85.210.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ioaNJ-0007Z1-4L
 for linux-mediatek@lists.infradead.org; Mon, 06 Jan 2020 21:57:26 +0000
Received: by mail-ot1-f65.google.com with SMTP id w21so65780185otj.7
 for <linux-mediatek@lists.infradead.org>; Mon, 06 Jan 2020 13:57:24 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=TkT8eaIKGqV3wsrlyewlpi+P3L8o3guOiv9YMvMP6U8=;
 b=dselZLK8cfNvEpBBt8cXSrguWOGgNVNAj06jGKHt6XKBnvuy7ZyVpZYz0lZB02iWcK
 LSeWogqNAATcNkQfK2Z+LSe98lfUd8ik/ylDqluI1HEIft/4dkOKHHqyE9a2i0s8Q4x7
 EnSan2IlwH7lq2rDhWtwQIup7tNGLEalx6W0iyfP0AmTcrzjg8NLrL49w+22MMwSAymA
 ZqEeNOf+OXUY4DUXkhEayeg+Pi0XXJjf4NVcec3ShlVo1D0sNpBiX8+qQZBOM4X+zx/O
 SCOp7BcYSXklmXrvHwEAv6RkF/MUu3Yv+IBkTlQ/e7RYFUNc3LurbYIl+NrN2Oy+xFyX
 4SxQ==
X-Gm-Message-State: APjAAAWRZsseyZ39KJnIRvRYHgIcwurTpqDs57n6jjkpox2uTer35DxW
 BM7cZ3MXwHhbCk0RkePe5i6OGQU=
X-Google-Smtp-Source: APXvYqw2bH65KczcRKw6CaCWI59Yj8k7Byrnh+JsH9KB6uAes+kULdPVtrGFe5Uwu9UGh5geUbwEnQ==
X-Received: by 2002:a9d:4796:: with SMTP id b22mr43018227otf.353.1578347843445; 
 Mon, 06 Jan 2020 13:57:23 -0800 (PST)
Received: from rob-hp-laptop (ip-70-5-121-225.ftwttx.spcsdns.net.
 [70.5.121.225])
 by smtp.gmail.com with ESMTPSA id w201sm21822480oif.29.2020.01.06.13.57.22
 for <linux-mediatek@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 06 Jan 2020 13:57:22 -0800 (PST)
Received: from rob (uid 1000) (envelope-from rob@rob-hp-laptop) id 2219d8
 by rob-hp-laptop (DragonFly Mail Agent v0.11);
 Mon, 06 Jan 2020 15:57:21 -0600
Date: Mon, 6 Jan 2020 15:57:21 -0600
From: Rob Herring <robh@kernel.org>
To: Jiaxin Yu <jiaxin.yu@mediatek.com>
Subject: Re: [PATCH v10 1/2] dt-bindings: mediatek: mt8183: Add #reset-cells
Message-ID: <20200106215721.GB31059@bogus>
References: <1578280296-18946-1-git-send-email-jiaxin.yu@mediatek.com>
 <1578280296-18946-2-git-send-email-jiaxin.yu@mediatek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1578280296-18946-2-git-send-email-jiaxin.yu@mediatek.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200106_135725_209398_863FB6E0 
X-CRM114-Status: UNSURE (   9.83  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.65 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.65 listed in wl.mailspike.net]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: devicetree@vger.kernel.org, yong.liang@mediatek.com,
 freddy.hsin@mediatek.com, linux-watchdog@vger.kernel.org, sboyd@kernel.org,
 linux-kernel@vger.kernel.org, Jiaxin Yu <jiaxin.yu@mediatek.com>,
 linux-mediatek@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 p.zabel@pengutronix.de, yingjoe.chen@mediatek.com, matthias.bgg@gmail.com,
 chang-an.chen@mediatek.com, wim@linux-watchdog.org, linux@roeck-us.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Mon, 6 Jan 2020 11:11:35 +0800, Jiaxin Yu wrote:
> Add #reset-cells property and update example
> 
> Signed-off-by: yong.liang <yong.liang@mediatek.com>
> Signed-off-by: Jiaxin Yu <jiaxin.yu@mediatek.com>
> Reviewed-by: Yingjoe Chen <yingjoe.chen@mediatek.com>
> Reviewed-by: Philipp Zabel <p.zabel@pengutronix.de>
> ---
>  .../devicetree/bindings/watchdog/mtk-wdt.txt  | 10 ++++++---
>  .../reset-controller/mt2712-resets.h          | 22 +++++++++++++++++++
>  .../reset-controller/mt8183-resets.h          | 17 ++++++++++++++
>  3 files changed, 46 insertions(+), 3 deletions(-)
>  create mode 100644 include/dt-bindings/reset-controller/mt2712-resets.h
> 

Please add Acked-by/Reviewed-by tags when posting new versions. However,
there's no need to repost patches *only* to add the tags. The upstream
maintainer will do that for acks received on the version they apply.

If a tag was not added on purpose, please state why and what changed.

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
