Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3456322AF0
	for <lists+linux-mediatek@lfdr.de>; Mon, 20 May 2019 06:43:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mz6pHau3jvtk7+bMBnw6dT1iCop//KGbuS4veFzwaNU=; b=rJK11F22FGC7dz
	saQMkhj+PXbmERn/mpUxqoeEhkjbeRUT7MXTeowFWh0DMRCCm6V++8FOsRlC0DqRQ5rWLRiH854fA
	i3SjmCK3+gQzUbGrbemchlY/YAW0wR9hjiHez1KuBH7h7VfPi5nR2dGyOnKm5fZB+ZHbE8nS4m309
	PdiIFnWBmnuCHi3ziSOaLcdLvXInnd1V7GDiUcOrnJLyQDZbs80raI9/+HqV376bt4AK0TCTtOvmY
	EVvWc975AUHVFuKud0ll8PlIv8JTRxJLcjBxdSR7J+RoF/rVN4zq9pHFNrHn2CWVR3YM4hCYGQ6Es
	pPt3sf/+mu9ZXdb+v9Kw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSa93-0005WC-Tb; Mon, 20 May 2019 04:43:30 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSa8w-0005OL-1m
 for linux-mediatek@lists.infradead.org; Mon, 20 May 2019 04:43:23 +0000
Received: by mail-pl1-x642.google.com with SMTP id d21so6104569plr.3
 for <linux-mediatek@lists.infradead.org>; Sun, 19 May 2019 21:43:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=+XiwKGCePMesqEFsZbk88+d/XnSzWj4VH7Ml5qL5pt0=;
 b=unoGz+98418sHeX4y3va9Fw7O/7rbEjL0hqVIq1my/Asr2dzM38M5H+2LqZvHB8AAU
 CqAQ6kJMNTvZsHuKd08/xPftA/HCBVOpd9T/IVsfET13Jf59zZ2lgw7rBogYKdMYL5HO
 D19WNFD3+CXw7ekYEu/sBvRFOLcPxesn9XRptLA4MN0cxd/h+H6ijVajWhreBcZlEb89
 1zto6lDvOL6iTVNTtZLtBD5/usk/MiY8ToYMfmuWPSFpLXmjSRm7UfgLrVM9IDZz023L
 +jA3+5k0WyY/BV+s9tNRRQvSDaqiY473/tMDg9LXbhdS9165ETFM0jaOZW2A2jQBuMSY
 XRug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=+XiwKGCePMesqEFsZbk88+d/XnSzWj4VH7Ml5qL5pt0=;
 b=U1srKiO+TcbBdCP4bsbnG4iWj9bO6ZwQFpPr7fALW92RHqt+WoX2WZa9squv9vmc6B
 O1ko1jeHQJ2B4Qe1LDfzTPqkX+vL5TCdUC+Q6Yott3dsGtBgjnq1HwfhKdSMvriZwmLy
 kPeirQp8OTfqE+cJEMAqa/jr6s/dE3Ke40YYIrYvAKd1fd615AhBbbUA00eTCt0jtdEW
 bKmJ/2ojnf/TvUhLIe6UphQG2AtP7KAZzifqzvZSqUGEkkpOmyQgJmd67thIuIKz0YzW
 a+P+wgcpyu5KwKuBDj9e7R5FpR4N1waxRQPc01KA7KoIFqE2EL2pDIm9Qe81WOle1qEY
 c1BA==
X-Gm-Message-State: APjAAAVRg+/xvx3ehALRMVS0w0PG/xRn8+nn1fvFlE0+fsJP/gi06Xv9
 IpIEcOKFSHFp3VukeSWfQRLhOw==
X-Google-Smtp-Source: APXvYqxKxyg7Aak1yT0b9mdNSLwjCHjek+L8V1ZtJqzVLOZXXZuDfEEcEGssLjb+LtYO06CzCKIoow==
X-Received: by 2002:a17:902:8e8a:: with SMTP id
 bg10mr19217573plb.247.1558327400037; 
 Sun, 19 May 2019 21:43:20 -0700 (PDT)
Received: from localhost ([122.172.118.99])
 by smtp.gmail.com with ESMTPSA id b16sm27365221pfd.12.2019.05.19.21.43.18
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 19 May 2019 21:43:19 -0700 (PDT)
Date: Mon, 20 May 2019 10:13:17 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: "Andrew-sh.Cheng" <andrew-sh.cheng@mediatek.com>
Subject: Re: [PATCH 4/8] dt-bindings: devfreq: add compatible for mt8183 cci
 devfreq
Message-ID: <20190520044317.pwciu4bjuz5jh7f7@vireshk-i7>
References: <1557997725-12178-1-git-send-email-andrew-sh.cheng@mediatek.com>
 <1557997725-12178-5-git-send-email-andrew-sh.cheng@mediatek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1557997725-12178-5-git-send-email-andrew-sh.cheng@mediatek.com>
User-Agent: NeoMutt/20180716-391-311a52
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190519_214322_134700_825C8E4F 
X-CRM114-Status: GOOD (  15.88  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
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
 srv_heupstream@mediatek.com, linux-pm@vger.kernel.org,
 Stephen Boyd <sboyd@kernel.org>, "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 Chanwoo Choi <cw00.choi@samsung.com>,
 Kyungmin Park <kyungmin.park@samsung.com>,
 MyungJoo Ham <myungjoo.ham@samsung.com>, linux-mediatek@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>, fan.chen@mediatek.com,
 devicetree@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On 16-05-19, 17:08, Andrew-sh.Cheng wrote:
> From: "Andrew-sh.Cheng" <andrew-sh.cheng@mediatek.com>
> 
> This adds dt-binding documentation of cci devfreq
> for Mediatek MT8183 SoC platform.
> 
> Signed-off-by: Andrew-sh.Cheng <andrew-sh.cheng@mediatek.com>
> ---
>  .../bindings/devfreq/mt8183-cci-devfreq.txt          | 20 ++++++++++++++++++++
>  1 file changed, 20 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/devfreq/mt8183-cci-devfreq.txt
> 
> diff --git a/Documentation/devicetree/bindings/devfreq/mt8183-cci-devfreq.txt b/Documentation/devicetree/bindings/devfreq/mt8183-cci-devfreq.txt
> new file mode 100644
> index 000000000000..3189902902e0
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/devfreq/mt8183-cci-devfreq.txt
> @@ -0,0 +1,20 @@
> +* Mediatek Cache Coherent Interconnect(CCI) frequency device
> +
> +Required properties:
> +- compatible: should contain "mediatek,mt8183-cci" for frequency scaling of CCI

Example doesn't have this compatible .

> +- clocks: for frequency scaling of CCI
> +- clock-names: for frequency scaling of CCI driver to reference
> +- regulator: for voltage scaling of CCI
> +- operating-points-v2: for frequency scaling of CCI opp table
> +
> +Example:
> +	cci: cci {
> +		compatible = "mediatek,cci";
> +		clocks = <&apmixedsys CLK_APMIXED_CCIPLL>;
> +		clock-names = "cci_clock";
> +		operating-points-v2 = <&cci_opp>;
> +	};
> +
> +	&cci {
> +		proc-supply = <&mt6358_vproc12_reg>;
> +	};
> \ No newline at end of file
> -- 
> 2.12.5

-- 
viresh

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
