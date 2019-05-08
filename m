Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 299A316E90
	for <lists+linux-mediatek@lfdr.de>; Wed,  8 May 2019 03:17:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ODPRJ5yYITikqRFgO69mLlACT1UczZIsOSKyG1+9Wqw=; b=DyuAfkC4K9682D
	yIe24+Ldx8rJ9lypAujgnUz9EcGTfnuC2j6na7hLiDqRgwTqMytw5XStOj2zdvDalyNOyJwCMKTmE
	afiwb+t3qYp/QPVZnNv+X6M0i8LX/cyfG3DRVySXZISpxWxi/oUEWVq0tH6sVv87i0t9FOZEmWvrV
	8CMf0Fy2pZpQpjnCt3iRz4Avf766s23ZBN9iLAZM82J0rpIdcEgrcBtKVaXb9WrsVMb5hoySC5UXa
	zsk1ShkRwuv6/ANaNC4JehVvZvxksErC+vrE7rZcef07hYSE+O7TB+MQJqACLny6izqqSfl3+yTFr
	ZxuJICkJC0UAtlKpNn0A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOBDM-0002Mk-FG; Wed, 08 May 2019 01:17:44 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOBDI-0002MF-EO
 for linux-mediatek@lists.infradead.org; Wed, 08 May 2019 01:17:42 +0000
X-UUID: 4bd5c5c980b24168839a2b0d491c7458-20190507
X-UUID: 4bd5c5c980b24168839a2b0d491c7458-20190507
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <ck.hu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1258198177; Tue, 07 May 2019 17:17:36 -0800
Received: from mtkmbs03n1.mediatek.inc (172.21.101.181) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 7 May 2019 18:17:34 -0700
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs03n1.mediatek.inc (172.21.101.181) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 8 May 2019 09:17:33 +0800
Received: from [172.21.77.4] (172.21.77.4) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Wed, 8 May 2019 09:17:33 +0800
Message-ID: <1557278253.3536.3.camel@mtksdaap41>
Subject: Re: [PATCH 2/2] mt8183: emi: add bandwidth driver support
From: CK Hu <ck.hu@mediatek.com>
To: Jjian Zhou <jjian.zhou@mediatek.com>
Date: Wed, 8 May 2019 09:17:33 +0800
In-Reply-To: <1556588366.20107.14.camel@mtksdaap41>
References: <1556532571-8234-1-git-send-email-jjian.zhou@mediatek.com>
 <1556532571-8234-2-git-send-email-jjian.zhou@mediatek.com>
 <1556588366.20107.14.camel@mtksdaap41>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190507_181740_489192_2D4AB9D0 
