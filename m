Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 763EE92208
	for <lists+linux-mediatek@lfdr.de>; Mon, 19 Aug 2019 13:18:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=H15xreYgw+wwmRUaa2JJdFx3BAjxHMbtdNHBan2joL8=; b=IOhT3A1EdN38H7
	l0SWfgadUI7zeTGAEgvMKDZD5D/0pvu0+VZ3k+WDjENQnYsRAjNhY2f0Vx5UHYc2a/pTgBaGFeIo9
	idXXVZuGbVxWhhAUdkIE4mVedk2WS51rrJ0lK5993/ce3tKMaJVXWdHmszZlOlNnPkVbSPgQpnsgo
	GC/PD4iNDFvVQmpc0oJNuI7L2ZZy7t7FzUrJWonqKj7x9ObePx7CEYEY4QXoYhQaqAvjSz39Uvpa3
	uEiYiilbhEcoLz8pH/eO/f8YWgVByu6B2znKyYkqUI166uoR7wb9ZGQZBYLVPrjX1Kcbqhr6qTPCV
	B+JzVsmBMohTitdK3yWg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzfga-00032e-6g; Mon, 19 Aug 2019 11:18:52 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hzfgO-0002uQ-Ht
 for linux-mediatek@lists.infradead.org; Mon, 19 Aug 2019 11:18:42 +0000
Received: by mail-pl1-x644.google.com with SMTP id 4so819257pld.10
 for <linux-mediatek@lists.infradead.org>; Mon, 19 Aug 2019 04:18:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=+0JHVJ6vLP57lu0mVcK3az5uoceXnYkV/uG2YnQJlFc=;
 b=yHvLt0Lqcb9O8pCS28X3oB0TkDb1X6NWvoLOSLok1pdmLUebRybtLcc/QVJYMDiGdI
 X1a9kvGLCqr3QU6LlKSeWFJPDuJM9aqVFndIz+MGlkMvOi0+AEc8DdZ8AE/RfZkEWKqL
 RF8Z2wgL2Y7XyOXj4P1FSMOcjOv2ELEW/kleU2VQGLqXj4dsVDB/M2TzyEcPsASqvjcW
 Sl/VjLG36MbKp+HKiLkfFnsXeK7GOUDvrbr4qSkOk6MaXf1XyG0CKC018GUyItmlUPlB
 BmHDfdzGU2Hx1N9xGdUzeCVP7hBkUfM2FZdoS7VY+JS/an1HGuQMPVAMfwC3vQ6jInDz
 SvrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=+0JHVJ6vLP57lu0mVcK3az5uoceXnYkV/uG2YnQJlFc=;
 b=B2+tCM+ZGt2Vxnp4uMTbQEOrzdHJSIAGJLz/lRPMp6nUy0RHPyVt8yabXcz13Q1Xo0
 4PlXOGD2927SSEpe0SYRX2NFbA4XwX4getZbwICUGdj0NljTD9VnOQsFyv883YL+bog+
 DKfyZyRL6Nk4aiT8IYTBW0ioHVfWtRwV3p4AaZCTUDiE7pXJ8SWEbNtWXr9pSj57gwjw
 8eKQNkMLEMCBtd1KLPkVPTZb8C4KtFeFEguoueUzDbt4NbKQ74SocZlptKvRlKy/Y51V
 5p6uTdEPmCR0StPpaCuxdt5IJdQYac027AJqrWYjoF8T3vfasuLzPBG3ZjQSbwbho2vO
 wbVw==
X-Gm-Message-State: APjAAAXrxL8KI2TzTTmCb1y3P0J7DpfYF2RjQ16OW2DKJejlzfu3IGfm
 4pGBi4h9Z+D8f9IHDV53tUoP+Q==
X-Google-Smtp-Source: APXvYqyeim3wFsyNXQj/i/RDQRhJjEOMjrjuOoydnB1fIrDDwTjwzY2Z5AOdrzw4HJlIotmEz1cy5g==
X-Received: by 2002:a17:902:f204:: with SMTP id
 gn4mr22280443plb.3.1566213519598; 
 Mon, 19 Aug 2019 04:18:39 -0700 (PDT)
