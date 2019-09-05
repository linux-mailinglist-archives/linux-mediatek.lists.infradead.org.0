Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E5B9AAAC24
	for <lists+linux-mediatek@lfdr.de>; Thu,  5 Sep 2019 21:43:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DiUExudVGfi4oYXC9vjRX3BzM7ZaEKM+im3mBx8hFk4=; b=StLh8Ptr9Pb4Fq
	haFOfV+0hQdB0T6g3pgWRHGHPAYaSG/zC+1DArQfe++UuUCL3wFQVQi6l2Y1Wj5HrhjBAWJO4eXlH
	p0A5Iud6qDDz8AnJxXjV1JF0mK3Jh4WUbAP/Db+eaCi7DFNBoFz4Tr+ieVdO7NJcpR/sYAaaDUCOp
	boGsccIO0vWF8TL1PcPz0PBbqOBMHF5z0tAq8hDRSVt8b44Kbq9mcFvib1LrVx4oTZvCTR0yEMTyX
	N/1d8ApZ0QbxDYmMtISbUxIw1gCvK4JytN6j7ySOwwrOcSBTjuD2Y9evBwhcldCMvS2JkbS4FFbef
	Sgmb8pddz4hu6Cb0TKZA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5xf4-0003sw-TV; Thu, 05 Sep 2019 19:43:19 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5xeu-0003kQ-KS
 for linux-mediatek@lists.infradead.org; Thu, 05 Sep 2019 19:43:09 +0000
Received: by mail-pf1-x443.google.com with SMTP id q10so2529616pfl.0
 for <linux-mediatek@lists.infradead.org>; Thu, 05 Sep 2019 12:43:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:in-reply-to:references:date:message-id
 :mime-version; bh=3R88/IRJQcHRZWfdzbbMzR1ZVULQNx99NBBwZp8K2ns=;
 b=VXvvRpfhCqUKNncwr4Dey5Mx58h6v8se2x5GT2BI6+dsZ30ptMP268TU5Ukorb1hyu
 SmYCaggQ1jJ6g1g3/X+8akl5EFQKHKvUDk/g76kaLGi9hSOl4PRd2AMR21qC7xgdKDeJ
 WG6ovXaIz7dQUDDlzL/CwyWEoabgr8CpuOue4ldmBJQ3V/WmY9eXOhkXgholvPwI3KSF
 0kgBU9Fq+G/b86qwuWmECrHGTVmDHKDjtxLwPLH9HKVk6jG9tp948w2JzTZTUzhAfxir
 eKOb1Lu/ExJMaP03XgcDXnBYLnfiu2od9jJf/B3oXjsmMwLEDUnriVbxM7dgL6pB9pK1
 z32g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=3R88/IRJQcHRZWfdzbbMzR1ZVULQNx99NBBwZp8K2ns=;
 b=jmW+7gtqgZXqSEaakGSXMN5/B22FUk+pOkaOJRYJmI6ku8B6gMFcq6QOFSRBibc6xR
 MXWkTRoYLK7Euo/lCrn9TF7ncscLP6iNmi/JIehFHinmDwj1uQOApmUelT08pbjiirig
 1GfjiiZZ+152uNaXOk9T3p7V6Z2W46POzo3aA1N5oK2dqmZH/smRdrDKU292EdjE8jWc
 xkU7TIXVM8ZHriWn/4RVQf6y0O7Bo8lwdPAuMhebfxOcJAX21JBbctdAyW9msVc8TEKS
 CwfUt6QQr+xNJzjroAr2CozB5iBv6sIKFMmdBLHtILoA8pAbdfPJCb8UlN0rd9GF4wr2
 74ZA==
X-Gm-Message-State: APjAAAW2OiOjdwy+FCs6VvnLtfesczl3gXhvNA/M25JT21VSYnKQdJb4
 xxvAfvQpINNI2JwiX6nmKPwRlw==
X-Google-Smtp-Source: APXvYqwf8krQaPMriUbEZ8Wdy1D3DRDXRb2n8Bb/CAhfFSa+I1I14VwMuRvI1N/0Lrhr0cbyX5GhOg==
X-Received: by 2002:a17:90a:d981:: with SMTP id
 d1mr5637712pjv.79.1567712585621; 
 Thu, 05 Sep 2019 12:43:05 -0700 (PDT)
Received: from localhost (c-71-197-186-152.hsd1.wa.comcast.net.
 [71.197.186.152])
 by smtp.gmail.com with ESMTPSA id w2sm2820837pgc.32.2019.09.05.12.43.04
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 05 Sep 2019 12:43:05 -0700 (PDT)
From: Kevin Hilman <khilman@baylibre.com>
To: Catalin Marinas <catalin.marinas@arm.com>, Mark Brown <broonie@kernel.org>
Subject: Re: next/master boot: 310 boots: 11 failed, 292 passed with 6 offline,
 1 untried/unknown (next-20190904)
In-Reply-To: <20190905170257.GC31268@arrakis.emea.arm.com>
References: <5d700b15.1c69fb81.2abcd.479b@mx.google.com>
 <20190904192725.GI4348@sirena.co.uk> <7hzhjjsime.fsf@baylibre.com>
 <20190905153938.GB4053@sirena.co.uk>
 <20190905170257.GC31268@arrakis.emea.arm.com>
Date: Thu, 05 Sep 2019 12:43:04 -0700
Message-ID: <7h4l1qsf5j.fsf@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190905_124308_669731_5FE0AC88 
X-CRM114-Status: GOOD (  11.00  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Steven Liu <steven.liu@mediatek.com>, kernel-build-reports@lists.linaro.org,
 linux-mediatek@lists.infradead.org, Matthias Brugger <matthias.bgg@gmail.com>,
 Will Deacon <will@kernel.org>, Christoph Hellwig <hch@lst.de>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Catalin Marinas <catalin.marinas@arm.com> writes:

> On Thu, Sep 05, 2019 at 04:39:38PM +0100, Mark Brown wrote:
>> On Wed, Sep 04, 2019 at 05:15:53PM -0700, Kevin Hilman wrote:
>> > [ + Steven Liu who donated this board to my kernelCI lab ]
>> 
>> Also adding Christoph since this was bisected to his commit and Catalin
>> and Will since this was an architecture change.
>
> Thanks.
>
>> > Bisected down to this commit[1], full bisect log here[2].  It didn't
>> > revert cleanly on top of next-20190904, so I didn't get any further.
>> 
>> > [1]
>> > 419e2f1838819e954071dfa1d1f820ab3386ada1 is the first bad commit
>> > commit 419e2f1838819e954071dfa1d1f820ab3386ada1
>> > Author: Christoph Hellwig <hch@lst.de>
>> > Date:   Mon Aug 26 09:03:44 2019 +0200
>
> I stared at this commit and the ones around it for a while but couldn't
> see anything obvious. AFAICT this commit only replaces some macros, no
> functional change.

This is a an arm64 mediatek SoC (MT7622) so hopefully the folks on
linux-mediatek can take a closer look and see what's going on here.

If someone can suggest how I can enable an earlcon on this platform, I'd
be happy to give that a try to see if we can get any kernel output
before it hangs.

Kevin

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