X-CRM114-Status: GOOD (  15.65  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: mark.rutland@arm.com, srv_heupstream@mediatek.com,
 Xi Chen <xixi.chen@mediatek.com>, robh+dt@kernel.org,
 linux-mediatek@lists.infradead.org, matthias.bgg@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Hi, Jjian:

On Tue, 2019-04-30 at 09:39 +0800, CK Hu wrote:
> Hi, Jjian:
> 
> On Mon, 2019-04-29 at 18:09 +0800, Jjian Zhou wrote:
> > From: Xi Chen <xixi.chen@mediatek.com>
> > 
> > EMI provides interface for get bandwidth  on every 1 miliseconds.
> > Currently, just support GPU bandwidth info.
> > 
> > Change-Id: I515db6194b0978b0d27a51d966c914a0b0f9d362
> > Signed-off-by: Xi Chen <xixi.chen@mediatek.com>
> > ---
> >  drivers/memory/Kconfig     |    9 +
> >  drivers/memory/Makefile    |    1 +
> >  drivers/memory/mtk-emi.c   |  412 ++++++++++++++++++++++++++++++++++++++++++++
> >  include/soc/mediatek/emi.h |  116 +++++++++++++
> >  4 files changed, 538 insertions(+)
> >  create mode 100644 drivers/memory/mtk-emi.c
> >  create mode 100644 include/soc/mediatek/emi.h
> > 

[snip]

> > +
> > +static int emi_probe(struct platform_device *pdev)
> > +{
> > +	struct mtk_emi *emi;
> > +	struct resource *res;
> > +	struct device *dev = &pdev->dev;
> > +	int i, ret;
> > +
> > +	emi = devm_kzalloc(dev, sizeof(*emi), GFP_KERNEL);
> > +	if (!emi)
> > +		return -ENOMEM;
> > +
> > +	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
> > +	emi->cen_emi_base = devm_ioremap_resource(dev, res);
> > +	if (IS_ERR(emi->cen_emi_base)) {
> > +		pr_err("[EMI] unable to map cen_emi_base\n");
> > +		devm_kfree(dev, emi);
> > +		return -EINVAL;
> > +	}
> > +
> > +	res = platform_get_resource(pdev, IORESOURCE_MEM, 1);
> > +	emi->emi_mpu_base = devm_ioremap_resource(dev, res);
> > +	if (IS_ERR(emi->emi_mpu_base)) {
> > +		pr_err("[EMI] unable to map emi_mpu_base\n");
> > +		devm_kfree(dev, emi);
> > +		return -EINVAL;
> > +	}
> > +
> > +	for (i = 0; i < MAX_CH; i++) {
> > +		res = platform_get_resource(pdev, IORESOURCE_MEM, 2 + i);
> > +		emi->chn_emi_base[i] = devm_ioremap_resource(dev, res);
> > +		if (IS_ERR(emi->chn_emi_base[i])) {
> > +			pr_err("[EMI] unable to map ch%d_emi_base\n", i);
> > +			devm_kfree(dev, emi);
> > +			return -EINVAL;
> > +		}
> > +	}
> > +
> > +	platform_set_drvdata(pdev, emi);
> > +
> > +	emi_dev = dev;
> > +	/* start emi bw monitor */
> > +	mtk_emi_mon_start(dev);
> > +
> > +	emi->emi_bw_max_idx = ARRAY_SIZE(emi->emi_bw_array);
> > +	/* setup timer */
> > +	timer_setup(&(emi->emi_bw_timer), NULL, 0);
> > +	do_gettimeofday(&(emi->old_tv));
> > +
> > +	emi->emi_bw_timer.function = emi_bw_timer_callback;
> > +	emi->emi_bw_timer.expires = jiffies + msecs_to_jiffies(1);
> 
> You could set
> 
> emi->emi_bw_timer.data = emi;
> 
> So timer function could get emi.
> 
> Regards,
> CK

Sorry, the latest kernel has removed data field. From [1], it suggest
another way to pass the data to timer callback function. The [2] is the
example to pass the data to timer callback function.

[1] https://lwn.net/Articles/735887/
[2]
https://elixir.bootlin.com/linux/latest/source/drivers/soc/mediatek/mtk-cmdq-helper.c#L18

Regards,
CK

> 
> > +	add_timer(&(emi->emi_bw_timer));
> > +
> > +	/* debug node */
> > +	ret = device_create_file(dev, &dev_attr_bw);
> > +	if (ret) {
> > +		dev_err(dev, "create bw file failed!\n");
> > +		goto err_create_attr_bw;
> > +	}
> > +	ret = device_create_file(dev, &dev_attr_dump_bw);
> > +	if (ret) {
> > +		dev_err(dev, "create dump_bw file failed!\n");
> > +		goto err_create_attr_dump_bw;
> > +	}
> > +
> > +	return 0;
> > +
> > +err_create_attr_dump_bw:
> > +	del_timer(&(emi->emi_bw_timer));
> > +	device_remove_file(dev, &dev_attr_bw);
> > +err_create_attr_bw:
> > +	devm_kfree(dev, emi);
> > +	return -ENOMEM;
> > +}
> > +




_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
