Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C57BE1F4771
	for <lists+linux-mediatek@lfdr.de>; Tue,  9 Jun 2020 21:47:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1ERc8D+go8TQTyaSha8eiqAR8bmfX7LKOY5kiCsZPlw=; b=IznkuEQD5lKg3H
	mqTjSaaxaKcB00nhG1A1THA11hnoYg5IC4wqeS9S+RCytT7Zt2+0DzEWeMsohdyfswSghMpMnrM6P
	ObocRppF7c4tvEKZYzvesUmCqRE6lYkj6kgCOT2gxFNXoNCrddm9wUEBirJTjUT8AlMogoE/sfGAZ
	xH7Q95cTGwXVud7BKtSevThutlFSPuaJqNiycX30hcjKCh/ETOCEBJf2BjrbpUY6XvW/pfWCPQatK
	c4wVIVZ7rh+BYaRBnEUQNKIXBIhnuSZ0FlJBtVObkEWjdNGEVAF9mv5VWnPvkmbNqncTbZH8JbjV2
	/Dk6CGTZ/t24VPSAKKrA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jikDd-00067X-Rk; Tue, 09 Jun 2020 19:47:33 +0000
Received: from mail-io1-f41.google.com ([209.85.166.41])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jikDZ-000673-6j; Tue, 09 Jun 2020 19:47:32 +0000
Received: by mail-io1-f41.google.com with SMTP id c8so24199774iob.6;
 Tue, 09 Jun 2020 12:47:28 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=t2PNeHr7WtKmBGrRWwvSyK7EJXV23S5IbKum+4tSdLo=;
 b=m2Uh2hmNicGH4gm4U6W3GTJSPtbb4JDUcjlwjM3DfvFYhTmGyrGavLX93dDkNgczLB
 ScL/CMsLiKiyhRF/fdts555/e21NNrEksiBUHFwsitqpIBDAp4BmPAuPKlfjVAm5e6tQ
 qt0W6GmtibJcXg2H9Hb5fvlvsCssTSlox4bAgudLgA/nTPt39cDi5qe/nxPcrfuIgZBt
 aSHkYGkZApjf6EhaN8zxIcZ39qIVPnCR1yWOMvWTw3BeZc5NtDmMVgQHARlXr3weBr6i
 4SzmTDbj40onfIiCUOLCGxS/A7+N6ByFPEGVfYBcVfbxvhot9/pHoDcpptT+YWLCZv+l
 T2CA==
X-Gm-Message-State: AOAM5334octmmECduAQk8HD/A1mDU8FuztaqEp6XxAsKw7IwD5a3Jup8
 W7te4N+GysqNvIcuPa+Hsg==
X-Google-Smtp-Source: ABdhPJzkqw9rTuRFVSnJJV9dLPkyXizUcs8OWS/Em9DvF9b+2xxXcMXLSN3D0epKwKbP7NTIsu0k5g==
X-Received: by 2002:a02:9999:: with SMTP id a25mr27711545jal.129.1591732048022; 
 Tue, 09 Jun 2020 12:47:28 -0700 (PDT)
Received: from xps15 ([64.188.179.251])
 by smtp.gmail.com with ESMTPSA id t14sm9559645ilp.73.2020.06.09.12.47.26
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 09 Jun 2020 12:47:27 -0700 (PDT)
Received: (nullmailer pid 1335952 invoked by uid 1000);
 Tue, 09 Jun 2020 19:47:25 -0000
Date: Tue, 9 Jun 2020 13:47:25 -0600
From: Rob Herring <robh@kernel.org>
To: Dongchun Zhu <dongchun.zhu@mediatek.com>
Subject: Re: [V7, 1/2] media: dt-bindings: media: i2c: Document DW9768 bindings
Message-ID: <20200609194725.GA1335193@bogus>
References: <20200605105412.18813-1-dongchun.zhu@mediatek.com>
 <20200605105412.18813-2-dongchun.zhu@mediatek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200605105412.18813-2-dongchun.zhu@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200609_124731_376590_169EDC48 
X-CRM114-Status: UNSURE (   7.14  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.41 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.41 listed in wl.mailspike.net]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, drinkcat@chromium.org,
 srv_heupstream@mediatek.com, bgolaszewski@baylibre.com,
 linus.walleij@linaro.org, shengnan.wang@mediatek.com, tfiga@chromium.org,
 louis.kuo@mediatek.com, sj.huang@mediatek.com, robh+dt@kernel.org,
 linux-mediatek@lists.infradead.org, sakari.ailus@linux.intel.com,
 matthias.bgg@gmail.com, bingbu.cao@intel.com,
 andriy.shevchenko@linux.intel.com, mchehab@kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Fri, 05 Jun 2020 18:54:11 +0800, Dongchun Zhu wrote:
> Add DeviceTree binding documentation for Dongwoon Anatech DW9768 voice
> coil actuator.
> 
> Signed-off-by: Dongchun Zhu <dongchun.zhu@mediatek.com>
> ---
>  .../bindings/media/i2c/dongwoon,dw9768.yaml        | 100 +++++++++++++++++++++
>  MAINTAINERS                                        |   7 ++
>  2 files changed, 107 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/media/i2c/dongwoon,dw9768.yaml
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
