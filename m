Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CA7DDAD678
	for <lists+linux-mediatek@lfdr.de>; Mon,  9 Sep 2019 12:11:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kYMvD21sJAGORhr4q26GiWewKeW7AGLd6OFqVoiCCTM=; b=cct4iJioEx3iZu
	GlyO3G4tZWtOZe3notgt2oxFec2eVM9IJUXEVozJmS2v3S6mBZKx3oUJw7mOR1BeoaDLTuk+x1VnI
	qGrsPT99JJXAU5pENy0e1ts8q2iQ0naY9XYcFp8DobdTK7CtgIIzNC7pUcH+26IRLuDpffyYBWtGF
	eEPW8zasv1QVOvIJ1G5JCsccQjQF/7qBDseh1x6hriiBaxA+XX6k4HAUAZkvo60KXtPeojSbBqAzh
	/3JRfvlkBKRgxtkYTeXzTMbhfKXNUr+jYJAxhuxnhkQ+HxWTPDNBMYB48n+pjzvtdtvlQd38wUIKb
	k4b+UKlqtXLttFVFkDPQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7Gdv-0002O0-HK; Mon, 09 Sep 2019 10:11:31 +0000
Received: from mga05.intel.com ([192.55.52.43])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7Gdg-0002DV-2G; Mon, 09 Sep 2019 10:11:17 +0000
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 09 Sep 2019 03:11:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,484,1559545200"; d="scan'208";a="384911859"
Received: from smile.fi.intel.com (HELO smile) ([10.237.68.40])
 by fmsmga006.fm.intel.com with ESMTP; 09 Sep 2019 03:11:11 -0700
Received: from andy by smile with local (Exim 4.92.1)
 (envelope-from <andriy.shevchenko@linux.intel.com>)
 id 1i7GdZ-0006Sr-UN; Mon, 09 Sep 2019 13:11:09 +0300
Date: Mon, 9 Sep 2019 13:11:09 +0300
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: Sakari Ailus <sakari.ailus@linux.intel.com>
Subject: Re: [V4, 1/2] media: dt-bindings: media: i2c: Add bindings for OV02A10
Message-ID: <20190909101109.GT2680@smile.fi.intel.com>
References: <20190907092728.23897-1-dongchun.zhu@mediatek.com>
 <20190907092728.23897-2-dongchun.zhu@mediatek.com>
 <20190909094501.GO2680@smile.fi.intel.com>
 <20190909095715.GA5781@paasikivi.fi.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190909095715.GA5781@paasikivi.fi.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190909_031116_121918_B7759226 
X-CRM114-Status: GOOD (  11.36  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [192.55.52.43 listed in list.dnswl.org]
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, drinkcat@chromium.org,
 srv_heupstream@mediatek.com, shengnan.wang@mediatek.com, tfiga@chromium.org,
 louis.kuo@mediatek.com, sj.huang@mediatek.com, robh+dt@kernel.org,
 linux-mediatek@lists.infradead.org, dongchun.zhu@mediatek.com,
 matthias.bgg@gmail.com, bingbu.cao@intel.com, mchehab@kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Mon, Sep 09, 2019 at 12:57:15PM +0300, Sakari Ailus wrote:
> Hi Andy,
> 
> On Mon, Sep 09, 2019 at 12:45:01PM +0300, Andy Shevchenko wrote:
> > On Sat, Sep 07, 2019 at 05:27:27PM +0800, dongchun.zhu@mediatek.com wrote:
> > > From: Dongchun Zhu <dongchun.zhu@mediatek.com>
> > > 
> > > This patch adds device tree bindings documentation for OV02A10 camera sensor.
> > > 
> > > Signed-off-by: Dongchun Zhu <dongchun.zhu@mediatek.com>
> > > ---
> > >  .../devicetree/bindings/media/i2c/ov02a10.txt      | 54 ++++++++++++++++++++++
> > 
> > >  MAINTAINERS                                        |  7 +++
> > 
> > This doesn't belong to dt-bindings.
> 
> The practice has been to add the MAINTAINERS entry along with the DT
> bindings.

Ah, okay, good to know!

-- 
With Best Regards,
Andy Shevchenko



_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
