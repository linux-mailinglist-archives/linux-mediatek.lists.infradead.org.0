Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A143916EC28
	for <lists+linux-mediatek@lfdr.de>; Tue, 25 Feb 2020 18:11:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oIves7x1GHpYONgiFvb4uXhcDIwZoEGnchjycv3G88o=; b=TshXXpYHMO53B1
	8Lt09O7+BvXaFjxgRklSS8ep54bStjuth58AGg323F+rXrGURsRprvf7+R/votNoNY8yHTxUWjm41
	C946R4b/LbH6WjhSZlrJqgEm9dRyw4KMqU8GQIobjd+HvAauPrdZRm3ct4D439u6Q4Ghepg+4bztG
	97b8qsA+SKflkpyFMg6K4uMMAjSo4E1tPyp0McCTGhJVyehuSM8+u9QQHXfThlh3rxP6/MOoO2DQd
	UrsYIp3n6dx3vU8hAWLt3SPjtzmi3BSMwg5tBoBL0rRM8mwMx6HPlz68yRBBRapJw3XUOpVWMfml0
	f3CpyEeGiDUTGA/rPVhQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6djX-0006NI-Tx; Tue, 25 Feb 2020 17:10:59 +0000
Received: from mail-oi1-f195.google.com ([209.85.167.195])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6djV-0006Mq-Bw; Tue, 25 Feb 2020 17:10:58 +0000
Received: by mail-oi1-f195.google.com with SMTP id q84so44111oic.4;
 Tue, 25 Feb 2020 09:10:55 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=WxYxKuDCjw2ta/VcYxfG6H2pyMpZknzieLnpy09W8ak=;
 b=InEs9+kEfvylaD8+fntT1/FzNUDbP3nDkVK2EcU03nOu9Vz9fFx1eR7Oas0MueyUB6
 QMtpx18uP8CTjN8u15o6Npu83+gy9J+7xx9BKtGmEvgMYvl0glBlngAAJc5Ap18wIDz/
 mWhvSCRfc8m5EIG+0Iq+DCAqRD2Eqioiycvy93rmp9JEfeuV2MARX1Dzwo5IS3QcPWpe
 W5ENERersUfWEjCj1blQxO0Xsy3qcNkQsucnFLL1irlwValYN0qT5iIzFVfNriSr69ER
 05RTjGFnr3jvGaS+NtXCC9OBEyLL1tEFcy5cP/G8W1Enxyu343uLQEygrkjVldmU9aNI
 C/Cg==
X-Gm-Message-State: APjAAAURp4FkW+0GrkgoJ8vvuaJPe7H2zqPEBcDTFzfWGoi5YCgtCn0Y
 hhc5/cFvXS+fcz06aDRETg==
X-Google-Smtp-Source: APXvYqyNZeSueBjr4b/f5cuT3NJLbY2PjOkM3NiotToiEr0JE4LRnFFXTwEwBP5qHj5CvNRnu0FATA==
X-Received: by 2002:aca:c401:: with SMTP id u1mr9332oif.62.1582650654724;
 Tue, 25 Feb 2020 09:10:54 -0800 (PST)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id m18sm5830700otf.6.2020.02.25.09.10.53
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 25 Feb 2020 09:10:53 -0800 (PST)
Received: (nullmailer pid 6373 invoked by uid 1000);
 Tue, 25 Feb 2020 17:10:52 -0000
Date: Tue, 25 Feb 2020 11:10:52 -0600
From: Rob Herring <robh@kernel.org>
To: Jitao Shi <jitao.shi@mediatek.com>
Subject: Re: [PATCH v8 2/7] dt-bindings: display: mediatek: update dpi
 supported chips
Message-ID: <20200225171052.GA6002@bogus>
References: <20200225094057.120144-1-jitao.shi@mediatek.com>
 <20200225094057.120144-3-jitao.shi@mediatek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200225094057.120144-3-jitao.shi@mediatek.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200225_091057_408530_2DA7AAD3 
X-CRM114-Status: GOOD (  10.25  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.195 listed in list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.195 listed in wl.mailspike.net]
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Jitao Shi <jitao.shi@mediatek.com>, bibby.hsieh@mediatek.com,
 srv_heupstream@mediatek.com, David Airlie <airlied@linux.ie>,
 huijuan.xie@mediatek.com, stonea168@163.com, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, cawa.cheng@mediatek.com, ck.hu@mediatek.com,
 linux-mediatek@lists.infradead.org, Daniel Vetter <daniel@ffwll.ch>,
 Matthias Brugger <matthias.bgg@gmail.com>, yingjoe.chen@mediatek.com,
 eddie.huang@mediatek.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Tue, 25 Feb 2020 17:40:52 +0800, Jitao Shi wrote:
> Add descriptions about supported chips, including MT2701 & MT8173 &
> mt8183
> 
> Signed-off-by: Jitao Shi <jitao.shi@mediatek.com>
> ---
>  .../devicetree/bindings/display/mediatek/mediatek,dpi.txt        | 1 +
>  1 file changed, 1 insertion(+)
> 

Please add Acked-by/Reviewed-by tags when posting new versions. However,
there's no need to repost patches *only* to add the tags. The upstream
maintainer will do that for acks received on the version they apply.

If a tag was not added on purpose, please state why and what changed.

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
