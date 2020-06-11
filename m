Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CFB441F69F4
	for <lists+linux-mediatek@lfdr.de>; Thu, 11 Jun 2020 16:28:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=i0fNtyHHWDqlAm8WU1uTPxOIyot8RoO57fstLwlD/44=; b=eAPyaSHISgyNiD
	sR97KePBMGhWmjlx+AGfg2iyI6sMLWJA0ceybpOpif19VUoWlyIj+4kVH1KR5y+GU+geiAmgEU/3b
	T5GKmJwbIJnjQtCiZkO67j5vaa0LASp79n3d1GIm+NSD4PkZuVBGNAjE+GE3rYqFYpgNgs/VfFimR
	WREjtDe7CVMr9pwRJcVSR33o0nwNrNE0AyIZPMwawJydAylcBLIS67gBBTYIG4nsLMJNFJZ/lbtbv
	gGFCtcyWgy8X/Xd2PLrteX98iPduRNcfW0SrEz63jkhql7wc8PJQeVXDkb3mBRZ/rdFwvlfc2Oi9O
	kRIdAvSdteMBQIqrfRaQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjOBr-0006gd-72; Thu, 11 Jun 2020 14:28:23 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjOBo-0006ft-95
 for linux-mediatek@lists.infradead.org; Thu, 11 Jun 2020 14:28:21 +0000
Received: by mail-wr1-x444.google.com with SMTP id r7so6417891wro.1
 for <linux-mediatek@lists.infradead.org>; Thu, 11 Jun 2020 07:28:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=+MwiHwTDigrZz/osHSq5jwVMysur4yPnyLBBwzskG3k=;
 b=hF9rAdqc/Vs5/6fKuks+MMwm5u0HPIk5I3T763FaYv8nJfRnzVmYS6TkZwBkpQEK58
 OabTcSTw/chyT3nEYjpMZQDEOQc+ToSeZ2/XR3JxMVn51VBleocqPt81rwrJnQrtsfTu
 fNHm+OBopt1RhC9Zm1Z4ugCbwiZh785kwWvlc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=+MwiHwTDigrZz/osHSq5jwVMysur4yPnyLBBwzskG3k=;
 b=cYK2JIQs/QSgJPxwaGTnDbyquC006Ink9U9+hQXkQRgTgvQ5R95PHnP1bPqj9bjxRB
 QSxf46uYS7uVrndameOj+18VDMXP9UJB3pq+s68EsEmurp7RZoxtzpqnsXSrOKjxR1Kz
 tnP/XKjK03YjreyeU6CSLrlBORk9VZeYSFyJLhRUyjVSkZbEEsmqLHqKeuhv7JiXietU
 sZzthKIBz1zN5zwU5iWxVVTAQ/iqgFkaMLByGxUCA4yPskPEGx4FyXbRVV1QKo1gd29l
 liurMay6a8KY0kOdLShSymEpuyO8JUpW7JPB/mstddEs16F/XzkfgHrHDKrzpjE5cRXX
 2VIQ==
X-Gm-Message-State: AOAM5312dQUlugZ+fxOgN4ySLEOV6x91mkFxIFt+v+EU42VlywJwz4r8
 c1Uo4em3xFr6i22ZmQ6CJnjyYw==
X-Google-Smtp-Source: ABdhPJzQ9+KT5Krp0KhPaomhJuRwTmw/IshQSBBRqrbY7XioECHFV8tO/RyEuLgOWZRGG4tI3GvR+g==
X-Received: by 2002:a5d:4d4d:: with SMTP id a13mr10081847wru.252.1591885698879; 
 Thu, 11 Jun 2020 07:28:18 -0700 (PDT)
Received: from chromium.org (205.215.190.35.bc.googleusercontent.com.
 [35.190.215.205])
 by smtp.gmail.com with ESMTPSA id w17sm5219529wra.71.2020.06.11.07.28.18
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 11 Jun 2020 07:28:18 -0700 (PDT)
Date: Thu, 11 Jun 2020 14:28:17 +0000
From: Tomasz Figa <tfiga@chromium.org>
To: Xia Jiang <xia.jiang@mediatek.com>
Subject: Re: [PATCH RESEND v9 10/18] media: platform: Stylistic changes for
 improving code quality
Message-ID: <20200611142817.GD158633@chromium.org>
References: <20200604090553.10861-1-xia.jiang@mediatek.com>
 <20200604090553.10861-12-xia.jiang@mediatek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200604090553.10861-12-xia.jiang@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200611_072820_316123_0A359AA1 
X-CRM114-Status: UNSURE (   8.39  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
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

On Thu, Jun 04, 2020 at 05:05:45PM +0800, Xia Jiang wrote:
> Change register offset hex numerals from uppercase to lowercase.
> Change data type of max/min width/height from integer to unsigned
> integer.
> 
> Signed-off-by: Xia Jiang <xia.jiang@mediatek.com>
> ---
> v9: move changing data type of max/min width/height to this patch
> ---
>  .../media/platform/mtk-jpeg/mtk_jpeg_core.h    |  8 ++++----
>  drivers/media/platform/mtk-jpeg/mtk_jpeg_reg.h | 18 +++++++++---------
>  2 files changed, 13 insertions(+), 13 deletions(-)
> 

Reviewed-by: Tomasz Figa <tfiga@chromium.org>

Best regards,
Tomasz

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
