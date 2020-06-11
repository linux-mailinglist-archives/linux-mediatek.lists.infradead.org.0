Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 312C81F6751
	for <lists+linux-mediatek@lfdr.de>; Thu, 11 Jun 2020 13:59:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ti57gHJ8tXtUCW2hso37q/a1MiIVCuOwnOiunz9yo9E=; b=uTC5PCrUwyODqz
	kqoO/aSNGTotOgUfculU+cARUQD16iHVDJH1dDKVeDurjpxT5n5b4ZgAWd3bNtp/oRLtQxJhy8mgj
	3EWx5a0tR16c0iYtD7/rEVBaQHeofJgkxpypiDC7LSEWd7PRTMSgvbB3YStIwbA6Bcl8puDRhmd8W
	7vvejfRgoyqEjS1iejXFdsUXHTFCvYJI6EtBEOcTdeSRqlNZzqG25S3P8/mHwFkBrYoFvbIrB/MaM
	PrWEixHnW5fp3lNhwuJdydW9GgduhGLJntOWwAXDgvm5M0Pclml1ux4NgNFUWLSaNjULmXP53hfwO
	xs1y2vwTz9NGFK/bRcHg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjLrM-0007r5-Dl; Thu, 11 Jun 2020 11:59:04 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjLr7-0007fw-06
 for linux-mediatek@lists.infradead.org; Thu, 11 Jun 2020 11:58:50 +0000
Received: by mail-wm1-x344.google.com with SMTP id l17so4742457wmj.0
 for <linux-mediatek@lists.infradead.org>; Thu, 11 Jun 2020 04:58:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=0sNtpOa/PhRGjuV1OKVRTYfWbvM8AAbQMK//m/+CB8Y=;
 b=aQl8hp7A/JrN44Foty0jhdQAQ6zaHhp4Ec9iQuIy+6hb35sfhd5Dvo9niTT1K9Fl6p
 a/mZjwflMmDp0dgwfFRSgPDbxYlAZPatZ503QI9Sp7YvqFpsu5rzm0yoePu4yaUrjpeG
 Luy+nejClJAIU6AXcKGO2QAjU9OpjnKXHlzqE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=0sNtpOa/PhRGjuV1OKVRTYfWbvM8AAbQMK//m/+CB8Y=;
 b=uIx6dED2fIBwGvkhfKUKzARAz0KG/cFWTIgNfP1Rp23fwD2v1nq8SSN3MxDcB33W5B
 DbygGPTCmr/jP8ie42QNi/I/p+k5Y0tyYBC3213TlvGXam3eCbLq3nqAD5LV2+M8dCVC
 yNSogN6BG0RVUYfEIXozd+uZxgTM0oO3W6OnTMwbQ/xIbjAyXlkqV6iIL7rv/B3YLcMz
 S6GM2TfNwwrNAh4lq69x4IoVeiMcv4EZJO1xNPdiDuYlmB6oMDitJ8gnBWKT04chEsr/
 jHU455DNjFHF/2nY6yLK0JnWFxOaZTRijCZ4zU838G0JwN6VpD20iAr5UGnYskRsoRru
 A75w==
X-Gm-Message-State: AOAM533yqV44ge1O0ii8wEpTWXbQFKPhGXcKWxr3EmD1VL0mIpff49WA
 +N5FPrDxqgU1GgzlJZNQvEIZ/Q==
X-Google-Smtp-Source: ABdhPJxxNGG1UkzGbKGGCaHnsiTH3T0JzEHtu2+2GE7i0eEz7ONUOHuoIWjLjOOtSxat5/GTwMPb8A==
X-Received: by 2002:a1c:bc0a:: with SMTP id m10mr7673668wmf.173.1591876722467; 
 Thu, 11 Jun 2020 04:58:42 -0700 (PDT)
Received: from chromium.org (205.215.190.35.bc.googleusercontent.com.
 [35.190.215.205])
 by smtp.gmail.com with ESMTPSA id b14sm3768382wmj.47.2020.06.11.04.58.41
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 11 Jun 2020 04:58:41 -0700 (PDT)
Date: Thu, 11 Jun 2020 11:58:40 +0000
From: Tomasz Figa <tfiga@chromium.org>
To: Xia Jiang <xia.jiang@mediatek.com>
Subject: Re: [PATCH RESEND v9 04/18] media: platform: Change the fixed device
 node number to unfixed value
Message-ID: <20200611115840.GA135826@chromium.org>
References: <20200604090553.10861-1-xia.jiang@mediatek.com>
 <20200604090553.10861-6-xia.jiang@mediatek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200604090553.10861-6-xia.jiang@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200611_045849_056753_C814E057 
X-CRM114-Status: GOOD (  10.82  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: drinkcat@chromium.org, devicetree@vger.kernel.org, mojahsu@chromium.org,
 srv_heupstream@mediatek.com, Rick Chang <rick.chang@mediatek.com>,
 senozhatsky@chromium.org, linux-kernel@vger.kernel.org,
 maoguang.meng@mediatek.com, Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 sj.huang@mediatek.com, Rob Herring <robh+dt@kernel.org>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Hans Verkuil <hverkuil-cisco@xs4all.nl>, linux-mediatek@lists.infradead.org,
 Marek Szyprowski <m.szyprowski@samsung.com>,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Hi Xia,

On Thu, Jun 04, 2020 at 05:05:39PM +0800, Xia Jiang wrote:
> The driver can be instantiated multiple times, e.g. for a decoder and
> an encoder. Moreover, other drivers could coexist on the same system.
> This makes the static video node number assignment pointless, so switch
> to automatic assignment instead.
> 
> Signed-off-by: Xia Jiang <xia.jiang@mediatek.com>
> ---
> v9: change the commit message
> ---
>  drivers/media/platform/mtk-jpeg/mtk_jpeg_core.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 

Reviewed-by: Tomasz Figa <tfiga@chromium.org>

Best regards,
Tomasz

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
