Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 09F8EDA5A3
	for <lists+linux-mediatek@lfdr.de>; Thu, 17 Oct 2019 08:31:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HEhDQ0ffRrTyKQpaggxZV/mIUFhLoLfuoC/Oe/p4vxw=; b=ScUtQk26+Cx81q
	aXg2gMOnRZsw/Q8akloSZMWV2imfnCZwgmIQgpJSNE6Tw15IoUYEnz+VrR/Zvcme5YGf5rQTQSbo4
	qjLU+32/5i8Kn0qbMkX+Gh9lzPlcyFZHwcT/QFZxQJBIKG70PdcM1vCOt2h8Uz4nMPtcwCZ3asCi+
	kVsMsh0CoPT01wcsgrxixqN+InQcwNUgLUFsDta94wZQbi0g5bmhLPgMsVdKwJbycXZMQkxIM3xdv
	n2B4GGp0ldio4zR/dS6Z1+hPn01o/APX1AM6DQ0aqFd2adlPsqiA3jOVEyWMGK6+MNfcR1mN29rLQ
	vDy5tdG4WbbfBw1R+blA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKzJX-00027b-BY; Thu, 17 Oct 2019 06:31:11 +0000
Received: from mail-pf1-x431.google.com ([2607:f8b0:4864:20::431])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKzJT-00026C-OR
 for linux-mediatek@lists.infradead.org; Thu, 17 Oct 2019 06:31:09 +0000
Received: by mail-pf1-x431.google.com with SMTP id y22so964472pfr.3
 for <linux-mediatek@lists.infradead.org>; Wed, 16 Oct 2019 23:31:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=fw1yYhZZ5QW5zX6QjJLpyykgbadh0BT1jKFS5XpcQIg=;
 b=YO85IQp6MRTrBiWnmv/pN2umttDZqF6DIetl5Fvi9BEt4iJSw8UM8eoknkoagueGLY
 CIJTyaS6OStNG8ys8xYrcccIgYObVbNMMjxpSr6tgEOpXy/SmmYrB4DgAd8gs4Ahuuzb
 MfcxPHi8vDOYUpDdJteDOFT/k5y8sKH7J2v5BvMRVtaF/zbv4QG3jhke6rNpYrBEfxM6
 IV4vl76nOIa7hxntrMiC/HUk0uj1isvhX9qQMdbLdZh+ENlyE4LGid2NH3UYnBPF/YuR
 A2XKvvlvWd9fIAu7e58oAdWtP4NUTfuwGcLDk0lPPbT6HqugJf/ljpz4Co6zKEBuCT6A
 i/Kg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=fw1yYhZZ5QW5zX6QjJLpyykgbadh0BT1jKFS5XpcQIg=;
 b=jxrF4q8CZhbOGNnsV734tz+8bUGDUPXZr9A7XCBtp4/KXD4D3GEY7x+dvQF2PCwumi
 qkZsp5GUAcK559BqZcfgUY1nCZc3DGIaw5x9VhzEPeP4SMJFDzKKFw/s31Oie+i45IrK
 h5jxaQ4Y34BkWR16J5b+AaYlgPzvm+jOjx7RSrjA64A5L62U5N0VJX28B8ulAkbNuUuX
 lYiRwweQa0cj7ynLI4Nd677vW+0UuHdbAKCvkpADVOsPJhwkqRhlOCJ5w4mBDPLZN2le
 CKqJCigam05uTn90SX8sNM9NnsVR7MBaALMBhAayUKWpamNWTQnre7QxzqERbJFkhtX1
 Ys8A==
X-Gm-Message-State: APjAAAUV0IqF1C96GiA1DuQ7RULQtW8aPraD1l5ugDfqFlrh6m0MhwCT
 FS06FCY8DxeTalogNbRerWW0jg==
X-Google-Smtp-Source: APXvYqy/3dKlQYrAL5ENKYviVbasbExy0Ou4NP5sDQoUA4ILd4XMCDRpjzbTMymafYYiopd0yHpkMw==
X-Received: by 2002:a63:4046:: with SMTP id n67mr2177350pga.200.1571293866371; 
 Wed, 16 Oct 2019 23:31:06 -0700 (PDT)
Received: from localhost ([122.172.151.112])
 by smtp.gmail.com with ESMTPSA id r24sm1484239pgo.58.2019.10.16.23.31.04
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 16 Oct 2019 23:31:04 -0700 (PDT)
Date: Thu, 17 Oct 2019 12:01:02 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: "andrew-sh.cheng" <andrew-sh.cheng@mediatek.com>
Subject: Re: [v4, 7/8] cpufreq: mediatek: add opp notification for SVS support
Message-ID: <20191017063102.4jirlphdxdydl2bm@vireshk-i7>
References: <1565703113-31479-1-git-send-email-andrew-sh.cheng@mediatek.com>
 <1565703113-31479-8-git-send-email-andrew-sh.cheng@mediatek.com>
 <20190820033927.72muldasu4xd6wb7@vireshk-i7>
 <1571193828.22071.5.camel@mtksdaap41>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1571193828.22071.5.camel@mtksdaap41>
User-Agent: NeoMutt/20180716-391-311a52
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191016_233107_802163_CAF9BAC8 
X-CRM114-Status: UNSURE (   9.20  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:431 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

On 16-10-19, 10:43, andrew-sh.cheng wrote:
> This is due to SVS feature need to fix Vproc for calibration.
> When SVS calibration, it want to disable all opp items, except one with
> voltae 1.0V. (SVS will change the voltage field of that opp item, if the
> corresponding voltage is not 1.0V)
> In this way, SVS can make sure there is no other module, include
> thermal, will change Vproc by DVFS driver.
> After SVS calibration done, SVS will enable those disabled opp items
> back.

But why is this required to be done this way ? Why can't we just update the
voltages without doing this disable/enable dance ?

-- 
viresh

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
