Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E50A184452
	for <lists+linux-mediatek@lfdr.de>; Fri, 13 Mar 2020 11:05:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=a9wZVoPz7ZFAoyuLR7LuFRC68wsxXdi8CZ1DXP+MJgw=; b=EhDY7SLplQStjC
	Jq294AtN3Iu/ublb3k3IxaCuzwy7xuvW/15Lrs2XOGvKMtnVi36QRR0qH1MvrdfSlDWmLp3MyfBTT
	MVYQnk1RjIYvO0l7inG8HIyp7bw6VLBYj7MixOmi30ixybsBbMKaimcNBY/MyFrkshJWOwlV/6KMk
	cVr0lLoVBt2oPm8b2OHIjqYMi+qNwrX6O0kQnSkX+LXXF+atB9w7UmMYbonjop/GCnzBpAnpouVha
	aOM8Qi1ldCAoDNo5gJE5tdmKg24U0pUElxwz97q17Iu+moe0ON/KKPaqfZPGc17H7C3LGuc2b8XUe
	nwuVOs+0MprVymHN2k2A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jChCI-0007jd-6e; Fri, 13 Mar 2020 10:05:42 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jChBy-0007Iw-Ds
 for linux-mediatek@lists.infradead.org; Fri, 13 Mar 2020 10:05:27 +0000
Received: by mail-wr1-x444.google.com with SMTP id n15so11249875wrw.13
 for <linux-mediatek@lists.infradead.org>; Fri, 13 Mar 2020 03:05:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=DkgtdvOLhPq5sUtjHRHCpYAFEd/88KxYCJ5Q/7OZdAA=;
 b=WL8rtzOewU/9s+K0tvQpcOMXbr6z8K1b/4xg47mX7DzD3tGkqmlitudW6dcgGxCTUy
 ZnhpdCWiUyndV3kwVLwm4Kz9Y1OafWLeQQiRN9Ja3dy85aJ3z2Fwl+xp3bCkdryfSF4x
 EeZT+N7l9jLcATyhvvHXnq2+ggmZ4axNP8ELE8a5MrgQ0/h8zkmE+SDyru4TbGb+dlKl
 wE5mVpwdcjsn1PwQd7Ft03lUgseGNgXRaKYBNTIdaMVrLI8FuXLpZRiEa/NsJaaOZuob
 0Z4A10T7fdFLYy82VZu/Ld6XKr/AEabGd3ymvJgaiGCAUPA9VL/qJUVbEIiFc5tPB0aA
 bxiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=DkgtdvOLhPq5sUtjHRHCpYAFEd/88KxYCJ5Q/7OZdAA=;
 b=laeawbuYCUDWb0DPdZ+eERJJ9AU6Wno3mTPk1QtxBFNkUSJWr04wSxsHYWIubZmhRI
 LZkEDhgKbBcShXmEfUrM3T5G+4391476ZIPqmkOif0pj/83hzaLKuvfa6DmmBoSuyJPQ
 v40KG0dAnKumY0YxK+oamFthuc1gzxsB6g95gLrBZ4f6+ruKcg/IIJVKzCGxzEQ8AVlI
 T7CsyEcC9UeYvckpBLLYqYgWUFC+Tw9EusI/aJNQiobCFkyMvGvkHpBAbNGcXn3EXenH
 1bejTg1Ubi3vRtxYcFUPfg5jieBKjfbKORgrdITrws/ia/7PgQYJhHq40qe4bg/lrTUJ
 OorQ==
X-Gm-Message-State: ANhLgQ3V6A99wcSP8R68u9dcQuwYMAFliYHt6AGqkYDmbZlSxXWi1tVJ
 bVFjCpU9AOyGO+UrboRQA0Hizw==
X-Google-Smtp-Source: ADFU+vuTRDG0n/eB58imQFTmEl0YspJzXhA4oFvRnCi/L172+s9nTOf1O8dWmim1NZPCcDnu+tPD+g==
X-Received: by 2002:a5d:5545:: with SMTP id g5mr965179wrw.290.1584093920811;
 Fri, 13 Mar 2020 03:05:20 -0700 (PDT)
Received: from google.com ([2a00:79e0:d:110:d6cc:2030:37c1:9964])
 by smtp.gmail.com with ESMTPSA id x13sm16642987wmj.5.2020.03.13.03.05.19
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 13 Mar 2020 03:05:20 -0700 (PDT)
Date: Fri, 13 Mar 2020 10:05:16 +0000
From: Quentin Perret <qperret@google.com>
To: Lukasz Luba <lukasz.luba@arm.com>
Subject: Re: [PATCH v4 1/4] PM / EM: add devices to Energy Model
Message-ID: <20200313100516.GB144499@google.com>
References: <20200309134117.2331-1-lukasz.luba@arm.com>
 <20200309134117.2331-2-lukasz.luba@arm.com>
 <20200313100407.GA144499@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200313100407.GA144499@google.com>
User-Agent: Mutt/1.12.2 (2019-09-21)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200313_030522_487010_C2F4FCFD 
X-CRM114-Status: UNSURE (   7.15  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -14.0 (--------------)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-14.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
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

On Friday 13 Mar 2020 at 10:04:07 (+0000), Quentin Perret wrote:
> Not easy to figure out which device has a problem with this. I'm
> guessing you went that way since this is called before ida_simple_get() ?
> Could that be refactored to make the error message more useful ?

Bah, forget that one :)

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
