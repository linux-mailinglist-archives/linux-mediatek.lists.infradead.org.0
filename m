Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C1CE71E0D95
	for <lists+linux-mediatek@lfdr.de>; Mon, 25 May 2020 13:45:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=a1fP9HlnTbF0ppmXXTh75IIEFHSYqzju8qwQiyNtruM=; b=DCW1NsFyAwsJt7
	RewykTBdXnDXGe76O37hlwqVOXOJDSxN/exD7zqhwFUErp8NzHz3v6dWBNXu562GhyL4ULJ9+vCjz
	NpG/Z7axChzZpN9CnLJN62SiZHLl53c5qVlJYPqeGt2RwJPGU2bFLB60EmO5ygWszgsiDZBs/Ia9P
	MrqQoZ/6w89aP3XG3a0R+2hibIuPoCtGhp7kPchYKManwtG9wgsSNmWAmv9uJ6dTfaHjXciD/kp6M
	U9x4lisNA1appo/yBT7gXdUILTY+e0CFq/060v6AL5FC4zEtUCaUBUMQnJkt5MnVo6/Gpp3sdPkmJ
	lkv19TuxnyUSaBJswzug==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdBXx-0004b3-VZ; Mon, 25 May 2020 11:45:33 +0000
Received: from mail-ej1-x62e.google.com ([2a00:1450:4864:20::62e])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdBXo-0004RK-U7
 for linux-mediatek@lists.infradead.org; Mon, 25 May 2020 11:45:28 +0000
Received: by mail-ej1-x62e.google.com with SMTP id s21so20219505ejd.2
 for <linux-mediatek@lists.infradead.org>; Mon, 25 May 2020 04:45:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=P/cWAJl3Z7M7phJWdZ1viutRbSoAqLOTBAKufEZLlQs=;
 b=J7zkISA9IACBaVZfIy7JcdxpE2ftuH3PzvgPxwCPTVvWLm94b33+EPTzq46DDaYm2H
 tCRXLAp5upCjONBGcvqexKg7AU8Ka8ylT2X4YZPrLOUyQsXkiPls4zRxhVigqskhJ8Qc
 R2JRs8LOj+hBFPv1FWpfNKziFvgfyUK87dOXA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=P/cWAJl3Z7M7phJWdZ1viutRbSoAqLOTBAKufEZLlQs=;
 b=epEc7wG6IMw1aTUg2n254i0xB88XN8b+pnAw3aLkB6nJBGy61kSLKiaZmH2jJuIAX5
 gDkqHSWxxsqJBOdcyVOwoaB7vxWs/ohshuO06tz3/CoSNezX7hX/rbBwh2fmKeVHiWeu
 BYj2Sey97RL92/3N3K+FoLrYgTf2BT3iLSsU+RfTDb7bZ0UdDGIFodLeO8WHN4+l/ffo
 KrmgmEhCrGHoZegSJcsedjMt0B7DeWmBuPT7qZ+hGwGFTtiW47Gnuw60J1/sjIpVm8AQ
 2e/hFG86xpFrQNANqFnifaxAZ9w67VeEgImAWAjmrqiGKqpoUyX8Y5NdiDA2ri+hTOmu
 HN2w==
X-Gm-Message-State: AOAM532aKX3ymYFpCfS18g6vpYMP1ZTjLLQDzNiZkWp6LWHmu07s62uZ
 HuNjjeuxlDgGwxCQ8rpKhG/tnZbhYTep5w==
X-Google-Smtp-Source: ABdhPJxhrIg8EAz4Mw5aZDR559knXHqgbWg15Oi/WYjKM3ntzGUU5LgzLPKzUW2E+cddf7KokHqXHg==
X-Received: by 2002:a17:906:41a:: with SMTP id
 d26mr19273968eja.217.1590407121690; 
 Mon, 25 May 2020 04:45:21 -0700 (PDT)
Received: from mail-wr1-f47.google.com (mail-wr1-f47.google.com.
 [209.85.221.47])
 by smtp.gmail.com with ESMTPSA id dm23sm15147882edb.0.2020.05.25.04.45.20
 for <linux-mediatek@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 25 May 2020 04:45:21 -0700 (PDT)
