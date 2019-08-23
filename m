Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4FC969A9BC
	for <lists+linux-mediatek@lfdr.de>; Fri, 23 Aug 2019 10:10:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NLSdycNObkAs2boyWYSJ/Daq5NM88sx0tqXVqwcFaBc=; b=qIjztVKgVHb+yy
	t0TeQPHn5ZOaiKGBIH429rYoOmNFkk4WTlVLLwOrRJgQf6CueBAvq10zT1PxagI+0TKWCrPyx3cJ6
	zW/R7wnzBI9ELX9zuHD5BSNRmCpUPbIYxvnhIlnudev2WBk0x+RRu3GUeZe3kMd/2O1leg5GxZ0Ex
	l97a5zZyH2Rrn5PtXh+v+doij2fDap9ltp0wIZVEl22NcYZPLxlNhlPI6tWc5Ln9qlj4iUJsCOq63
	u6yqF//kzZN4qO2gdDQsNHfYAKpheDH1eu0+DzVPhBuT2XhxJprbtYBc4IMhuwkrXhRxqMDyTZZWJ
	iz7gmPtzf7T7+mP2Pj7g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i14e1-0005x9-Uo; Fri, 23 Aug 2019 08:10:01 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i14dg-0005iP-1T; Fri, 23 Aug 2019 08:09:41 +0000
X-UUID: 5df780de695542d5ba0c687ac470f491-20190823
X-UUID: 5df780de695542d5ba0c687ac470f491-20190823
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw02.mediatek.com
 (envelope-from <qii.wang@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 920433887; Fri, 23 Aug 2019 00:09:32 -0800
Received: from MTKMBS01N1.mediatek.inc (172.21.101.68) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 23 Aug 2019 01:09:30 -0700
Received: from MTKCAS36.mediatek.inc (172.27.4.186) by mtkmbs01n1.mediatek.inc
 (172.21.101.68) with Microsoft SMTP Server (TLS) id 15.0.1395.4;
 Fri, 23 Aug 2019 16:09:30 +0800
Received: from [10.17.3.153] (172.27.4.253) by MTKCAS36.mediatek.inc
 (172.27.4.170) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Fri, 23 Aug 2019 16:09:27 +0800
Message-ID: <1566547772.19935.2.camel@mhfsdcap03>
Subject: Re: [PATCH v2] i2c: mediatek: disable zero-length transfers for mt8183
From: Qii Wang <qii.wang@mediatek.com>
To: Hsin-Yi Wang <hsinyi@chromium.org>
Date: Fri, 23 Aug 2019 16:09:32 +0800
In-Reply-To: <20190822094516.55130-1-hsinyi@chromium.org>
References: <20190822094516.55130-1-hsinyi@chromium.org>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190823_010940_090743_1D6DD3F3 
X-CRM114-Status: GOOD (  17.97  )
X-Spam-Note: SpamAssassin invocation failed
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
Cc: Nicolas Boichat <drinkcat@chromium.org>,
 Alexandru M Stan <amstan@chromium.org>, Wolfram Sang <wsa@the-dreams.de>,
 Jun Gao <jun.gao@mediatek.com>, linux-kernel@vger.kernel.org,
 linux-mediatek@lists.infradead.org, linux-i2c@vger.kernel.org,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Yingjoe Chen <yingjoe.chen@mediatek.com>, Thomas Gleixner <tglx@linutronix.de>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Thu, 2019-08-22 at 17:45 +0800, Hsin-Yi Wang wrote:
> When doing i2cdetect quick write mode, we would get transfer
> error ENOMEM, and i2cdetect shows there's no device at the address.
> Quoting from mt8183 datasheet, the number of transfers to be
> transferred in one transaction should be set to bigger than 1,
> so we should forbid zero-length transfer and update functionality.
> 
> Incorrect return:
> localhost ~ # i2cdetect -q -y 0
>      0  1  2  3  4  5  6  7  8  9  a  b  c  d  e  f
> 00:          -- -- -- -- -- -- -- -- -- -- -- -- --
> 10: -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --
> 20: -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --
> 30: -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --
> 40: -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --
> 50: -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --
> 60: -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --
> 70: -- -- -- -- -- -- -- --
> 
> After this patch:
> localhost ~ #  i2cdetect -q -y 0
> Error: Can't use SMBus Quick Write command on this bus
> 
> localhost ~ #  i2cdetect -y 0
> Warning: Can't use SMBus Quick Write command, will skip some addresses
>      0  1  2  3  4  5  6  7  8  9  a  b  c  d  e  f
> 00:
> 10:
> 20:
> 30: -- -- -- -- -- -- -- --
> 40:
> 50: -- -- -- -- -- -- -- -- -- -- -- -- -- -- -- --
> 60:
> 70:
> 
> Reported-by: Alexandru M Stan <amstan@chromium.org>
> Signed-off-by: Hsin-Yi Wang <hsinyi@chromium.org>
> ---
> Change from v1:
> * restore the order of algo and quirks
> ---
>  drivers/i2c/busses/i2c-mt65xx.c | 11 ++++++++++-
>  1 file changed, 10 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/i2c/busses/i2c-mt65xx.c b/drivers/i2c/busses/i2c-mt65xx.c
> index 252edb433fdf..29eae1bf4f86 100644
> --- a/drivers/i2c/busses/i2c-mt65xx.c
> +++ b/drivers/i2c/busses/i2c-mt65xx.c
> @@ -234,6 +234,10 @@ static const struct i2c_adapter_quirks mt7622_i2c_quirks = {
>  	.max_num_msgs = 255,
>  };
>  
> +static const struct i2c_adapter_quirks mt8183_i2c_quirks = {
> +	.flags = I2C_AQ_NO_ZERO_LEN,
> +};
> +
>  static const struct mtk_i2c_compatible mt2712_compat = {
>  	.regs = mt_i2c_regs_v1,
>  	.pmic_i2c = 0,
> @@ -298,6 +302,7 @@ static const struct mtk_i2c_compatible mt8173_compat = {
>  };
>  
>  static const struct mtk_i2c_compatible mt8183_compat = {
> +	.quirks = &mt8183_i2c_quirks,
>  	.regs = mt_i2c_regs_v2,
>  	.pmic_i2c = 0,
>  	.dcm = 0,
> @@ -870,7 +875,11 @@ static irqreturn_t mtk_i2c_irq(int irqno, void *dev_id)
>  
>  static u32 mtk_i2c_functionality(struct i2c_adapter *adap)
>  {
> -	return I2C_FUNC_I2C | I2C_FUNC_SMBUS_EMUL;
> +	if (adap->quirks->flags & I2C_AQ_NO_ZERO_LEN)
> +		return I2C_FUNC_I2C |
> +			(I2C_FUNC_SMBUS_EMUL & ~I2C_FUNC_SMBUS_QUICK);
> +	else
> +		return I2C_FUNC_I2C | I2C_FUNC_SMBUS_EMUL;

It can be removed?

>  }
>  
>  static const struct i2c_algorithm mtk_i2c_algorithm = {



_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
