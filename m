Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 496C32FFEA
	for <lists+linux-mediatek@lfdr.de>; Thu, 30 May 2019 18:08:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=10nZQpdPB8z3DtjqoIikwbeuSEDgJ69NraHDqRWNp5g=; b=rx37kQBJZtDrTZ
	wCTqYAmF7JFU3ptDvtJCtV1QB8Lq5Hg2ENUfjJ9ZDN8DWKDWwx1taBCLh16qYXYDxCMxmtCuMsDuT
	MskSLzv4zbDgu3dZOwtVbdHIk2h76d56PFEdWUYsjVpiDoVGJlbgIKjBxXH1StzUSj/+QBRObEzgl
	ynY6n3oiYfX2WFRCZZX+4ESqr/REic2xWSk296kOyXu0OekptedlzDxzbKnw8mPb8tYzWYgSVTgBg
	DRjs3CEXIZYfbNahu5t8m1ZyjJWdQgVgK3cIy+5TbbtlsK6Ezy+q6S5DnHvKn46JtWBaZMo20oAUy
	mjRjjY9Tjxelm6A9ZLuA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWNbT-0006Do-8p; Thu, 30 May 2019 16:08:31 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWNbP-0006Cr-Am
 for linux-mediatek@lists.infradead.org; Thu, 30 May 2019 16:08:28 +0000
Received: by mail-pl1-x644.google.com with SMTP id go2so2736753plb.9
 for <linux-mediatek@lists.infradead.org>; Thu, 30 May 2019 09:08:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=CCzOFuBrRzsjGJT6QYZDplwoC8znNP+oEnCTc9pJCd8=;
 b=cVdkU0UsiubYEXpbBQbS7cvSuFjQe08Adw6e346iSTE5OsA/QADaLcgAVFLBakmg6z
 2Q2O38L63Bn80R60xkrnN8k4evgFKp+1SBFNsoKvL2F2vTQOA/WqzUnFi3fuWiBpjCnh
 bf2mpR9Tm+9Kh9qyWRGBinlrH9NFfRCKnnjE4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=CCzOFuBrRzsjGJT6QYZDplwoC8znNP+oEnCTc9pJCd8=;
 b=ua6uhvB3o4nxtin2N9vGcUi0Z8hoVF0eXFt8kEbCLheZtHk6j6x+07ILRB+41URR9W
 s1t9AR59mszHy3MnWkbjxbOnIfr9k2nNy5MB4O84u1xUL+DG2F7L+kvLa+pUpDh7BcIt
 +bv+uH9rHrpgrsxr6pSXd0dIyHr5UCvmgV+fuaEePLNW1g6iHFRHFcSKEUQ49yFWONu8
 ikf9u15bXxCe/LgyA57SBBmAS9YKTutB4vGU/veqKOfMmjMalp0RJ6aOkKxbx0GUESHP
 jWI8uKuVYJDxmMa5I0sVfzbTCo0nK5ZrkwlPlLFZ1QGPP3KN39fY6kxSwJC3LOkNDMEg
 38zw==
X-Gm-Message-State: APjAAAVPgrE0uHOQPqmM1tt2Dwokt+inMtEiBFmwerQQ11k+2ZJtX7yC
 MQhuf6hfpWEg76hvShffK0Uskw==
X-Google-Smtp-Source: APXvYqwTufU4ReY8GoGuWrjOS8pyLhEFpYHGf/dPgPB2mg1+d5otdc1js0QS6kCxqXlGXEcw9FpdAA==
X-Received: by 2002:a17:902:690b:: with SMTP id
 j11mr4416976plk.149.1559232506416; 
 Thu, 30 May 2019 09:08:26 -0700 (PDT)
Received: from localhost ([2620:15c:202:1:75a:3f6e:21d:9374])
 by smtp.gmail.com with ESMTPSA id a69sm4045967pfa.81.2019.05.30.09.08.25
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 30 May 2019 09:08:25 -0700 (PDT)
Date: Thu, 30 May 2019 09:08:25 -0700
From: Matthias Kaehlcke <mka@chromium.org>
To: Hsin-Yi Wang <hsinyi@chromium.org>
Subject: Re: [PATCH v2 1/8] arm64: dts: mt8183: add thermal zone node
Message-ID: <20190530160825.GM40515@google.com>
References: <1557494826-6044-1-git-send-email-michael.kao@mediatek.com>
 <1557494826-6044-2-git-send-email-michael.kao@mediatek.com>
 <CAJMQK-giJTeERnqjxoSMjF-JXxW9SPmeARWf3f9ZyRgBsYN5fg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAJMQK-giJTeERnqjxoSMjF-JXxW9SPmeARWf3f9ZyRgBsYN5fg@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190530_090827_398093_5715C427 
X-CRM114-Status: GOOD (  13.90  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-mediatek@lists.infradead.org
X-Mailman-Version: 2.1.21
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
 linux-pm@vger.kernel.org, Daniel Lezcano <daniel.lezcano@linaro.org>,
 lkml <linux-kernel@vger.kernel.org>, "michael.kao" <michael.kao@mediatek.com>,
 Eduardo Valentin <edubezval@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 linux-mediatek@lists.infradead.org, Matthias Brugger <matthias.bgg@gmail.com>,
 Zhang Rui <rui.zhang@intel.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Thu, May 30, 2019 at 02:27:28PM +0800, Hsin-Yi Wang wrote:
> On Fri, May 10, 2019 at 9:27 PM michael.kao <michael.kao@mediatek.com> wrote:
> 
> > +
> > +                       tzts1: tzts1 {
> > +                               polling-delay-passive = <0>;
> > +                               polling-delay = <0>;
> > +                               thermal-sensors = <&thermal 1>;
> > +                               sustainable-power = <0>;
> > +                               trips {};
> > +                               cooling-maps {};
> > +                       };
> > +
> Is 0 a valid initial sustainable-power setting? Since we'll still get
> warning[1] about this, though it might not be harmful.
> 
> If 0 is a valid setting, maybe we should consider showing the warning
> of not setting this property in [2]?
> 
> [1] https://elixir.bootlin.com/linux/latest/source/drivers/thermal/power_allocator.c#L570
> [2] https://elixir.bootlin.com/linux/latest/source/drivers/thermal/of-thermal.c#L1049

IIUC a value of 0 is pointless, the thermal framework will still use
an estimated value:

https://elixir.bootlin.com/linux/v5.1.5/source/drivers/thermal/power_allocator.c#L203

As commented on v1 (https://patchwork.kernel.org/patch/10926519/#22620905)
the value of the property may depend on the thermal characteristics of
the device, there is not one correct value per SoC/core. If it is
specified at SoC level device makers should be aware that they might
have to override it for 'optimal' behavior on their device.

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
