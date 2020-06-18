Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 595BF1FFA95
	for <lists+linux-mediatek@lfdr.de>; Thu, 18 Jun 2020 19:52:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=73YMtlUttHsTm5RMprJxNJhbaPlkNauaa1mfiAmKais=; b=rwIr+0t5Jg8kWs
	Y8dT1dj1UdSM3RU7kcw12ZaPfUTFpzUeTJ5opR0zTkBEfJw4xNbKnsoTYGQ+KuJDktKqrZPBW7YW8
	YxuG//FPfoH/IufSxXCuqZ/us+ZmiIkhuID3Ve0ST0S1ab1baDg95UfTqhjJf4j2ThHwS4/gfkNSD
	an1CuNXy24CeivtZ7Wr1iPDnofSDURqyi3scZTJFwmheNrSYWx5kI26u/M0ESGCujX/nZg4M3frLf
	gA/oAtEPDbVEYDv65595ZkYujhhS3df1lZz3U+DSI40Ou0mF64KgKtYdbbPgRGd00SBzPbLvlCt9C
	7HlF3E7XZYWa3P9P25WA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlyi8-0007pt-Pb; Thu, 18 Jun 2020 17:52:24 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlyi5-0007pH-0I
 for linux-mediatek@lists.infradead.org; Thu, 18 Jun 2020 17:52:22 +0000
Received: by mail-wm1-x344.google.com with SMTP id g10so6006454wmh.4
 for <linux-mediatek@lists.infradead.org>; Thu, 18 Jun 2020 10:52:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=Lb6ruUo4th4gczpSuevPe5msRghKn9eEg7we4tRduH4=;
 b=eGgDOyjrGAgWo8+oJBjv2YRlI0KPsVR0vk3sX9sj5UkJB3QMBW4oB/V3LHRO5p+jkR
 AzFtvoivhxfC58Yswr8wRmbhgXOtENtAyrJUVC1EV5C0H+PasAaahOh0c7MU6DXy4eBw
 fuWwyC4exoBoszRiG/M/X4Hssfd9RctogKm2Y=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=Lb6ruUo4th4gczpSuevPe5msRghKn9eEg7we4tRduH4=;
 b=pTZ1GiN0aloigL3WUDOzO4fsA6q991nX+i8P4SUwVsXaL/hC7lQ6m0PNfrPwqpNjs4
 Mmy8ai67f/C9ol38ynCgAzQmak4jhBjd3QuUsB880cC1OYYcBWBaukNXzvZq0sk6VB70
 ut1Hi1TB8kbteme7hkIiLpWucIB+JFGIYbyNkSdvqcllZBePYQnjyLu1xFN61NDqIn5Z
 lYed9nR80cLRoYeK22Gow2wFNkUwEfjnOrTsF0vRx3zmomxOm7idqinIz2ruGI3pjLzq
 4xf1AZ7uEWm7Nb7ezyjVi8MldjUGOJc+8ost6TlzEeLUEtTVsR2TRVoIqAlZjAo8YRLK
 BLQg==
X-Gm-Message-State: AOAM533kwASOlbwdWCPM9zQc6geS1tPVUks+0Dd8eLh8FT0KQAGZCsni
 wx8EKY7dgBc39LBf+5Og/rw4ZQ==
X-Google-Smtp-Source: ABdhPJyN6ugEFVxfi2oUTpklkACeaBduQoso3/vz2+EfcawKtoU105dOecEZxHdsjW8oylGRMPEBSA==
X-Received: by 2002:a7b:c2a9:: with SMTP id c9mr5352893wmk.11.1592502739874;
 Thu, 18 Jun 2020 10:52:19 -0700 (PDT)
Received: from chromium.org (205.215.190.35.bc.googleusercontent.com.
 [35.190.215.205])
 by smtp.gmail.com with ESMTPSA id o1sm4589796wrw.20.2020.06.18.10.52.19
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 18 Jun 2020 10:52:19 -0700 (PDT)
Date: Thu, 18 Jun 2020 17:52:18 +0000
From: Tomasz Figa <tfiga@chromium.org>
To: Yunfei Dong <yunfei.dong@mediatek.com>
Subject: Re: [PATCH 1/2] media: v4l UAPI: add V4L2_BUF_CAP_SUPPORTS_RO_REQUESTS
Message-ID: <20200618175218.GB10831@chromium.org>
References: <20200617014928.4374-1-yunfei.dong@mediatek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200617014928.4374-1-yunfei.dong@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200618_105221_046507_DA43E7FB 
X-CRM114-Status: GOOD (  10.03  )
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Tiffany Lin <tiffany.lin@mediatek.com>, linux-kernel@vger.kernel.org,
 Hans Verkuil <hverkuil@xs4all.nl>, Rob Herring <robh+dt@kernel.org>,
 linux-mediatek@lists.infradead.org, Matthias Brugger <matthias.bgg@gmail.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Hi Yunfei,

On Wed, Jun 17, 2020 at 09:49:27AM +0800, Yunfei Dong wrote:
> This patch adds support for the V4L2_BUF_CAP_SUPPORTS_RO_REQUESTS
> flag. This flag is used for RO Request.

I think this patch series lacks two major things:
 - a cover letter explaining the feature and what it is needed/useful
   for,
 - a user - is there an upstream driver which would implement this
   feature and benefit from it?

Best regards,
Tomasz

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
