Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BD3BAE9C01
	for <lists+linux-mediatek@lfdr.de>; Wed, 30 Oct 2019 14:04:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=B7KqoN6YkMnmIoTimgsz2U0RHD9L0E6IXzAhTqtomRM=; b=YHpv46f8MJ2gr1
	kLxR9JWreytMoZFMgXNraHsfuOJTUtStzuu4jNCjiCE7QspWn/exMYZpKSvlLAblB8JIQV3CP+q1S
	Voo3+K0Hny7uw8yzzhxcwGG0SPTrDLeLZrC1tRwZZqWe0crT/tGEskPo4vaAFCoTPuQ8r+IwpHJWC
	UDtll4VF3ztdNZGoWi9kVa02A4vrZQ6y3FiCdSI33gZ0Z5xo23eOOc2Zq17j1eQVQBZwKDNWS8Qzm
	gPdaqodXgmnkjgMbn0LyxhczSh9DSJRxtqcrYpx7PS29HDlDlcZ0pIIDzva+x9fa1AsKR74uvLlvT
	CHXyY0AqRPQMxRBEwOEQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPneA-0006kJ-8k; Wed, 30 Oct 2019 13:04:22 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPne6-0006jc-UO; Wed, 30 Oct 2019 13:04:20 +0000
X-UUID: 2227273e5c264e6899fb628759a12703-20191030
X-UUID: 2227273e5c264e6899fb628759a12703-20191030
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw01.mediatek.com
 (envelope-from <dongchun.zhu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 36379680; Wed, 30 Oct 2019 05:04:12 -0800
Received: from MTKMBS31N2.mediatek.inc (172.27.4.87) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 30 Oct 2019 06:04:13 -0700
Received: from MTKCAS36.mediatek.inc (172.27.4.186) by MTKMBS31N2.mediatek.inc
 (172.27.4.87) with Microsoft SMTP Server (TLS) id 15.0.1395.4;
 Wed, 30 Oct 2019 21:04:10 +0800
Received: from [10.17.3.153] (172.27.4.253) by MTKCAS36.mediatek.inc
 (172.27.4.170) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Wed, 30 Oct 2019 21:04:10 +0800
Message-ID: <1572440653.21623.272.camel@mhfsdcap03>
Subject: Re: [V2, 2/2] media: i2c: Add more sensor modes for ov8856 camera
 sensor
From: Dongchun Zhu <dongchun.zhu@mediatek.com>
To: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Date: Wed, 30 Oct 2019 21:04:13 +0800
In-Reply-To: <20190910174450.GJ2680@smile.fi.intel.com>
References: <20190910130446.26413-1-dongchun.zhu@mediatek.com>
 <20190910130446.26413-3-dongchun.zhu@mediatek.com>
 <20190910174450.GJ2680@smile.fi.intel.com>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-TM-SNTS-SMTP: 08B9E0922440633DA2F8946554680B04AE3552E803565E0B3BD94F55769995D82000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191030_060418_978239_9D57B706 
X-CRM114-Status: GOOD (  15.88  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
 linux-mediatek@lists.infradead.org, sakari.ailus@linux.intel.com,
 matthias.bgg@gmail.com, bingbu.cao@intel.com, mchehab@kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Hi Andy,

On Tue, 2019-09-10 at 20:44 +0300, Andy Shevchenko wrote:
> On Tue, Sep 10, 2019 at 09:04:46PM +0800, dongchun.zhu@mediatek.com wrote:
> > From: Dongchun Zhu <dongchun.zhu@mediatek.com>
> > 
> > This patch mainly adds two more sensor modes for OV8856 CMOS image sensor.
> > That is, the resolution of 1632*1224 and 3264*2448, corresponding to the bayer order of BGGR.
> > The sensor revision also differs in some OTP register.
> 
> > +static int __ov8856_power_on(struct ov8856 *ov8856)
> > +{
> > +	struct i2c_client *client = v4l2_get_subdevdata(&ov8856->sd);
> > +	int ret;
> > +
> > +	ret = clk_prepare_enable(ov8856->xvclk);
> > +	if (ret < 0) {
> > +		dev_err(&client->dev, "failed to enable xvclk\n");
> > +		return ret;
> > +	}
> > +
> > +	gpiod_set_value_cansleep(ov8856->n_shutdn_gpio, GPIOD_OUT_LOW);
> > +
> > +	ret = regulator_bulk_enable(OV8856_NUM_SUPPLIES, ov8856->supplies);
> > +	if (ret < 0) {
> > +		dev_err(&client->dev, "failed to enable regulators\n");
> > +		goto disable_clk;
> > +	}
> > +
> > +	gpiod_set_value_cansleep(ov8856->n_shutdn_gpio, GPIOD_OUT_HIGH);
> > +
> 
> > +	usleep_range(1400, 1500);
> 
> This should be commented why this is needed and from where the requirement
> comes from. Also, not, that 100us, which is only ~7%, is small margin.
> Recommended one is ~20%.
> 

Thanks for reminder.
This would be refined in next release.

> > +
> > +	return 0;
> > +
> > +disable_clk:
> > +	clk_disable_unprepare(ov8856->xvclk);
> > +
> > +	return ret;
> > +}
> 
> > +	ov8856->is_1B_revision = (val == OV8856_1B_MODULE) ? 1 : 0;
> 
> !! will give same result without using ternary operator.
> 

Fixed in next release.

> > +	ov8856->xvclk = devm_clk_get(&client->dev, "xvclk");
> > +	if (IS_ERR(ov8856->xvclk)) {
> > +		dev_err(&client->dev, "failed to get xvclk\n");
> > +		return -EINVAL;
> > +	}
> 
> Previously it was optional.
> How did it work before and why it's not optional?
> 

Previous vision for this driver is for ACPI, not ARM.

> > +	ov8856->n_shutdn_gpio = devm_gpiod_get(&client->dev, "reset",
> > +					       GPIOD_OUT_LOW);
> > +	if (IS_ERR(ov8856->n_shutdn_gpio)) {
> > +		dev_err(&client->dev, "failed to get reset-gpios\n");
> > +		return -EINVAL;
> > +	}
> 
> Ditto.
> 
> > +static const struct of_device_id ov8856_of_match[] = {
> > +	{ .compatible = "ovti,ov8856" },
> 
> > +	{},
> 
> No comma needed for terminator line.
> 

Fixed in next release.

> > +};
> 



_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