Received: from localhost ([122.172.76.219])
 by smtp.gmail.com with ESMTPSA id k3sm26078163pfg.23.2019.08.19.04.18.38
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 19 Aug 2019 04:18:38 -0700 (PDT)
Date: Mon, 19 Aug 2019 16:48:36 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: "Andrew-sh.Cheng" <andrew-sh.cheng@mediatek.com>
Subject: Re: [v4, 6/8] PM / OPP: Support adjusting OPP voltages at runtime
Message-ID: <20190819111836.5cu245xre6ky6xav@vireshk-i7>
References: <1565703113-31479-1-git-send-email-andrew-sh.cheng@mediatek.com>
 <1565703113-31479-7-git-send-email-andrew-sh.cheng@mediatek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1565703113-31479-7-git-send-email-andrew-sh.cheng@mediatek.com>
User-Agent: NeoMutt/20180716-391-311a52
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190819_041840_624607_0E1FD998 
X-CRM114-Status: GOOD (  21.73  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>, Nishanth Menon <nm@ti.com>,
 srv_heupstream@mediatek.com, linux-pm@vger.kernel.org,
 Stephen Boyd <sboyd@kernel.org>, Stephen Boyd <sboyd@codeaurora.org>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, Chanwoo Choi <cw00.choi@samsung.com>,
 Kyungmin Park <kyungmin.park@samsung.com>,
 MyungJoo Ham <myungjoo.ham@samsung.com>, linux-mediatek@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>, fan.chen@mediatek.com,
 devicetree@vger.kernel.org, Roger Lu <roger.lu@mediatek.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On 13-08-19, 21:31, Andrew-sh.Cheng wrote:
> From: Stephen Boyd <sboyd@codeaurora.org>
> 
> On some SoCs the Adaptive Voltage Scaling (AVS) technique is
> employed to optimize the operating voltage of a device. At a
> given frequency, the hardware monitors dynamic factors and either
> makes a suggestion for how much to adjust a voltage for the
> current frequency, or it automatically adjusts the voltage
> without software intervention. Add an API to the OPP library for
> the former case, so that AVS type devices can update the voltages
> for an OPP when the hardware determines the voltage should
> change. The assumption is that drivers like CPUfreq or devfreq
> will register for the OPP notifiers and adjust the voltage
> according to suggestions that AVS makes.
> 
> This patch is devired from [1] submitted by Stephen.
> [1] https://lore.kernel.org/patchwork/patch/599279/
> 
> Signed-off-by: Stephen Boyd <sboyd@codeaurora.org>
> Signed-off-by: Roger Lu <roger.lu@mediatek.com>
> ---
>  drivers/opp/core.c     | 63 ++++++++++++++++++++++++++++++++++++++++++++++++++
>  include/linux/pm_opp.h | 11 +++++++++
>  2 files changed, 74 insertions(+)
> 
> diff --git a/drivers/opp/core.c b/drivers/opp/core.c
> index c094d5d20fd7..407a07f29b12 100644
> --- a/drivers/opp/core.c
> +++ b/drivers/opp/core.c
> @@ -2054,6 +2054,69 @@ static int _opp_set_availability(struct device *dev, unsigned long freq,
>  }
>  
>  /**
> + * dev_pm_opp_adjust_voltage() - helper to change the voltage of an OPP
> + * @dev:		device for which we do this operation
> + * @freq:		OPP frequency to adjust voltage of
> + * @u_volt:		new OPP voltage
> + *
> + * Return: -EINVAL for bad pointers, -ENOMEM if no memory available for the
> + * copy operation, returns 0 if no modifcation was done OR modification was
> + * successful.
> + */
> +int dev_pm_opp_adjust_voltage(struct device *dev, unsigned long freq,
> +			      unsigned long u_volt)

Can you please update this to take a triplet instead ? That is what we are
storing in OPP core now a days.

-- 
viresh

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
