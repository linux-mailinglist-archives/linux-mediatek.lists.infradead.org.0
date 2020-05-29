Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DC7E31E8376
	for <lists+linux-mediatek@lfdr.de>; Fri, 29 May 2020 18:18:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+W80aD/X2XU9nIJtW4oZzAHrWztbQOHM7u7h3cbU0Dg=; b=YDg76xhA0lnbjs
	8l6AMd1pmFlyEvEK4OqLzURDRx+Ieull1O476dlfAZCzEeAdbdzm6crJvD3O7wbJ6PhIXQJ63xW13
	gbTXrpe8lHjOp8GPJQgRT31r9GcHg5IUwmVOUjaxOSyT+h9F4joXVCVu51zRWFmhn3oY4dnJV6j5y
	/Ln47IVxb0eFtPc8i+HrJMVKGZ+D0k5Db34UJdnKFRVz6eaxsndchN98LeLZz3knDS+Dy9nTfK/7Z
	Qf66agVY+sYyJrND7ejF+0J2VVuknTmLJI22LhtLBJE5FtlwxXZ8U5DeHW0RYtLZ5PYutLztdfNPn
	F0jtv4gbE3KaCS8yKtuA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jehiM-00034a-Oe; Fri, 29 May 2020 16:18:34 +0000
Received: from mail-oi1-f193.google.com ([209.85.167.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jehi9-0002uR-9X; Fri, 29 May 2020 16:18:23 +0000
Received: by mail-oi1-f193.google.com with SMTP id i22so3022498oik.10;
 Fri, 29 May 2020 09:18:18 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=zCKRRe7FwZhejdctsJhwzQtwJFTHGD8RGi5WeD/f/w0=;
 b=GLoj03xShllVxj5ReAGXlW3+BbO0Ksuvqa7VgzWvWd9suW+DlYWqxt+73ylJjp/Lx5
 8XCB37d9cDVHzYTfsWl7Nv4WjLC7Z+1HBHHZ4On6T2/bCtF64vQMnLzgXKlb4ENb8QfE
 Dg3yyopbes0wfc5exncD0y6gPqdyCzEuuVrzzpFsvlzfJv3hJnGDddeQF+dzAl992q6Y
 9ay5x3ZKiVH9X98nZ5nj8cb6HYFhgSO2INyv1v7EhOTd4kUv4qs1lnpKi61IWcm23dXJ
 F3hfE0ampTaLVsKDGrKkl2tcCgOiJw9hFq20UTyxoxCy2mDIfXMpfjBjZDztO2WhXUGy
 g2Zw==
X-Gm-Message-State: AOAM53248BVIKGwUBe/Y6zumHjaPjPvgJrO5fWrJJPqMH2Q4NX2hVCt/
 jNe61/O4zDzgqn8YBQ5bbJxQ0W7OrzDh31iUCcHf8A==
X-Google-Smtp-Source: ABdhPJxIPIXsXf4jLYLEBb/1WBoIj43Ang4WatokkbfhBp4dzFCXQVyui/zzlBPpl6Uh6FpjdetZ4E5goPLNut+9on0=
X-Received: by 2002:aca:4254:: with SMTP id p81mr6231320oia.68.1590769097929; 
 Fri, 29 May 2020 09:18:17 -0700 (PDT)
MIME-Version: 1.0
References: <20200527095854.21714-1-lukasz.luba@arm.com>
 <8fca24a1-93f7-f859-bd1f-b7bf484737f4@arm.com>
In-Reply-To: <8fca24a1-93f7-f859-bd1f-b7bf484737f4@arm.com>
From: "Rafael J. Wysocki" <rafael@kernel.org>
Date: Fri, 29 May 2020 18:18:06 +0200
Message-ID: <CAJZ5v0g5whSUMkd4majCGj0j9TMeO+fCfhxB6FNWoaLpPsi6UA@mail.gmail.com>
Subject: Re: [PATCH v8 0/8] Add support for devices in the Energy Model
To: Lukasz Luba <lukasz.luba@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200529_091821_330377_F69DB4AC 
X-CRM114-Status: GOOD (  21.79  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.193 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [rjwysocki[at]gmail.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.193 listed in wl.mailspike.net]
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
Cc: Nishanth Menon <nm@ti.com>, Juri Lelli <juri.lelli@redhat.com>,
 Peter Zijlstra <peterz@infradead.org>, Viresh Kumar <viresh.kumar@linaro.org>,
 Liviu Dudau <liviu.dudau@arm.com>, dri-devel <dri-devel@lists.freedesktop.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Benjamin Segall <bsegall@google.com>, alyssa.rosenzweig@collabora.com,
 Fabio Estevam <festevam@gmail.com>, Matthias Kaehlcke <mka@chromium.org>,
 Rob Herring <robh@kernel.org>, Amit Kucheria <amit.kucheria@verdurent.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Vincent Guittot <vincent.guittot@linaro.org>,
 Kevin Hilman <khilman@kernel.org>, Andy Gross <agross@kernel.org>,
 Daniel Lezcano <daniel.lezcano@linaro.org>, steven.price@arm.com,
 Chanwoo Choi <cw00.choi@samsung.com>, Ingo Molnar <mingo@redhat.com>,
 dl-linux-imx <linux-imx@nxp.com>, "Zhang, Rui" <rui.zhang@intel.com>,
 Mel Gorman <mgorman@suse.de>, orjan.eide@arm.com,
 Daniel Vetter <daniel@ffwll.ch>, Linux PM <linux-pm@vger.kernel.org>,
 linux-arm-msm <linux-arm-msm@vger.kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>, Steven Rostedt <rostedt@goodmis.org>,
 "moderated list:ARM/Mediatek SoC..." <linux-mediatek@lists.infradead.org>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Linux OMAP Mailing List <linux-omap@vger.kernel.org>,
 Dietmar Eggemann <Dietmar.Eggemann@arm.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 David Airlie <airlied@linux.ie>, Tomeu Vizoso <tomeu.vizoso@collabora.com>,
 Quentin Perret <qperret@google.com>, Stephen Boyd <sboyd@kernel.org>,
 Randy Dunlap <rdunlap@infradead.org>, "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 Sascha Hauer <kernel@pengutronix.de>, Sudeep Holla <sudeep.holla@arm.com>,
 patrick.bellasi@matbug.net, Shawn Guo <shawnguo@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Fri, May 29, 2020 at 5:01 PM Lukasz Luba <lukasz.luba@arm.com> wrote:
>
> Hi Rafael,
>
>
> On 5/27/20 10:58 AM, Lukasz Luba wrote:
> > Hi all,
> >
> > Background of this version:
> > This is the v8 of the patch set and is has smaller scope. I had to split
> > the series into two: EM changes and thermal changes due to devfreq
> > dependencies. The patches from v7 9-14 which change devfreq cooling are
> > going to be sent in separate patch series, just after this set get merged
> > into mainline. These patches related to EM got acks and hopefully can go
> > through linux-pm tree. The later thermal patches will go through thermal
> > tree.
> >
> > The idea and purpose of the Energy Model framework changes:
> > This patch set introduces support for devices in the Energy Model (EM)
> > framework. It will unify the power model for thermal subsystem. It will
> > make simpler to add support for new devices willing to use more
> > advanced features (like Intelligent Power Allocation). Now it should
> > require less knowledge and effort for driver developer to add e.g.
> > GPU driver with simple energy model. A more sophisticated energy model
> > in the thermal framework is also possible, driver needs to provide
> > a dedicated callback function. More information can be found in the
> > updated documentation file.
> >
> > First 7 patches are refactoring Energy Model framework to add support
> > of other devices that CPUs. They change:
> > - naming convention from 'capacity' to 'performance' state,
> > - API arguments adding device pointer and not rely only on cpumask,
> > - change naming when 'cpu' was used, now it's a 'device'
> > - internal structure to maintain registered devices
> > - update users to the new API
> > Patch 8 updates OPP framework helper function to be more generic, not
> > CPU specific.
> >
> > The patch set is based on linux-pm branch linux-next 813946019dfd.
> >
>
> Could you take the patch set via your linux-pm?

I can do that, but I didn't realize that it was targeted at me, so I
need some more time to review the patches.

Thanks!

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
