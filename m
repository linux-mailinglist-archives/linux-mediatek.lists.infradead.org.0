Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C3351CD8E9
	for <lists+linux-mediatek@lfdr.de>; Mon, 11 May 2020 13:52:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4mcYR6qUHwSnv/7c7ydaYvRW2pikc0VxWdxdh6dn2Vw=; b=i1EY9d+LKB78G8
	uZRPa+p8deEjtu3uKL//Gck4E8O7Yz9e/eeguuXwbWulE4THTBjvhE//86/T9la2XQRRm+N9MnWm4
	9nbH9/R1HU18ks0xY5llCIruGsmNTrGVyPLdKL3/EuKuRo41ZkP91HMcDxI+qkfQzstWOXEakGrTD
	5ZKky/ylOUOPZV1CWOTiPYASdyUPqtQT/Y/HQ6llTR8bJS31ev7Mx7DW7CWmYmTTjRtnqhwpBb4zg
	7mSjrNBV6M80E+aq+g1i8iX3NP44EeC2sYWX7t9TfFaJHDcPvTxU74Yi3FNiRUydL9tTezzy5xwAg
	mUk2UKyn65+rTAb6Gtgw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jY6yU-0000qh-H0; Mon, 11 May 2020 11:51:58 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jY6yQ-0000oq-UB
 for linux-mediatek@lists.infradead.org; Mon, 11 May 2020 11:51:56 +0000
Received: by mail-wm1-x342.google.com with SMTP id n5so3956751wmd.0
 for <linux-mediatek@lists.infradead.org>; Mon, 11 May 2020 04:51:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=oiiy7yzaDZrfNFpAYBwGY7qa9RdD+rUsUN7jZCiG/Nk=;
 b=IZ1GX1h8kyIJjla0cM+4zc64f4XSRKtANiqnwZRYC6TXvTREkBTOmgF97cWJX4JMN/
 D/hplVMrCmD687Q5l5bjArc0/bJ6CNx5Rcq/W1h6i0myjroW0TzhSMtwawnkpMDfsTHq
 lqQ294S9l97u/OG5FE2Wiy23OxON2aIG+TE1iUsbgrx1gS1LXORQ2ETyZ5FHCdJBoH9+
 1oUqEX2YHtu+WMiP/UojhLfG28tPH0V7OaTzaqSC6sElvY86pIbB1PbMl0FJ4CzfJ0M4
 13iRj1wn0M7XLyqegXuuzYmIzCfr36AWq3H0s+vdE7dKO/T9b+qT2mX+yhE6fUk6dCLp
 DPrw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=oiiy7yzaDZrfNFpAYBwGY7qa9RdD+rUsUN7jZCiG/Nk=;
 b=BnvUgEfKwY6nqvguSgsLD8PtNbuS2bHgBpH90QEtMEI/l9yKwVbRdg4UyQ5zkzaWzf
 wwWn5tsJ4U0Z5/MKkQnaA+pO5pJgnSsBShXaubvGYh8Kc1/AtQT7Mcic5vZm0YRPpePy
 3AXTYCkGMuJS+YQVEHFjayQkK7LOmdq/8k7zhD1kO75VYKNSUQ6v+eC1FTSAsgwHZF7z
 UqY1aSg6P14eCbkzVtJnc4ThRIOuS87LAqpQqyRv6d/URfpRH/GYsSwlgsrPZSuGIcnZ
 btbxhmYRdpBs7leX45Kcg4HS1B4JiupWXZ1iYlZA2dxLMD9dfQH4KDiwBZbcdA49TTuR
 tFCw==
X-Gm-Message-State: AGi0PubKYhAE1Hv0qh+vf+y8c8yybU3/fVEo9rHeaBMmLHRqwOZ8Pddt
 miaqELDamo7ulysDHCttaKnLog==
X-Google-Smtp-Source: APiQypIvoIlZRhIOKzLOkS565PA6K4LY8QgOBxFSsIjfZbiD6pG33iH6F5Up0icIdMnR0Z6CC5DX/Q==
X-Received: by 2002:a1c:b604:: with SMTP id g4mr7883523wmf.103.1589197913440; 
 Mon, 11 May 2020 04:51:53 -0700 (PDT)
Received: from google.com ([2a00:79e0:d:110:d6cc:2030:37c1:9964])
 by smtp.gmail.com with ESMTPSA id f26sm26316916wmj.11.2020.05.11.04.51.52
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 11 May 2020 04:51:52 -0700 (PDT)
Date: Mon, 11 May 2020 12:51:49 +0100
From: Quentin Perret <qperret@google.com>
To: Lukasz Luba <lukasz.luba@arm.com>
Subject: Re: [PATCH v7 02/15] PM / EM: introduce em_dev_register_perf_domain
 function
Message-ID: <20200511115149.GB11091@google.com>
References: <20200511111912.3001-1-lukasz.luba@arm.com>
 <20200511111912.3001-3-lukasz.luba@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200511111912.3001-3-lukasz.luba@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200511_045154_993470_DAAC261E 
X-CRM114-Status: UNSURE (   8.22  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
Cc: nm@ti.com, juri.lelli@redhat.com, peterz@infradead.org,
 viresh.kumar@linaro.org, liviu.dudau@arm.com, dri-devel@lists.freedesktop.org,
 bjorn.andersson@linaro.org, bsegall@google.com,
 alyssa.rosenzweig@collabora.com, festevam@gmail.com, mka@chromium.org,
 robh@kernel.org, amit.kucheria@verdurent.com, lorenzo.pieralisi@arm.com,
 vincent.guittot@linaro.org, khilman@kernel.org, agross@kernel.org,
 daniel.lezcano@linaro.org, steven.price@arm.com, cw00.choi@samsung.com,
 mingo@redhat.com, linux-imx@nxp.com, rui.zhang@intel.com, mgorman@suse.de,
 orjan.eide@arm.com, daniel@ffwll.ch, linux-pm@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, s.hauer@pengutronix.de, rostedt@goodmis.org,
 linux-mediatek@lists.infradead.org, matthias.bgg@gmail.com,
 linux-omap@vger.kernel.org, Dietmar.Eggemann@arm.com,
 linux-arm-kernel@lists.infradead.org, airlied@linux.ie,
 tomeu.vizoso@collabora.com, sboyd@kernel.org, rdunlap@infradead.org,
 rjw@rjwysocki.net, linux-kernel@vger.kernel.org, b.zolnierkie@samsung.com,
 kernel@pengutronix.de, sudeep.holla@arm.com, patrick.bellasi@matbug.net,
 shawnguo@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Monday 11 May 2020 at 12:18:59 (+0100), Lukasz Luba wrote:
> Add now function in the Energy Model framework which is going to support
> new devices. This function will help in transition and make it smoother.
> For now it still checks if the cpumask is a valid pointer, which will be
> removed later when the new structures and infrastructure will be ready.
> 
> Acked-by: Daniel Lezcano <daniel.lezcano@linaro.org>
> Signed-off-by: Lukasz Luba <lukasz.luba@arm.com>

Acked-by: Quentin Perret <qperret@google.com>

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
