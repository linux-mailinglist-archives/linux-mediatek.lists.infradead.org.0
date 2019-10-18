Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 55460DC1DF
	for <lists+linux-mediatek@lfdr.de>; Fri, 18 Oct 2019 11:53:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LHtXCJEUKoliwJAf27pM/EEMobpE3eRN2nDyk3ekwzk=; b=ZQecuvCXWRDKk4
	bNymb94bTuKR4ym/HllXg8k+iCPBdu8tWlF4BRPQPvNqLJNH2vbGTyybx10589raOsMuRPz+63k72
	0w22fE3mzHMzECBxRNu7VOV8KFGBLM7EvlReFtlYtc1cBoydghgnxZS6fjNOwFJWhroYyD19VfAnQ
	J/1SCU/q8CH+3e9hBl0L/Buyx16ywCVL587tRUWJpJL8f9ynmEdFIiIvY+xvVcGlBNXeQ+0D3xC1x
	bxyStQ8iXpmh/DDiDL8DZ+ZL9NhHPUI6LVVftk+UWvgMk57VXBY6YrxNYF6xiqe8tppkidpHeFh79
	/e1pzy5vC2kt13dIJj+Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLOwV-0000bA-4N; Fri, 18 Oct 2019 09:53:07 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLOwS-0000aH-87
 for linux-mediatek@lists.infradead.org; Fri, 18 Oct 2019 09:53:05 +0000
Received: by mail-pg1-x543.google.com with SMTP id i32so3065912pgl.10
 for <linux-mediatek@lists.infradead.org>; Fri, 18 Oct 2019 02:53:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=PGk9J+4Cve7nPzhB48lXZkSk8jD7RUn6XtFGq2ZdcE4=;
 b=n28OxGityoZDMnTZJXc8oRsZQcZHor+VKmgC6rBmcaS7on08zd2eWAFv06U/ZiSHk6
 9Lw8fUIWzMB6DMmUXmMNoKxdNKX0NF4jQCmhVVthlNpOhD2eKdor/MF6yaXkFzninruu
 cmzLJ2wHqbw1r9bS+WsEPgxmkgSt/E1yg7CKLON6iqE6joGCQR9KMjskL+l2KsIqdXmR
 F/VtfVlR4O0W1D9MWmMnF8DFcSRaOM+ZZvYUoJZsat8VUP/QR7rz1p4SE1GJkwYpTN+a
 X4hbuvWfGb1KTL73kiiUTCAn605J1ZE4Mz5ly7rR37WtyirV/Qs97aNCLdY3VnhQsu34
 NNlw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=PGk9J+4Cve7nPzhB48lXZkSk8jD7RUn6XtFGq2ZdcE4=;
 b=ir9k67JdKxhjsiA4tA5vw+AdGAFIElcckudYxRYo84E6uQ/bSrDX4d9axM1/4mxE0G
 B1CwFiZAtDhl/Yz5uICpcAvSIEzgKlFR9S3LuPORgssG4wYA2bykN3b089RGPhwE+jyH
 1xtSLM3BIaQKUqyJJ7LcDZxCAOvUk8UjwySgT2EYXyj+bCC4465rrIvttlHHgCtzRPoy
 TUh+H57p242HQ8rh6ZD3MdCofeYFmtGX+QWLwmZCeufTo/0V4FnUhFTXC+nNxtw7zWXf
 +DXeeOHqrNXdWw+OR2Pxy7aLO6PCVZdQTEh5ZKf5+uSsmyaVry70O3sVxpGgy22AlNqs
 tjYw==
X-Gm-Message-State: APjAAAUvt4mT7LTL/RkRZjPBILDOS7wGKdtyun94QCHUlD5EgUmAJNDh
 09ekBhPwovKVRAnTRrlwqWdNOg==
X-Google-Smtp-Source: APXvYqxlPmABURKMNZR4TlIqRnlfd/HOkYCVCXPKQWozAwch1z3PnRODRY9cczTpXXYxPHhWt0UqUQ==
X-Received: by 2002:a63:ec4f:: with SMTP id r15mr9050130pgj.17.1571392383198; 
 Fri, 18 Oct 2019 02:53:03 -0700 (PDT)
Received: from localhost ([122.172.151.112])
 by smtp.gmail.com with ESMTPSA id l62sm6471028pfl.167.2019.10.18.02.53.01
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 18 Oct 2019 02:53:02 -0700 (PDT)
Date: Fri, 18 Oct 2019 15:23:00 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: "andrew-sh.cheng" <andrew-sh.cheng@mediatek.com>
Subject: Re: [v4, 7/8] cpufreq: mediatek: add opp notification for SVS support
Message-ID: <20191018095300.mtygp2ej7rnz6uzn@vireshk-i7>
References: <1565703113-31479-1-git-send-email-andrew-sh.cheng@mediatek.com>
 <1565703113-31479-8-git-send-email-andrew-sh.cheng@mediatek.com>
 <20190820033927.72muldasu4xd6wb7@vireshk-i7>
 <1571193828.22071.5.camel@mtksdaap41>
 <20191017063102.4jirlphdxdydl2bm@vireshk-i7>
 <1571389431.27207.4.camel@mtksdaap41>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1571389431.27207.4.camel@mtksdaap41>
User-Agent: NeoMutt/20180716-391-311a52
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191018_025304_294774_B30ABD1D 
X-CRM114-Status: GOOD (  13.96  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 srv_heupstream <srv_heupstream@mediatek.com>,
 "linux-pm@vger.kernel.org" <linux-pm@vger.kernel.org>,
 Stephen Boyd <sboyd@kernel.org>, "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Chanwoo Choi <cw00.choi@samsung.com>,
 Kyungmin Park <kyungmin.park@samsung.com>,
 MyungJoo Ham <myungjoo.ham@samsung.com>,
 "linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Fan Chen =?utf-8?B?KOmZs+WHoSk=?= <fan.chen@mediatek.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On 18-10-19, 17:03, andrew-sh.cheng wrote:
> On Thu, 2019-10-17 at 12:01 +0530, Viresh Kumar wrote:
> > On 16-10-19, 10:43, andrew-sh.cheng wrote:
> > > This is due to SVS feature need to fix Vproc for calibration.
> > > When SVS calibration, it want to disable all opp items, except one with
> > > voltae 1.0V. (SVS will change the voltage field of that opp item, if the
> > > corresponding voltage is not 1.0V)
> > > In this way, SVS can make sure there is no other module, include
> > > thermal, will change Vproc by DVFS driver.
> > > After SVS calibration done, SVS will enable those disabled opp items
> > > back.
> > 
> > But why is this required to be done this way ? Why can't we just update the
> > voltages without doing this disable/enable dance ?
> > 
> This is because some opp items need voltage larger than 1.0V.
> We cannot update the voltage to 1.0V.
> 
> If we don't disable these opp items, and DVFS policy want to set these
> high frequencies, dvfs driver will set higher voltage to Vproc and SVS
> calibration will be fail.

Okay.

-- 
viresh

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
