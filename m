Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2446A184D5C
	for <lists+linux-mediatek@lfdr.de>; Fri, 13 Mar 2020 18:15:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fIsIsn+PKEUT6LDeh68JZq1WY6L4JbUzDC/BV00LfDs=; b=NzbU8EaVz3pMRE
	uFouStvBxo3iq3QfjcqftHJdjEKnRFF9qOmFqz4iWTtSxLEfzKW5PQD4nC9PbaSNeW4pHPjpUcijp
	MOCwmrvy3UCP6VBzSBwZaTpdVpV2N9ifeA6vH63d9xXhcGfcdUrGR1M0LjXQKjhEdWtrM9zfTjrLa
	5cKTTTfDoifJM5l85uTuhLbnyGyhKP+K27Q74EUvr6fgxJ6DmP2ON6IHQHTpdgx0FJxSJjFWrI6DW
	NVDtUQ0EWvw9UePij+mw/oXHzjkTxf3TGMKnD/303UnYpklRzbAPCMwrk3riVMtc+BJ3/MfMqQMNB
	eOKBbYuvITIYXLrkujng==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCnuF-0000uR-IG; Fri, 13 Mar 2020 17:15:31 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCnuB-0000mm-HH
 for linux-mediatek@lists.infradead.org; Fri, 13 Mar 2020 17:15:29 +0000
Received: by mail-wm1-x342.google.com with SMTP id a132so10831477wme.1
 for <linux-mediatek@lists.infradead.org>; Fri, 13 Mar 2020 10:15:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=EiAZ8r1RK4eYPjDEt/gPiQ4hc4RczwbEBzIiaGohL7A=;
 b=Y6MMbku01pHaOoSgGbj4gF3V6x7FB1fkNAjJ6ru6WyqJeOLaM9BYbK0Ix5GiRzvNyK
 JIioY1ozgF3HVo4Auv/aymm6AZFpDclDUVmdfoDPF+KPKip5Yk4kG7Hly9cTf+rNIbjt
 7MLho2yP/uxhsxbFwElwAMRIDoxKMELy3GerALcpDAGTG2KnGEZ+GqcbM0IjWFUDhr7q
 rowpPLYZoUSujhlAEl+M2aZSrzgSsZCi5RH5aISnBCWJvXcUUYCU1KjnPZLcSm+y37Rq
 sstjUD42VHXtFuUYk1V6LrY/wCYZhaFm3tgsnEUbTCcAXDxIK+sON7MnL+fUwV5dhLoH
 PtxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=EiAZ8r1RK4eYPjDEt/gPiQ4hc4RczwbEBzIiaGohL7A=;
 b=rerRrrkVqCKhecJ80v1bPwDNgOaolUyw6JUbqJ346zB3R3EnC03P1Y5Z/D/8mmFNpD
 ZxQ8FkZHBrv1hRRWXFNiaVWw2R83C48FCSmKBnY1hJVb5hiu3EvJx0mFXgCu6c5yNo2S
 IUhpl5jzG8PgWnsosOw+q9Cip4jssG9SpvHPKJA2jK2vX8rePjhrk0uJk9vYxBxWu5dX
 QfaHxxAxJwGBuK0P5LJLhX65hpTBujXvmgjyoghKih/LbF9NbQ6ZCSv2xYLYWCoyRrn/
 tfDX512N1dhJEV/duPRTvT8zh4NP+S8Q5WDrUn5nqbaaqDymjDk78KEsB/gG5edrBe+Q
 ac6g==
X-Gm-Message-State: ANhLgQ0pVoL7ctJKhQv0mCKWnqixaH2jLZ8vKV2gmjWeEwDr9/1ORoas
 M/iwfTyK1rZc5Wv63MVDK5U3/w==
X-Google-Smtp-Source: ADFU+vuhetFMtP2EoDOpiocI9rZpw5aJIjO8D6ESXO0czFCY0ade8WAwSU18BkQ9bFFVg+JYF0INNg==
X-Received: by 2002:a7b:c414:: with SMTP id k20mr11747450wmi.119.1584119725823; 
 Fri, 13 Mar 2020 10:15:25 -0700 (PDT)
Received: from google.com ([2a00:79e0:d:110:d6cc:2030:37c1:9964])
 by smtp.gmail.com with ESMTPSA id s22sm16474638wmc.16.2020.03.13.10.15.24
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 13 Mar 2020 10:15:25 -0700 (PDT)
Date: Fri, 13 Mar 2020 17:15:21 +0000
From: Quentin Perret <qperret@google.com>
To: Lukasz Luba <lukasz.luba@arm.com>
Subject: Re: [PATCH v4 1/4] PM / EM: add devices to Energy Model
Message-ID: <20200313171521.GA236432@google.com>
References: <20200309134117.2331-1-lukasz.luba@arm.com>
 <20200309134117.2331-2-lukasz.luba@arm.com>
 <20200313100407.GA144499@google.com>
 <bd1233f4-6e8b-23d1-e5aa-7c904fbd1bb3@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <bd1233f4-6e8b-23d1-e5aa-7c904fbd1bb3@arm.com>
User-Agent: Mutt/1.12.2 (2019-09-21)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200313_101527_611463_BE13DB88 
X-CRM114-Status: GOOD (  12.16  )
X-Spam-Score: -14.0 (--------------)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-14.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 1.7 FSL_HELO_FAKE          No description available.
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 alyssa.rosenzweig@collabora.com, festevam@gmail.com, Morten.Rasmussen@arm.com,
 robh@kernel.org, amit.kucheria@verdurent.com, lorenzo.pieralisi@arm.com,
 vincent.guittot@linaro.org, khilman@kernel.org, agross@kernel.org,
 daniel.lezcano@linaro.org, steven.price@arm.com, cw00.choi@samsung.com,
 mingo@redhat.com, linux-imx@nxp.com, rui.zhang@intel.com, mgorman@suse.de,
 orjan.eide@arm.com, daniel@ffwll.ch, linux-pm@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, s.hauer@pengutronix.de, rostedt@goodmis.org,
 linux-mediatek@lists.infradead.org, matthias.bgg@gmail.com,
 linux-omap@vger.kernel.org, Dietmar.Eggemann@arm.com,
 linux-arm-kernel@lists.infradead.org, airlied@linux.ie, javi.merino@arm.com,
 tomeu.vizoso@collabora.com, sboyd@kernel.org, rdunlap@infradead.org,
 rjw@rjwysocki.net, linux-kernel@vger.kernel.org, b.zolnierkie@samsung.com,
 kernel@pengutronix.de, sudeep.holla@arm.com, patrick.bellasi@matbug.net,
 shawnguo@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Friday 13 Mar 2020 at 16:49:24 (+0000), Lukasz Luba wrote:
<snip>
> Well if someone would add EM to its platform and call this in
> hotplug, which is used as cooling method, will see a lot of warnings.

Right, but I guess I was arguing that calling this for CPUs, even on
hotplug, is kinda wrong.

> I would rather avoid stressing people with this kind of warnings.
> This is under control and nothing really happens even when they
> do hotplug very often, like LTP stress tests.
> 
> I agree to add a print there but warning for me is when something
> is not OK and should be investigated.
> I would prefer dev_dbg_once() to print thet the EM is not going to be
> removed. This will also not pollute dmesg in many logs.

Fair enough, a WARN is maybe a bit over the top. A debug message
should work.


<snip>
> So these small changes will be present in v5. I have to wait a few
> days because there is one change to devfreq_cooling.c queuing and I will
> send v5 with updated patch 3/4 rebased on top.

Sounds good, thanks.
Quentin

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
