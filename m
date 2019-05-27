Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 411F42AF20
	for <lists+linux-mediatek@lfdr.de>; Mon, 27 May 2019 09:03:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vonSzLwz55ArxTHH1+FmqwcNz3FcXJfGkeNwbRjpKwM=; b=okWc6xD/UUpE14
	AGmt3IDaqdoaJzk1NGiXSUWOegYEKtff1kf3qUfizSejBA2dSr5QhlBGtY6UK82lG1Zyhcfp0nQp3
	8PqRVL6p8aR35AaTo7dcUpQ966/n4LaTk4p5WSvrDXENY2jTneNpK31NWUR0YHgGgiSMNaAZnAS5X
	yaIHptXlwGX7DyaPa6ufJVMWX09HuS4iyhBUZn2Bm0t/OCWqBd7Lhvw4R6Qm/OKGbV/Nb5hWrFior
	Za9PqfrOVPwbK5zhipBW7VajF3g+AUg8ygS5chtsH/dlp27V9D7a7XPYweUnJrkwRhAFPFEeRaPn3
	cOIJDqlD0JzkgwTs5L6g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hV9ew-0003wc-Eh; Mon, 27 May 2019 07:03:02 +0000
Received: from mail-qk1-x743.google.com ([2607:f8b0:4864:20::743])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hV9et-0003vc-7F
 for linux-mediatek@lists.infradead.org; Mon, 27 May 2019 07:03:00 +0000
Received: by mail-qk1-x743.google.com with SMTP id l128so3555702qke.2
 for <linux-mediatek@lists.infradead.org>; Mon, 27 May 2019 00:02:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=4klAjhyMj3pDesqfbfHy9JnpOrfAt9Rbw9O+NZ+oyR8=;
 b=YTCdyhEkTTb+XfSmUaF+Wr2ShZygzLKSn0Jl9+GYsEqfyYSG63Pn0xUFU4TVyNJhwm
 YDDK8Slg8ih74pBO3yczWhVijhKGYnV3YmvxEcG4cVN8P4qxjolS9w4F22KUSmlHAiA9
 uplCxb9RRIUrPw5oi4Kw4n3TesyQLbBlnsSEg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=4klAjhyMj3pDesqfbfHy9JnpOrfAt9Rbw9O+NZ+oyR8=;
 b=BgC/FXOwJenHruhhnRMX0q449xwGS3q3EvpXiQvL+VRTYvwrlRX5ztO/2GXYXSr6gt
 Ld1OWCmE1BO+tOMldtrLB0Whvx3PD663kZOrLsUADsD9VgftGgupG2hHcEx63vFMU3cf
 foj8iokidjKFfF7BmEepSEbGVOwdNbGRxMCWIEWxgpUa4/W/AFQ3kGyhgHo10TzpwKM1
 nPGSEfZ47R/VktT6spRghMwbeVEDdsdDMRRlVC90CKQWY2PmkAFrRWaoChjO8LwCc0ra
 bfuu2YWm9xRjggG5KPEGCnGwhrhLxSnm4haKCiQFUvb4zsSNnhJNfO6eHngnZHNAE3C1
 /zzg==
X-Gm-Message-State: APjAAAWnDKSlGkBLcqo0aybol4JxljxO78X9pnwb2Lb8AopnIBO3E1b0
 zxiWS1OB0PGHF+ShSLYMqATX6/XYM37v4eL6nuA9rg==
X-Google-Smtp-Source: APXvYqxQpDPZWhNOSnuQJLc9CTe0oWkb+0Cqhm60NUHHGKbieCA+KLJc7eBSXpQumDQqyyWQgQDoEboMrXnk6DvIO6Q=
X-Received: by 2002:ac8:3f33:: with SMTP id c48mr94820424qtk.347.1558940577990; 
 Mon, 27 May 2019 00:02:57 -0700 (PDT)
MIME-Version: 1.0
References: <1557997725-12178-1-git-send-email-andrew-sh.cheng@mediatek.com>
 <1557997725-12178-8-git-send-email-andrew-sh.cheng@mediatek.com>
