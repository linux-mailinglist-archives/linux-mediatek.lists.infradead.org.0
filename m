Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D66AAA773
	for <lists+linux-mediatek@lfdr.de>; Thu,  5 Sep 2019 17:41:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HN8/MzkzA50dd1EP+cRLMKFhE4f3nw4ZOeRnybFq6XE=; b=XOO3Ep8adsQ4m2
	HJjVyHFy3nD+p60pSYUkzzO21ZbLNXkhQ/3B/uufrH3MlyiOHX3985OfkRMZnr511+LjmX/3SKC38
	P8FIM5K5s5pd2vhY83iAEtljVcctrBKmd5cW+S9c3EgLBR1TPX52oQsmsUcuD2RKCYdT/nxgoch3t
	oMnUWKbWnFc+FBDJInYxVPwZyReSe/mw51Q9to0Z2aopEj65wktKkrkTIqtiXmctdIHxdHwCvotWk
	t0D/49pDWaiGhsEyn0/cLyBXJSaY1UO4sOYIXDKRWB2S54RVXRamABeFkgC2QwQD2OIdlBqeHDzHM
	NcIjPsOjM3KT2J81dkxQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5tsq-0003Pc-92; Thu, 05 Sep 2019 15:41:16 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5tsb-0003F3-UG; Thu, 05 Sep 2019 15:41:03 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id 2649668B05; Thu,  5 Sep 2019 17:40:54 +0200 (CEST)
Date: Thu, 5 Sep 2019 17:40:53 +0200
From: Christoph Hellwig <hch@lst.de>
To: Mark Brown <broonie@kernel.org>
Subject: Re: next/master boot: 310 boots: 11 failed, 292 passed with 6
 offline, 1 untried/unknown (next-20190904)
Message-ID: <20190905154053.GA21701@lst.de>
References: <5d700b15.1c69fb81.2abcd.479b@mx.google.com>
 <20190904192725.GI4348@sirena.co.uk> <7hzhjjsime.fsf@baylibre.com>
 <20190905153938.GB4053@sirena.co.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190905153938.GB4053@sirena.co.uk>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190905_084102_128426_4E571D06 
X-CRM114-Status: UNSURE (   7.32  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [213.95.11.211 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
 Kevin Hilman <khilman@baylibre.com>, linux-mediatek@lists.infradead.org,
 Catalin Marinas <catalin.marinas@arm.com>,
 Matthias Brugger <matthias.bgg@gmail.com>, Will Deacon <will@kernel.org>,
 Christoph Hellwig <hch@lst.de>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Thu, Sep 05, 2019 at 04:39:38PM +0100, Mark Brown wrote:
> On Wed, Sep 04, 2019 at 05:15:53PM -0700, Kevin Hilman wrote:
> > [ + Steven Liu who donated this board to my kernelCI lab ]
> 
> Also adding Christoph since this was bisected to his commit and Catalin
> and Will since this was an architecture change.

Given Will in CC the problem is on arm64?

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
