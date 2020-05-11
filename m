Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AE9251CDBBD
	for <lists+linux-mediatek@lfdr.de>; Mon, 11 May 2020 15:49:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7951c//73fHOMhd3oP6tIQRMcQaZirEs3qEle7cXhJQ=; b=Wt8quUJ0q17NmL
	pkW8JujcqK8o3waGUpaywIc9yrFGbEPJDfByrLm6nJKWQzphjmTts1qbqIlKQJfmJwd1XcaN41PKt
	7VFOs0q6djbxxerTFBzCjcQ0uR3eclyhMstiFuggJGgsKhejarb733HRMTt7kdX22D9s3/ki20NCn
	S0bji13BNnrA3QKXNEJlUeEfB3GhQIVqGzxqgeO/RZwilTDFU+E96E/dbBVfVN5lwhJxMk8ucZWXD
	zFiDgXvR0zC1ZwqlvvQEPOwcCcTu/jDbmbFEUmCtEtJ/WY8Ak03Ry6ME6k0JMrGXsRl2aGFCLpOBW
	Q2TETQvcKWWTS92tx4/w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jY8nw-0005lA-3H; Mon, 11 May 2020 13:49:12 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jY8nk-0005ch-W6
 for linux-mediatek@lists.infradead.org; Mon, 11 May 2020 13:49:02 +0000
Received: by mail-wm1-x341.google.com with SMTP id y24so19376959wma.4
 for <linux-mediatek@lists.infradead.org>; Mon, 11 May 2020 06:49:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=BjHVuVtBWSdENXXYiinZ4uI8mae/pV5Z0nfAWffhAkY=;
 b=k5UvlXD0wz5vs3V4Z1hLq6biCClQbT+SzjjXqeAWFhwqVN+GA6qeV+oLnHhDuhXDcw
 MVX0TgpYBV2DjO6YTj2/kloLSz+106Qm/fu9Fbt1wd7Q9aE3k+RpBPuqoe4B/zYzxdUq
 BWm+yMkxszNTBcpnFcQs0Byn+efwRCTcgItZvKIAw201wqDgUXYW7R4/7Cfdosha29v5
 hG7krpuspf6IGF5pvCDjIZnLghI9pcVt8KAQQzkY5BjrBvfl67q0XBW22UMkTBRK4S4F
 DLCrrH5eHw06BLRl64MM4YyqwuAW3hNxzvNkr+tVHeL/B126T/5EI79diNMMOpSg7Ksv
 7m/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=BjHVuVtBWSdENXXYiinZ4uI8mae/pV5Z0nfAWffhAkY=;
 b=pbmYg7+WS+9D+xmW/AVBnLfs3aZmWdnndLTWEoJnJJ+ukzFWHaEfcmt210FYgZbSji
 PWBND/rCzSnYy62ZvOwuKsf+4aMi0bYoXIVK0GF8fqculd/uuQwfarXLTPh+OIzISoPj
 vEBVqysLguxJ3x+6K3LSEssMD5a9z9USjr9lJSvkCIqZku5jZtwcGyieUShGj4zxhQxH
 2TakZGLFLnoCMcjrbRAYe0FbYrC+L3OluO1Ra8eKhV6m55T+iI4OCkgKCcN+fXlMYp8W
 NPTp4d9Q0402iCLbb2r2xAWXLtw5diP3/NmWaNXs3OCD+yy9vsGbPo4nEu4dO/113Iq9
 /Qlw==
X-Gm-Message-State: AGi0PuavXmKorlR3szTSUwdR/qwRwKAZGWDjh6BjG9TDdW2IyYoYJuq0
 Rz7C72H8tMC3ZK7qpQWcR5VTnQ==
X-Google-Smtp-Source: APiQypLt90h3E4QOKCct7odHvidKqDIEKMSux9lbzqVHNQsX/QafgI6SnH5ciyxpl3mgK+o2GNzOyg==
X-Received: by 2002:a1c:df83:: with SMTP id
 w125mr22393555wmg.140.1589204939170; 
 Mon, 11 May 2020 06:48:59 -0700 (PDT)
Received: from google.com ([2a00:79e0:d:110:d6cc:2030:37c1:9964])
 by smtp.gmail.com with ESMTPSA id a24sm26771229wmb.24.2020.05.11.06.48.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 11 May 2020 06:48:58 -0700 (PDT)
Date: Mon, 11 May 2020 14:48:54 +0100
From: Quentin Perret <qperret@google.com>
To: Lukasz Luba <lukasz.luba@arm.com>
Subject: Re: [PATCH v7 07/15] Documentation: power: update Energy Model
 description
Message-ID: <20200511134854.GD29112@google.com>
References: <20200511111912.3001-1-lukasz.luba@arm.com>
 <20200511111912.3001-8-lukasz.luba@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200511111912.3001-8-lukasz.luba@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200511_064901_048130_C5E47069 
X-CRM114-Status: UNSURE (   6.14  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
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

On Monday 11 May 2020 at 12:19:04 (+0100), Lukasz Luba wrote:
> The Energy Model framework supports also other devices than CPUs. Update
> related information and add description for the new usage.
> 
> Acked-by: Daniel Lezcano <daniel.lezcano@linaro.org>
> Signed-off-by: Lukasz Luba <lukasz.luba@arm.com>

Acked-by: Quentin Perret <qperret@google.com>

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
