Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EC05E1B596E
	for <lists+linux-mediatek@lfdr.de>; Thu, 23 Apr 2020 12:41:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=95wc6C5vxEc+l48TJ4bs6kA9KWsR5UOzIQB0qMyDQB0=; b=QmFOGPGOMpU+UG
	MjntS28XSOvX3FHIi36rggXHph4uzQyENWW21BiaJ0g+cvsdaa3bIVZXJyc0tmRCw/25oy4Qmg0Lq
	bFANZoVHdXRtZCdedRhf4eTwr7spvj1D9/ewaQbB2nlldGyOf/uBXvOLVszMJl+JXhVrfjqnE8taB
	93/Mwl+P6Z9WoDbweb4DBWNLUDb6jZxhgosZ7JRUofBEy844N14j2b5+cF/Sw023xEh44pmwLn65O
	9Uusy/oLP3+TQ6l+bJK8pyV+ah2UUvMZ+/8I5QusxE0m6oCoCBXqiw0yVuloqH52s3m5uqtLWJPyP
	CHHtgJzGTqk0ZK0Q4d4Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRZI6-0005l2-Uc; Thu, 23 Apr 2020 10:41:10 +0000
Received: from mga14.intel.com ([192.55.52.115])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRZI4-0005k4-6V; Thu, 23 Apr 2020 10:41:09 +0000
IronPort-SDR: glUBD+y0pC9yYtyAuCVXGZQGVP7nWk+Wse4AEyyuUaIrDGp1PcttXp95AWqfrS1S7eb4a10SGv
 M1ySXDjjrwQg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Apr 2020 03:41:06 -0700
IronPort-SDR: Kx7K6p4/N5TZr/15qVHfz7t/YfWa8qfU8ew8siy/+r4y7JvNcT3POh2yqW11AOx+oW2pMXXyru
 ohidmBdCH2uA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,307,1583222400"; d="scan'208";a="291141993"
Received: from smile.fi.intel.com (HELO smile) ([10.237.68.40])
 by fmsmga002.fm.intel.com with ESMTP; 23 Apr 2020 03:41:04 -0700
Received: from andy by smile with local (Exim 4.93)
 (envelope-from <andriy.shevchenko@linux.intel.com>)
 id 1jRZI3-002cOT-JJ; Thu, 23 Apr 2020 13:41:07 +0300
Date: Thu, 23 Apr 2020 13:41:07 +0300
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: Fengping yu <fengping.yu@mediatek.com>
Subject: Re: [PATCH v5 3/3] drivers: input: keyboard: add mtk keypad driver
Message-ID: <20200423104107.GO185537@smile.fi.intel.com>
References: <20200423011958.30521-1-fengping.yu@mediatek.com>
 <20200423011958.30521-4-fengping.yu@mediatek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200423011958.30521-4-fengping.yu@mediatek.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200423_034108_247229_DA898092 
X-CRM114-Status: GOOD (  11.87  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [192.55.52.115 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: wsd_upstream@mediatek.com, Dmitry Torokhov <dmitry.torokhov@gmail.com>,
 Marco Felsch <m.felsch@pengutronix.de>, linux-kernel@vger.kernel.org,
 linux-mediatek@lists.infradead.org, linux-input@vger.kernel.org,
 Yingjoe Chen <yingjoe.chen@mediatek.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Thu, Apr 23, 2020 at 09:20:02AM +0800, Fengping yu wrote:
> From: "fengping.yu" <fengping.yu@mediatek.com>
> 

This misses the commit message. It's a show stopper for such patches.
Read this [1].

[1]: https://chris.beams.io/posts/git-commit/

...

> +#define KPD_DEBOUNCE_MASK	GENMASK(13, 0)
> +#define KPD_DEBOUNCE_MAX	256000

Is there any unit in which debounce time is being measured? Add it as a suffix
to the definition, if it's possible.

...

> +#define BITS_TO_U32(nr)	DIV_ROUND_UP(nr, BITS_PER_BYTE * sizeof(u32))

This already defined in bits.h.

...

> +	keypad->base = devm_platform_ioremap_resource(pdev, 0);
> +	if (IS_ERR(keypad->base)) {

> +		dev_err(&pdev->dev, "Failed to get resource and iomap keypad\n");

This is duplicate noisy message, please remove.

> +		return PTR_ERR(keypad->base);
> +	}

...

> +	writew(keypad->key_debounce * 32 / 1000 & KPD_DEBOUNCE_MASK,

Perhaps one pair of parentheses is needed to make logic clear.

(Yes, I remember I commented on this in earlier versions where it was many
 parentheses around above calculations, but you have to use common sense as well)

> +		keypad->base + KP_DEBOUNCE);

-- 
With Best Regards,
Andy Shevchenko



_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
