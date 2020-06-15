Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C263B1F8FEC
	for <lists+linux-mediatek@lfdr.de>; Mon, 15 Jun 2020 09:32:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UHPFBYNIs/5oY+M+s2vTGyDgmDQSgpdtSjK1ZRB4H0c=; b=G8SNlPd+M/2Pcp
	HJu8rd5zOpRz3tToh+hGWtXH7hhLHfOXHiipY8TM41O4aQ2I6kUQM0s2d9905oPzmCtorjSFueIrH
	/cT8Mux165FjA3C4MA6ke9F+/uidlfgwlfcRvvK6ttKWAgi+iqM+fukR4vFCF+s9GuXGaLO+l4b85
	83bovhbtDmKjd6xE5xBzZ+HV/RyZwZId9/QwhJbiGwHC/UHm9AV91iK8crACWoCvb3foXLi0ti0zV
	zOQWEle9FeTAqgU29PXPhHpdWrA+fcHSFg6vbmUDM+gZvOGNMEjpDpcP+d8d/65CUH0XBnLNrlacI
	7Iq9Mh0UDYeihfykb9MA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jkjbG-0003H4-CG; Mon, 15 Jun 2020 07:32:10 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jkjao-0002sT-3E
 for linux-mediatek@lists.infradead.org; Mon, 15 Jun 2020 07:31:44 +0000
Received: by mail-pg1-x544.google.com with SMTP id e18so7235832pgn.7
 for <linux-mediatek@lists.infradead.org>; Mon, 15 Jun 2020 00:31:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=LrJ4JAo2vjzpAGyvhcbFA7qISNQsytIItEN02iswbAY=;
 b=xIDTWFM2aEF9G48Tte+2/OhzJEH4zIX8UuUvaXknN7D4I4cmnaZPllbbgOZ2Qk+1bY
 xbc+h154cHHO0epDGK216n3MwNuTQp8fqNoImvPxYEWwYNbpZlJyWIj2LFILlM6wvgH+
 PrrwqgyDhhXP7IQ8oGaTW5/tJ5HPe94oZv9gZMHEzR71J+0zMmRMINshTnnEMwgOVaAR
 riY+A1J2/TsZ/dTasy+1g79Vmc0d1usNeEDBgt0+HWb+bXb9RnVRGlHffL4L/ugZBF2w
 Dud6PN5w+IJx6AeU9QRAZD329d15LkFad4bKzdPv8fewOwdQekgvuC7XPd0gsL3i8Aa0
 VR1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=LrJ4JAo2vjzpAGyvhcbFA7qISNQsytIItEN02iswbAY=;
 b=cJXzVaNCZWdpeSojkd13I0t6TmIAu4UlbLJ/g2IMyPY9KcBFUx/h5QgndD12iCYIxV
 WZIjOAx4evjuRAnL4AZXdrXiwdUWmZSfSs6ovKl8jg0FpvkvWTFy9BLqiZA8rWtAKOk8
 dFJZgYv19GTEMxUW9JW6XGDbPIb8KSYNL/YWRtN68QlQ23XLF40JfB1jKGBnUblqdsQP
 qHDTdiBsJKgrurn3hGGPnk040WOgH0IeWcVAST8s5L3EW6PujoppYBHTFOmB3yRYeuot
 1H76L6HabGsphR5M0M2Cy+ke3EEYY+4GkqrggNgI8uKWfDL1uJSO2GsmXfKlBj/t7FLA
 IsxQ==
X-Gm-Message-State: AOAM531LeJN1u2pPDXlsVmspFXVwqyMmIBZZXZY1D9QRGotbCODVfeKO
 ohsfhcQ9/iO00zBWWWBiqODM4w==
X-Google-Smtp-Source: ABdhPJzYVFN3gBHjfNgqZa/g6YU6WbN/APpY56EAa5j7L5CZKm7Xt1592LSNfKcNJdQv1J9FEzZwKg==
X-Received: by 2002:a63:5f41:: with SMTP id t62mr20785803pgb.252.1592206301079; 
 Mon, 15 Jun 2020 00:31:41 -0700 (PDT)
Received: from localhost ([122.172.62.209])
 by smtp.gmail.com with ESMTPSA id p14sm11774352pjf.32.2020.06.15.00.31.39
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 15 Jun 2020 00:31:40 -0700 (PDT)
Date: Mon, 15 Jun 2020 13:01:38 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: "Andrew-sh.Cheng" <andrew-sh.cheng@mediatek.com>
Subject: Re: [PATCH 00/12] Add cpufreq and cci devfreq for mt8183, and SVS
 support
Message-ID: <20200615073138.2vk5f3kplsz6rgqc@vireshk-i7>
References: <20200520034307.20435-1-andrew-sh.cheng@mediatek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200520034307.20435-1-andrew-sh.cheng@mediatek.com>
User-Agent: NeoMutt/20180716-391-311a52
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200615_003142_234101_8B2FB7F9 
X-CRM114-Status: UNSURE (   8.70  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 Stephen Boyd <sboyd@kernel.org>, Mark Brown <broonie@kernel.org>,
 "Rafael J . Wysocki" <rjw@rjwysocki.net>, Liam Girdwood <lgirdwood@gmail.com>,
 Rob Herring <robh+dt@kernel.org>, linux-kernel@vger.kernel.org,
 Chanwoo Choi <cw00.choi@samsung.com>,
 Kyungmin Park <kyungmin.park@samsung.com>,
 MyungJoo Ham <myungjoo.ham@samsung.com>, linux-mediatek@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>, devicetree@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On 20-05-20, 11:42, Andrew-sh.Cheng wrote:
> 	- Resend depending patches of Sravana Kannan base on kernel-5.7

Saravana's patches were never accepted and I suggested him this which
he never tested I believe.

https://lore.kernel.org/lkml/20191125112812.26jk5hsdwqfnofc2@vireshk-i7/

There is no point rebasing your stuff on a series which hasn't
concluded or is accepted, at least logically.

-- 
viresh

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
