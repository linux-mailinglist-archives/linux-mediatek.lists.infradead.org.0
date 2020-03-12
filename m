Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EEBC1834DB
	for <lists+linux-mediatek@lfdr.de>; Thu, 12 Mar 2020 16:22:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=f3oM5sjYBl+4niMvhEKIMFEDzz21+aHbjgVfGdFf0GQ=; b=Urx6POHLG1n+x8
	Nsn3N05XXrN5DPmotBJR1/mmpsgmN0Q/l98iC7X2JnbSrAU87jD8hif4bgxeCIFFa59VfG2p9fKA4
	5+6kJjxXRPciEj6dDG9JiQIDcbe5+/M2B7niVl3a1MEq5fT1mZ27JAtdp5QkKRbxC2M3Drm0i1D9f
	g7oRucOTj+vzO0UibJ2l+v9k011tJL/Fkj0aCs0pIwzmECeZjVKMkYDABaLucNyuF9D0dT+vaykok
	XxtkfLgf426qZJa9sYW4ZbtP1BpZ1kSxTx3sdEHiohpySnNGQ78JW5PgYxcMuos3m6eYLp7a+bsNJ
	nz2UiaJf3Q+Rf3T6foHg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCPf0-0008RK-91; Thu, 12 Mar 2020 15:22:10 +0000
Received: from mail-oi1-f196.google.com ([209.85.167.196])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCPex-0008Qi-F5; Thu, 12 Mar 2020 15:22:08 +0000
Received: by mail-oi1-f196.google.com with SMTP id i1so5809938oie.8;
 Thu, 12 Mar 2020 08:22:06 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=a6WnhHW3Np3QbKKjKxFHHPr40yxHHv0stzGtOBzaVLc=;
 b=rIL2nnOmhWFE1kQBeeVYG+6xrnDm3CHOhHmKOH7Eg3OzU0CkAnNMx5TFKo6EmpeP/n
 f2DEOfTDAySNDHF91tqu4Khsu9FIdAFHTATLTrSTIaD736RMtPnLo4KFuw1cWS3M+bPZ
 0KM4XIrrpQa0ZzVR8uO0aGksxuFsUkcNLEz8ogE9+PETIJ4Ebi8mLODY+NQ1E69xVqqA
 gBYlWGYt3daTCzi7+c2VKMGvWhCp5kkUY1GOY25cN0yJyuHvm/5uXLAPbD2bsUY55i5/
 q9HRxETPjZJmaVtauHxS3dVlIfZqdAN0HRazFLDpbYf4SUpaHu1lz2iv/Wkl+yRomZdZ
 R0JQ==
X-Gm-Message-State: ANhLgQ0T+kDLMe7EUR//F71aXYSy3tLDCxu33mjeIZ596tn7JKm86qsq
 dlhLKgCa8gD6b6AaXArP2Q==
X-Google-Smtp-Source: ADFU+vsZYyNPazIaY4y6ozlG69lisQb63cqMqP+Ill41cx5dK6OIRcqAtvQNyW37X+H801eBMb1U7g==
X-Received: by 2002:a05:6808:b1c:: with SMTP id
 s28mr3046470oij.2.1584026526006; 
 Thu, 12 Mar 2020 08:22:06 -0700 (PDT)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id a22sm10865950oto.45.2020.03.12.08.22.03
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 12 Mar 2020 08:22:05 -0700 (PDT)
Received: (nullmailer pid 17075 invoked by uid 1000);
 Thu, 12 Mar 2020 15:22:03 -0000
Date: Thu, 12 Mar 2020 10:22:03 -0500
From: Rob Herring <robh@kernel.org>
To: Enric Balletbo i Serra <enric.balletbo@collabora.com>
Subject: Re: [PATCH v12 2/5] dt-bindings: mediatek: Update mmsys binding to
 reflect it is a system controller
Message-ID: <20200312152203.GA15635@bogus>
References: <20200311165322.1594233-1-enric.balletbo@collabora.com>
 <20200311165322.1594233-3-enric.balletbo@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200311165322.1594233-3-enric.balletbo@collabora.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200312_082207_506380_5D82AA92 
X-CRM114-Status: GOOD (  11.69  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.196 listed in list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.196 listed in wl.mailspike.net]
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
Cc: mark.rutland@arm.com, Kate Stewart <kstewart@linuxfoundation.org>,
 Minghsiu Tsai <minghsiu.tsai@mediatek.com>,
 Andrew-CT Chen <andrew-ct.chen@mediatek.com>, airlied@linux.ie,
 mturquette@baylibre.com, dri-devel@lists.freedesktop.org,
 Richard Fontana <rfontana@redhat.com>, laurent.pinchart@ideasonboard.com,
 ulrich.hecht+renesas@gmail.com, Collabora Kernel ML <kernel@collabora.com>,
 linux-clk@vger.kernel.org, Weiyi Lu <weiyi.lu@mediatek.com>, wens@csie.org,
 linux-arm-kernel@lists.infradead.org, ck.hu@mediatek.com,
 mtk01761 <wendell.lin@mediatek.com>, linux-media@vger.kernel.org,
 devicetree@vger.kernel.org, Daniel Vetter <daniel@ffwll.ch>,
 frank-w@public-files.de, Seiya Wang <seiya.wang@mediatek.com>,
 sean.wang@mediatek.com, Houlong Wei <houlong.wei@mediatek.com>,
 linux-mediatek@lists.infradead.org, hsinyi@chromium.org,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Thomas Gleixner <tglx@linutronix.de>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Allison Randal <allison@lohutok.net>, Matthias Brugger <mbrugger@suse.com>,
 sboyd@kernel.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 rdunlap@infradead.org, linux-kernel@vger.kernel.org, p.zabel@pengutronix.de,
 matthias.bgg@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Wed, Mar 11, 2020 at 05:53:19PM +0100, Enric Balletbo i Serra wrote:
> The mmsys system controller is not only a pure clock controller, so
> update the binding documentation to reflect that apart from providing
> clocks, it also provides routing and miscellaneous control registers.
> 
> Signed-off-by: Enric Balletbo i Serra <enric.balletbo@collabora.com>
> Reviewed-by: Matthias Brugger <matthias.bgg@gmail.com>
> Reviewed-by: CK Hu <ck.hu@mediatek.com>
> ---
> 
> Changes in v12: None
> Changes in v10:
> - Update the binding documentation for the mmsys system controller.
> 
> Changes in v9: None
> Changes in v8: None
> Changes in v7: None
> 
>  .../devicetree/bindings/arm/mediatek/mediatek,mmsys.txt    | 7 ++++---
>  1 file changed, 4 insertions(+), 3 deletions(-)

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