In-Reply-To: <1557997725-12178-8-git-send-email-andrew-sh.cheng@mediatek.com>
From: Hsin-Yi Wang <hsinyi@chromium.org>
Date: Mon, 27 May 2019 15:02:32 +0800
Message-ID: <CAJMQK-j+J4_j7zwKEzAwUBzzPvZ2Q=G_jw=RsW6ZJM6YjVrVfw@mail.gmail.com>
Subject: Re: [PATCH 7/8] cpufreq: mediatek: add opp notification for SVS
 support
To: "Andrew-sh.Cheng" <andrew-sh.cheng@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190527_000259_280885_378D95EB 
X-CRM114-Status: UNSURE (   8.21  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:743 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>, Nishanth Menon <nm@ti.com>,
 srv_heupstream@mediatek.com, devicetree@vger.kernel.org,
 Stephen Boyd <sboyd@kernel.org>, Viresh Kumar <viresh.kumar@linaro.org>,
 linux-pm@vger.kernel.org, "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 lkml <linux-kernel@vger.kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Chanwoo Choi <cw00.choi@samsung.com>,
 Kyungmin Park <kyungmin.park@samsung.com>,
 MyungJoo Ham <myungjoo.ham@samsung.com>, linux-mediatek@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>, fan.chen@mediatek.com,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Thu, May 16, 2019 at 9:08 AM Andrew-sh.Cheng
<andrew-sh.cheng@mediatek.com> wrote:
>         bool need_voltage_tracking;
> +       struct mutex lock; /* avoid notify and policy race condition */
> +       struct notifier_block opp_nb;
> +       int opp_cpu;
> +       unsigned long opp_freq;
>  };
>
>  static LIST_HEAD(dvfs_info_list);
> @@ -239,6 +243,7 @@ static int mtk_cpufreq_set_target(struct cpufreq_policy *policy,
>         vproc = dev_pm_opp_get_voltage(opp);
>         dev_pm_opp_put(opp);
>
> +       mutex_lock(&info->lock);

Should init mutex, otherwise it'll get lockdep warning:
[    0.587055] Call trace:
[    0.587069]  dump_backtrace+0x0/0x168
[    0.587077]  show_stack+0x20/0x2c
[    0.587086]  dump_stack+0xe4/0x134
[    0.587095]  register_lock_class+0x3e8/0x4b0
[    0.587103]  __lock_acquire+0xac/0x14e8
[    0.587110]  lock_acquire+0x1d0/0x208
[    0.587118]  __mutex_lock_common+0xc0/0xb40
[    0.587126]  mutex_lock_nested+0x40/0x50
[    0.587135]  mtk_cpufreq_set_target+0xcc/0x2a8
[    0.587143]  __cpufreq_driver_target+0x438/0x4d8
[    0.587150]  cpufreq_online+0x5b4/0x6e0
[    0.587156]  cpufreq_add_dev+0x4c/0x84
[    0.587164]  subsys_interface_register+0xb8/0x10c
[    0.587171]  cpufreq_register_driver+0x11c/0x1c0
[    0.587178]  mtk_cpufreq_probe+0x378/0x4b8
[    0.587185]  platform_drv_probe+0x80/0xb0
[    0.587192]  really_probe+0x114/0x28c
[    0.587198]  driver_probe_device+0x64/0xfc
[    0.587205]  __device_attach_driver+0xb8/0xd0
[    0.587211]  bus_for_each_drv+0x88/0xd0
[    0.587218]  __device_attach+0xb0/0x134
[    0.587224]  device_initial_probe+0x20/0x2c
[    0.587230]  bus_probe_device+0x34/0x94
[    0.587238]  device_add+0x520/0x5b4
[    0.587245]  platform_device_add+0x17c/0x208
[    0.587252]  platform_device_register_full+0xc0/0x100
[    0.587261]  mtk_cpufreq_driver_init+0x8c/0xdc
[    0.587268]  do_one_initcall+0x1c0/0x3e0
[    0.587276]  do_initcall_level+0x1f4/0x224
[    0.587282]  do_basic_setup+0x34/0x4c
[    0.587288]  kernel_init_freeable+0x10c/0x194
[    0.587295]  kernel_init+0x14/0x100
[    0.587302]  ret_from_fork+0x10/0x18
[    0.587510] cpufreq: cpufreq_online: CPU4: Unlisted initial
frequency changed to: 1248000 KHz

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
