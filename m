Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C8F871F6C66
	for <lists+linux-mediatek@lfdr.de>; Thu, 11 Jun 2020 18:50:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jkUb5CRWGJiOhTuFZr/cbZpajmqv0c4E46PXnb25Oyo=; b=hn/zVi7HtB/deK
	DGmBkTUQEHEK5KJPfotaLn6eafAN+hhot7q7cZQmt7GGkKcxFL0H9azgsi61EYbveWEdJNaFyTwIG
	ZZdChDZug06OXADCRiosxl9XXLGdabcIDW8xzG/W3T/6hq+TCg96ZJMa9rHrl2355+a+aLuIYfqq5
	pm5Nlpe3SjsgkQbYhq8MJF0jeNR8hJFvLMGl5r1wBGut8H4IG5fId9PwBPWvQpOG47v0UxeUwxw+5
	rLAVpg699b2ucpmR67oUlO21HJEk/RTAdrPBA6HIeFEGnGigQeYvDN8RqbFu8++YErRkJ8TdwZz8n
	fGoZ1/3nYA5LJ/lIsZyQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjQPV-0000pF-3n; Thu, 11 Jun 2020 16:50:37 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjQPF-0000dW-1Z
 for linux-mediatek@lists.infradead.org; Thu, 11 Jun 2020 16:50:22 +0000
Received: by mail-wr1-x442.google.com with SMTP id r7so6924549wro.1
 for <linux-mediatek@lists.infradead.org>; Thu, 11 Jun 2020 09:50:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=6515e9EWm5jt/wBgz8o5nKQ9DvkrHHIupbzxxJRVBVw=;
 b=AcM0ENgyTIkG6prNtB2Wvpox2sVZ27dEKDUc422WU4R+XKKKmjv+AK8dJhbyjr5f0E
 Gqk2J2yjUjkwphycoKSuVZLv640rr5CniCwIDWJ9MBayJjfeZDpqDifwk7iSMLH0tjG3
 RT1Lg4t5OrAWguqWn/SzEdsA8mHG5KKaMJ2Ag=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=6515e9EWm5jt/wBgz8o5nKQ9DvkrHHIupbzxxJRVBVw=;
 b=asZyZ2TdKAiSbQ+TjUjs+gugIWKEqTbeO9dqwDkDJf6M6ISwRZesUqSxHNKE/cXSwr
 xUrGaMPVKF+3cIhwtbU4fSdfAOqMP9xkZ6ZqUK1W1/hUbXtKVPBslTdXXOlzY/XKPYVE
 F9mV+5XWNmmK6YhqJ/a+B0Vghockp+yBSSREPmk721mQPfe3hu+3KwwbRJHOS1wcP76x
 z/FxAPmyWyCLuAK1xk7Fxs4Le6027Zj6SPvXG36+UrterBIjXxjw5nzk9Q7S9oiDd3V7
 iVdEQWv5JdHSSwG+DWH9z/bKRJ+ia805gzi0y1mJuyewdC3bhRkT0qKSPAssv9260STs
 KLaA==
X-Gm-Message-State: AOAM530zMyDEcdZszJBY4hecAcbWyp44gpRI3DPenL3J/BeegRKNGbYA
 vYAhaIDlKbQUaqaZiqJbvnF00A==
X-Google-Smtp-Source: ABdhPJwsVmMDI0pm3cj4yymPaJuKLgVFy93RQHQ3urhSAFwhD7NTFT5tUA1Bg2Gwg0wQixixd9PrjQ==
X-Received: by 2002:a05:6000:18c:: with SMTP id
 p12mr11124576wrx.66.1591894219582; 
 Thu, 11 Jun 2020 09:50:19 -0700 (PDT)
Received: from chromium.org (205.215.190.35.bc.googleusercontent.com.
 [35.190.215.205])
 by smtp.gmail.com with ESMTPSA id d17sm6217221wrg.75.2020.06.11.09.50.18
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 11 Jun 2020 09:50:19 -0700 (PDT)
Date: Thu, 11 Jun 2020 16:50:17 +0000
From: Tomasz Figa <tfiga@chromium.org>
To: Xia Jiang <xia.jiang@mediatek.com>
Subject: Re: [PATCH RESEND v9 13/18] media: platform: Delete redundant code
 and add annotation for an enum
Message-ID: <20200611165017.GB8694@chromium.org>
References: <20200604090553.10861-1-xia.jiang@mediatek.com>
 <20200604090553.10861-15-xia.jiang@mediatek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200604090553.10861-15-xia.jiang@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200611_095021_083446_B9669906 
X-CRM114-Status: UNSURE (   7.85  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
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

On Thu, Jun 04, 2020 at 05:05:48PM +0800, Xia Jiang wrote:
> Delete unused member variables annotation.
> Delete unused variable definition.
> Delete redundant log print, because V4L2 debug logs already print it.
> Add annotation for enum mtk_jpeg_ctx_state.
> 
> Signed-off-by: Xia Jiang <xia.jiang@mediatek.com>
> ---
> v9: add annotation for enum mtk_jpeg_ctx_state
> ---
>  drivers/media/platform/mtk-jpeg/mtk_jpeg_core.c | 15 ++-------------
>  drivers/media/platform/mtk-jpeg/mtk_jpeg_core.h |  8 ++++++--
>  2 files changed, 8 insertions(+), 15 deletions(-)
> 

Reviewed-by: Tomasz Figa <tfiga@chromium.org>

Best regards,
Tomasz

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
