Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B523AC1C72
	for <lists+linux-mediatek@lfdr.de>; Mon, 30 Sep 2019 09:59:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5AF9SrRqUaFcCazibSv4I1qFwI4oO5l8/EfqlvB2Lqc=; b=tGPE3nb9GNNM7s
	S1cgwEahgwRPwVSbNgOP0X4kybrPMBH9F18AZcweiyWNnErdBKK9LYDv1fyKhGDXyrYD0EXgZJbMS
	MmL0KpAGfEyIIkPL5cE54s+3tM/i8GBsM+VHA7MVvAAiBnQjmz5lNq2mUMQhUs+33jTaSTPKZ7Zvk
	yrPsIc9fNYJUIYhOJLGXtpkeLUFMcdl6V0qWwI+umM1ENrOHISprOXtxD4YE7djI/A1zgqidk1cNA
	o8Nj56AytVluLQBCYc4r/4IiPmnt0yG6G+mViibUg1kwM6/qetb+xDc5MqoCgQHpwhq2uSDByx8Dr
	1l9O+kPAP3fgupuTQisg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iEqaG-0004PU-Tb; Mon, 30 Sep 2019 07:59:04 +0000
Received: from mga09.intel.com ([134.134.136.24])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iEqaC-0004NP-KJ
 for linux-mediatek@lists.infradead.org; Mon, 30 Sep 2019 07:59:03 +0000
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 30 Sep 2019 00:58:56 -0700
X-IronPort-AV: E=Sophos;i="5.64,565,1559545200"; d="scan'208";a="184757098"
Received: from paasikivi.fi.intel.com ([10.237.72.42])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 30 Sep 2019 00:58:53 -0700
Received: by paasikivi.fi.intel.com (Postfix, from userid 1000)
 id 83C6720343; Mon, 30 Sep 2019 10:58:51 +0300 (EEST)
Date: Mon, 30 Sep 2019 10:58:51 +0300
From: Sakari Ailus <sakari.ailus@linux.intel.com>
To: Tomasz Figa <tfiga@chromium.org>
Subject: Re: [PATCH] media: i2c: ov5695: Modify the function of async
 register subdev related devices
Message-ID: <20190930075851.GB19037@paasikivi.fi.intel.com>
References: <20190927071824.18675-1-dongchun.zhu@mediatek.com>
 <20190927071824.18675-2-dongchun.zhu@mediatek.com>
 <CAAFQd5B1htFA1R92iQQ93dMQujkSWNqHkx94GG+bdUscRA4gDQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAAFQd5B1htFA1R92iQQ93dMQujkSWNqHkx94GG+bdUscRA4gDQ@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190930_005900_739232_62DE836A 
X-CRM114-Status: GOOD (  16.17  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [134.134.136.24 listed in list.dnswl.org]
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
 Nicolas Boichat <drinkcat@chromium.org>,
 srv_heupstream <srv_heupstream@mediatek.com>, shengnan.wang@mediatek.com,
 Louis Kuo <louis.kuo@mediatek.com>, Sj Huang <sj.huang@mediatek.com>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Dongchun Zhu <dongchun.zhu@mediatek.com>,
 Matthias Brugger <matthias.bgg@gmail.com>, Cao Bing Bu <bingbu.cao@intel.com>,
 andriy.shevchenko@linux.intel.com,
 Linux Media Mailing List <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Hi Tomasz, Dongchun,

(Removed randomly cc'd people from distribution.)

On Sat, Sep 28, 2019 at 09:17:11PM +0900, Tomasz Figa wrote:
> On Fri, Sep 27, 2019 at 4:18 PM Dongchun Zhu <dongchun.zhu@mediatek.com> wrote:
> >
> > This patch adds support for registering a sensor sub-device to the async sub-device framework and parse set up common
> > sensor related devices such as actuator/VCM.
> 
> nit: The description should be wrapped around the 80th column.
> 
> Sakari, do we need to resent or you could just rewrap when applying?

I'll rewrap.

> 
> >
> > Signed-off-by: Dongchun Zhu <dongchun.zhu@mediatek.com>
> > ---
> >  drivers/media/i2c/ov5695.c | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> >
> > diff --git a/drivers/media/i2c/ov5695.c b/drivers/media/i2c/ov5695.c
> > index e65a943..b6ee62c 100644
> > --- a/drivers/media/i2c/ov5695.c
> > +++ b/drivers/media/i2c/ov5695.c
> > @@ -1328,7 +1328,7 @@ static int ov5695_probe(struct i2c_client *client,
> >                 goto err_power_off;
> >  #endif
> >
> > -       ret = v4l2_async_register_subdev(sd);
> > +       ret = v4l2_async_register_subdev_sensor_common(sd);
> >         if (ret) {
> >                 dev_err(dev, "v4l2 async register subdev failed\n");
> >                 goto err_clean_entity;
> > --
> > 2.9.2
> >
> 
> Otherwise:
> 
> Reviewed-by: Tomasz Figa <tfiga@chromium.org>

Thanks!

-- 
Sakari Ailus
sakari.ailus@linux.intel.com

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
