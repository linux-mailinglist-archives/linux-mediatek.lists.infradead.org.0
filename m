Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1DC541F69DF
	for <lists+linux-mediatek@lfdr.de>; Thu, 11 Jun 2020 16:26:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=S3wCTcsZ24pZcyVWeWMdH9ZLySmX3X+97770Le464QY=; b=mWgpVLI3FK1v0v
	4PuaUkv4oURZ8M65LPPFbehhHk95SKaZACcGDA50eKFZn1OZaJ8t7qGLyKRJxaWwmlZMXlXPUWtio
	TA1jv5qqncTTV+lONoXcdpHfsk0kMM/RvUxfDzZbCaFn8NXXTuF1A3cFMuFpDkdpQaikW8mggJygY
	o4BLk18ZxdIBt+SQrPYMRl0SVmo4SXkGFS0TUP9wjTSbhXCREuv1w85/pAAsiUrCNQgbBxFQBod/h
	h73zqAKuUKMLNeNb9+SMTcf6XIB8giWD/xvdFH8dwku/rCuhwvJGBL1RVpqNFhme/NvUJyKyGZizB
	KboRJtD9je/53iRsoeOw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjO9S-0005ZG-0c; Thu, 11 Jun 2020 14:25:54 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjO9O-0005YR-Fu
 for linux-mediatek@lists.infradead.org; Thu, 11 Jun 2020 14:25:52 +0000
Received: by mail-wm1-x342.google.com with SMTP id c71so5145335wmd.5
 for <linux-mediatek@lists.infradead.org>; Thu, 11 Jun 2020 07:25:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=4Wl9FPjQM/OmioKsKPEd8aDegLYWZmFx0p2ql/A57hk=;
 b=l28f8UvDUpME1nIHWAzTfBskecEhX50JaBZhgjJEeNEemNi2o5jq6jzfPAXaUlfCc0
 Tsgd8VVnkXoyX74/1DMaTTXjBT2cVYaVJLtAnFt53WEJI1amkTsQZ6pe40TWM7f+u8tf
 gAFiVIgbp/zn78MwZ11YBE5DZge2oKlRtDmMU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=4Wl9FPjQM/OmioKsKPEd8aDegLYWZmFx0p2ql/A57hk=;
 b=WfRCOs4Vc5opH8ylMEDZ+61YCqXLuhR5duilg0JguOvEv/iX2E4uAD08y5shJj2Q3C
 lmF8iwIdpqkT9gou9s0oCtpu0Ig7bmKppePJG4SBsAT1WpDVJOm2FBfMS5pHWMt+17JV
 OGQ72pqqFdjHH6bOhFJjdl1FRLUfI23dGx412qh/D/waNfmWUkmZ68tUWnJjTQP+Wu3H
 rZKuCKzgPWxbMC47Lfy65+TO8kPXLwW+VDT6oL8azllk2qRaBJk0V1QZKwow5ITr5Zx5
 47aTUFCA70DlIaslpc60f3YxFPqjOY5Cq93etnMnFU0JHEkykkSHuPJMtzwxj08gVHuh
 rAPg==
X-Gm-Message-State: AOAM533Aje1sina4OI+lXUM/56gkS4hoSYl7lshbVWJKXhNEwwmeIsrY
 PhyRMlfZMZeYAS/PvZWSkqBIzELT53Mh0g==
X-Google-Smtp-Source: ABdhPJwq/eOqXtITLK+kyOLCk4mNDfVsqXIZV2F3yV+6GfhTdR4AaBB6cuDCKN+FCMKfYALtIfLtaA==
X-Received: by 2002:a1c:1d16:: with SMTP id d22mr8733030wmd.174.1591885548499; 
 Thu, 11 Jun 2020 07:25:48 -0700 (PDT)
Received: from chromium.org (205.215.190.35.bc.googleusercontent.com.
 [35.190.215.205])
 by smtp.gmail.com with ESMTPSA id b14sm4310840wmj.47.2020.06.11.07.25.47
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 11 Jun 2020 07:25:47 -0700 (PDT)
Date: Thu, 11 Jun 2020 14:25:46 +0000
From: Tomasz Figa <tfiga@chromium.org>
To: Xia Jiang <xia.jiang@mediatek.com>
Subject: Re: [PATCH RESEND v9 08/18] media: platform: Cancel the last frame
 handling flow
Message-ID: <20200611142546.GB158633@chromium.org>
References: <20200604090553.10861-1-xia.jiang@mediatek.com>
 <20200604090553.10861-10-xia.jiang@mediatek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200604090553.10861-10-xia.jiang@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200611_072550_548586_0D4AE336 
X-CRM114-Status: UNSURE (   9.00  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
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

On Thu, Jun 04, 2020 at 05:05:43PM +0800, Xia Jiang wrote:
> There is no need to queue an empty buffer for signaling a last frame,
> because all frames are separate from each other in JPEG.
> 
> Signed-off-by: Xia Jiang <xia.jiang@mediatek.com>
> ---
> v9: new patch
> ---
>  .../media/platform/mtk-jpeg/mtk_jpeg_core.c   | 21 +------------------
>  1 file changed, 1 insertion(+), 20 deletions(-)
> 

Reviewed-by: Tomasz Figa <tfiga@chromium.org>

Best regards,
Tomasz

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