Received: by mail-wr1-f47.google.com with SMTP id x14so11438053wrp.2
 for <linux-mediatek@lists.infradead.org>; Mon, 25 May 2020 04:45:20 -0700 (PDT)
X-Received: by 2002:adf:e543:: with SMTP id z3mr14316481wrm.385.1590407120295; 
 Mon, 25 May 2020 04:45:20 -0700 (PDT)
MIME-Version: 1.0
References: <20200518132731.20855-1-dongchun.zhu@mediatek.com>
 <20200518132731.20855-3-dongchun.zhu@mediatek.com>
 <20200521195113.GC14214@chromium.org>
 <1590139561.8804.390.camel@mhfsdcap03>
In-Reply-To: <1590139561.8804.390.camel@mhfsdcap03>
From: Tomasz Figa <tfiga@chromium.org>
Date: Mon, 25 May 2020 13:45:07 +0200
X-Gmail-Original-Message-ID: <CAAFQd5CCsT_oM9aij_imV+NABzByi94RmCj97Dx0Tk3S0WDsTg@mail.gmail.com>
Message-ID: <CAAFQd5CCsT_oM9aij_imV+NABzByi94RmCj97Dx0Tk3S0WDsTg@mail.gmail.com>
Subject: Re: [V6, 2/2] media: i2c: dw9768: Add DW9768 VCM driver
To: Dongchun Zhu <dongchun.zhu@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200525_044525_223116_0A660E09 
X-CRM114-Status: GOOD (  14.41  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:62e listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Nicolas Boichat <drinkcat@chromium.org>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 srv_heupstream <srv_heupstream@mediatek.com>,
 linux-devicetree <devicetree@vger.kernel.org>,
 Linus Walleij <linus.walleij@linaro.org>,
 =?UTF-8?B?U2hlbmduYW4gV2FuZyAo546L5Zyj55S3KQ==?= <shengnan.wang@mediatek.com>,
 Louis Kuo <louis.kuo@mediatek.com>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Sj Huang <sj.huang@mediatek.com>, Rob Herring <robh+dt@kernel.org>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Matthias Brugger <matthias.bgg@gmail.com>, Cao Bing Bu <bingbu.cao@intel.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 "list@263.net:IOMMU DRIVERS <iommu@lists.linux-foundation.org>,
 Joerg Roedel <joro@8bytes.org>, " <linux-arm-kernel@lists.infradead.org>,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Fri, May 22, 2020 at 11:27 AM Dongchun Zhu <dongchun.zhu@mediatek.com> wrote:
>
> Hi Tomasz,
>
> Thanks for the review. My replies are as below.
>
> On Thu, 2020-05-21 at 19:51 +0000, Tomasz Figa wrote:
> > Hi Dongchun, Sakari,
> >
> > On Mon, May 18, 2020 at 09:27:31PM +0800, Dongchun Zhu wrote:
[snip]
> > > +   pm_runtime_enable(dev);
> > > +   if (!pm_runtime_enabled(dev)) {
> > > +           ret = dw9768_runtime_resume(dev);
> > > +           if (ret < 0) {
> > > +                   dev_err(dev, "failed to power on: %d\n", ret);
> > > +                   goto entity_cleanup;
> > > +           }
> > > +   }
> > > +
> > > +   ret = v4l2_async_register_subdev(&dw9768->sd);
> > > +   if (ret < 0)
> > > +           goto entity_cleanup;
> > > +
> > > +   return 0;
> > > +
> > > +entity_cleanup:
> >
> > Need to power off if the code above powered on.
> >
>
> Thanks for the reminder.
> If there is something wrong with runtime PM, actuator is to be powered
> on via dw9768_runtime_resume() API.
> When actuator sub-device is powered on completely and async registered
> successfully, we shall power off it afterwards.
>

The code above calls dw9768_runtime_resume() if
!pm_runtime_enabled(dev), but the clean-up code below the
entity_cleanup label doesn't have the corresponding
dw9768_runtime_suspend() call.

Best regards,
Tomasz

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
