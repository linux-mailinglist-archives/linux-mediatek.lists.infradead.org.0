Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 95965AFBAB
	for <lists+linux-mediatek@lfdr.de>; Wed, 11 Sep 2019 13:44:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RGf+hUW1zuPuJrppvJijgj/O5ExdJ0mW4ag5BOThZ+E=; b=k9rL09XxUqzxER
	BIfsA4mTBb+7mXiBi+iAgziNgDOfKOteah6owxKj2mnbLDDHygQsVl90uPg3d7IqUE3tT4wu5bcR1
	yfqlA8W4unPDtcU3svgbgyxtpYtRXWqZR+zV1csGztWCMvJBDKhVq1kFb4UInGGpkRcHxvNuiFtYd
	5raUSs02k1M5xmNI1llYzkx0IBPLba4eHm/vV+CWGL1RbGTBibiNaypibUNB968xV//Ug/ansKC+B
	iu+av53aOhybTDW0C8wInxy3l/j72bmwbBW2pptJIbxuHuibHIJ5xD8sbuRPmhVZwqJHI+bFcwpz/
	WxJrwu6EFSAnD1Etc1Ig==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i8130-0000wT-0u; Wed, 11 Sep 2019 11:44:32 +0000
Received: from mga14.intel.com ([192.55.52.115])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i811i-0008UG-4G; Wed, 11 Sep 2019 11:43:12 +0000
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 11 Sep 2019 04:43:07 -0700
X-IronPort-AV: E=Sophos;i="5.64,489,1559545200"; d="scan'208";a="360110894"
Received: from paasikivi.fi.intel.com ([10.237.72.42])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 11 Sep 2019 04:43:03 -0700
Received: by paasikivi.fi.intel.com (Postfix, from userid 1000)
 id B2DE220B6B; Wed, 11 Sep 2019 14:43:00 +0300 (EEST)
Date: Wed, 11 Sep 2019 14:43:00 +0300
From: Sakari Ailus <sakari.ailus@linux.intel.com>
To: Tomasz Figa <tfiga@chromium.org>
Subject: Re: [V2, 2/2] media: i2c: Add more sensor modes for ov8856 camera
 sensor
Message-ID: <20190911114300.GI5781@paasikivi.fi.intel.com>
References: <20190910130446.26413-1-dongchun.zhu@mediatek.com>
 <20190910130446.26413-3-dongchun.zhu@mediatek.com>
 <CAAFQd5Ar39TeFJbprQuMwCBVgjsuap1iQviz2dbf5Yw6OU1ZWA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAAFQd5Ar39TeFJbprQuMwCBVgjsuap1iQviz2dbf5Yw6OU1ZWA@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190911_044310_867597_31370C93 
X-CRM114-Status: GOOD (  19.29  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Nicolas Boichat <drinkcat@chromium.org>, andriy.shevchenko@linux.intel.com,
 srv_heupstream <srv_heupstream@mediatek.com>, devicetree@vger.kernel.org,
 shengnan.wang@mediatek.com, Louis Kuo <louis.kuo@mediatek.com>,
 Sj Huang <sj.huang@mediatek.com>, Rob Herring <robh+dt@kernel.org>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Dongchun Zhu <dongchun.zhu@mediatek.com>,
 Matthias Brugger <matthias.bgg@gmail.com>, Cao Bing Bu <bingbu.cao@intel.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 "list@263.net:IOMMU DRIVERS <iommu@lists.linux-foundation.org>,
 Joerg Roedel <joro@8bytes.org>, " <linux-arm-kernel@lists.infradead.org>,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Hi Tomasz,

On Wed, Sep 11, 2019 at 07:12:02PM +0900, Tomasz Figa wrote:
> Hi Sakari,
> 
> On Tue, Sep 10, 2019 at 10:05 PM <dongchun.zhu@mediatek.com> wrote:
> >
> > From: Dongchun Zhu <dongchun.zhu@mediatek.com>
> >
> > This patch mainly adds two more sensor modes for OV8856 CMOS image sensor.
> > That is, the resolution of 1632*1224 and 3264*2448, corresponding to the bayer order of BGGR.
> > The sensor revision also differs in some OTP register.
> >
> > Signed-off-by: Dongchun Zhu <dongchun.zhu@mediatek.com>
> > ---
> >  drivers/media/i2c/ov8856.c | 654 +++++++++++++++++++++++++++++++++++++++++++--
> >  1 file changed, 639 insertions(+), 15 deletions(-)
> >
> 
> What do you think about the approach taken by this patch?
> 
> My understanding is that the register arrays being added by it can be
> only used with 24MHz input clock, while the existing ones are for
> 19.2MHz. That means that this patch makes the driver expose completely
> different modes (resolutions, mbus formats) depending on the input
> clock. Are we okay with this?

These register list based drivers only support a tiny subset of
configurations a sensor can support, and the number of those configurations
may be amended over time.

I don't see a problem in choosing a different set of available
configurations based on the external clock frequency; that may, after all,
cause that some of the configurations, at a particular frame rate, are not
even achievable --- albeit this is perhaps unlikely in this case.

In practice, it's often the case that the sensor vendor provides these
configurations and the vendor may provide different configurations
(including output resolutions etc.) to different parties. So it may well be
the submitter of the patch would also not have access to similar
configurations (output size, cropping etc.) that now exist in the driver.

I'll review the patch itself soonish.

-- 
Regards,

Sakari Ailus
sakari.ailus@linux.intel.com

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
