Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 776701900CF
	for <lists+linux-mediatek@lfdr.de>; Mon, 23 Mar 2020 23:01:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gS6PSUpW+7DkOEtRmi1cdjhVXpqIz3fdWB09qHyVKCo=; b=gO0SgScgsqSQud
	CNB+Rc0rUlgn100LYczS06EnmqMpKfz6mMICypOdUTQpI++4/1VnkvubxT9LfyrolKZ+KEICmtDSJ
	S4bYluGDgNRFq6SkW+tmYFB6LsB6oZ8fJJokeYMDyCCCBG/cHA9iEyexW+Hoi39UkZ9hBYbl/IUV2
	/oBfaxIpOm6fRdPEHtjdUSRpWFkNRdak7QG6wJ7amZ31ZqiSeGqIXqfEckZjjMNECPB2Lo0Zn2qJ6
	aGTP75UxhD7aGtBfk9Ni/JY3iXK0As9U21q33k4Yj/gvo8bSCecnr/7KMcyQXAu+Frn6v989+mmD0
	o2e6qNaTtUoduDWKNDLQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGV8K-0007bc-36; Mon, 23 Mar 2020 22:01:20 +0000
Received: from mail-io1-f68.google.com ([209.85.166.68])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGV8F-0007az-HS; Mon, 23 Mar 2020 22:01:16 +0000
Received: by mail-io1-f68.google.com with SMTP id e20so15671780ios.12;
 Mon, 23 Mar 2020 15:01:15 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=moatfj5jRXvxhlq8xo+ssOSqLVqKCjMat/spioxEHRQ=;
 b=UhrdpBqKtRGTBIlEdAOmI0ErzBZzL0ocXR5kAQh7KTwt/sYliqZcSS/teRcVUSvJhh
 ib0v1CFArg5X8x3bhc3DIWzTfhUM43Dd+Q69gai18ps9oe/QcgvOcHGP34NlBUdgzM7x
 nX+TrntFOslF/ZjHwmeiFuKW4gsmFO4LLNwKL7eSlUY1VnvbPrXBEH+dSbE/0RH576BP
 FLaoL8S8O4SmRYIcCdpDtwqvt++0XrawFSs3ir5SeGikJl4sl1yd/7zxTp8v/pZ5BcLR
 IicWSeH5e1U3s0UeWZM5oNZd9pvMjdZEAD+QcAcUVrODAdlflWJd+6ih2dv8wVSmmtmS
 2z7A==
X-Gm-Message-State: ANhLgQ26AJjAyIYmZCL3Nc/iQ7Ac0e1qo2XxAUhPpx3ZFWDhhmou7f0f
 XibY5DJDvJf9zaLWQdd28w==
X-Google-Smtp-Source: ADFU+vs3cAIQeBmF64VbdwUuHkyB7YPqQzyPHXQtO+XeMGCPFEMA01amQdtzhjE6hL2OYktO6iZcHA==
X-Received: by 2002:a5d:9f4f:: with SMTP id u15mr20642459iot.87.1585000874691; 
 Mon, 23 Mar 2020 15:01:14 -0700 (PDT)
Received: from rob-hp-laptop ([64.188.179.250])
 by smtp.gmail.com with ESMTPSA id p70sm5645056ilk.53.2020.03.23.15.01.13
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 23 Mar 2020 15:01:14 -0700 (PDT)
Received: (nullmailer pid 11664 invoked by uid 1000);
 Mon, 23 Mar 2020 22:01:12 -0000
Date: Mon, 23 Mar 2020 16:01:12 -0600
From: Rob Herring <robh@kernel.org>
To: Jitao Shi <jitao.shi@mediatek.com>
Subject: Re: [PATCH v3 2/4] dt-bindings: display: mediatek: get mipitx
 calibration data from nvmem
Message-ID: <20200323220112.GA11622@bogus>
References: <20200311074032.119481-1-jitao.shi@mediatek.com>
 <20200311074032.119481-3-jitao.shi@mediatek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200311074032.119481-3-jitao.shi@mediatek.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200323_150115_575967_E8A81FA5 
X-CRM114-Status: UNSURE (   7.87  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.68 listed in list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.68 listed in wl.mailspike.net]
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

On Wed, 11 Mar 2020 15:40:30 +0800, Jitao Shi wrote:
> Add properties to get get mipitx calibration data.
> 
> Signed-off-by: Jitao Shi <jitao.shi@mediatek.com>
> ---
>  .../devicetree/bindings/display/mediatek/mediatek,dsi.txt    | 5 +++++
>  1 file changed, 5 insertions(+)
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
