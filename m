Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E9EF1AA00C
	for <lists+linux-mediatek@lfdr.de>; Thu,  5 Sep 2019 12:41:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MZr5O3KWUUmmMHB6sjO6Ys/1otUQw1ZRqPPRtoS2bkw=; b=cIZPK6rp4LCJH7
	MDy/d0FUoE+b1pBVHbjGCk9i07SqHY2iAm/MZDBojCZYhAEMMSOqHQcVbDecOsO/yetgagajoetr4
	zggBPqSvyRqj3m+nMm09WGO6qDdiOCR94xyFwSKYe1khefr5EsTLSQmkAUI+PiyfgpG/y8nfVGsQI
	uUE2JUdP49PszElpZ4v8egBJ/Y28ih9GVHFOvCLjTJGuKk7LltvqCXJa4RUE8TaNBSTSzHQONzH9R
	n1aDKfGLxcHkAMcDo+9Zmot/FwYmnZAP/cP+sL3QBAnpU/nY19RHZYmW+zR5M/fnYjjL4oK9pqisA
	wUt+4dNVKvkcVX9KYE+g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5pCK-0008Qe-1B; Thu, 05 Sep 2019 10:41:04 +0000
Received: from mga01.intel.com ([192.55.52.88])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5pBR-0008CI-2c; Thu, 05 Sep 2019 10:40:10 +0000
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 05 Sep 2019 03:40:08 -0700
X-IronPort-AV: E=Sophos;i="5.64,470,1559545200"; d="scan'208";a="173900646"
Received: from paasikivi.fi.intel.com ([10.237.72.42])
 by orsmga007-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 05 Sep 2019 03:40:03 -0700
Received: by paasikivi.fi.intel.com (Postfix, from userid 1000)
 id 8A12D20584; Thu,  5 Sep 2019 13:40:01 +0300 (EEST)
Date: Thu, 5 Sep 2019 13:40:01 +0300
From: Sakari Ailus <sakari.ailus@linux.intel.com>
To: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Subject: Re: [V2, 2/2] media: i2c: Add DW9768 VCM driver
Message-ID: <20190905104001.GZ5475@paasikivi.fi.intel.com>
References: <20190905072142.14606-1-dongchun.zhu@mediatek.com>
 <20190905072142.14606-3-dongchun.zhu@mediatek.com>
 <20190905082134.GY5475@paasikivi.fi.intel.com>
 <20190905101908.GB2680@smile.fi.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190905101908.GB2680@smile.fi.intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190905_034009_191780_5D8267DF 
X-CRM114-Status: UNSURE (   9.39  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [192.55.52.88 listed in list.dnswl.org]
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
 srv_heupstream@mediatek.com, sam.hung@mediatek.com, shengnan.wang@mediatek.com,
 Javier Martinez Canillas <javierm@redhat.com>, tfiga@chromium.org,
 sj.huang@mediatek.com, robh+dt@kernel.org, linux-mediatek@lists.infradead.org,
 dongchun.zhu@mediatek.com, matthias.bgg@gmail.com, bingbu.cao@intel.com,
 mchehab@kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Thu, Sep 05, 2019 at 01:19:08PM +0300, Andy Shevchenko wrote:
> On Thu, Sep 05, 2019 at 11:21:34AM +0300, Sakari Ailus wrote:
> > On Thu, Sep 05, 2019 at 03:21:42PM +0800, dongchun.zhu@mediatek.com wro=
te:
> > > From: Dongchun Zhu <dongchun.zhu@mediatek.com>
> =

> > > +static const struct i2c_device_id dw9768_id_table[] =3D {
> > > +	{ DW9768_NAME, 0 },
> > > +	{ },
> > =

> > Could you drop the I=B2C ID table?
> =

> But why?
> It will allow you to instanciate the device from user space.

The device is supposed to be present in DT (or ACPI tables) already.

> =

> +Cc: Javier.
> =

> Javier, is it needed in new code?

-- =

Sakari Ailus
sakari.ailus@linux.intel.com

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
