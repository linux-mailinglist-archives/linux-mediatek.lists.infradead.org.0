Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B3A89BB69
	for <lists+linux-mediatek@lfdr.de>; Sat, 24 Aug 2019 05:23:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WTE7MrNmRntYlD3DV+cHdCw47U35lKizyT+XGOqzMIk=; b=bEUUKyIVhim85l
	wVa8L67JiLX/bimwa4xQTLiylibgGSPAYUN0s0frKeH5EgDKL0qAFcwzJF0ZH9+OyPGT0FrPqoV4a
	AgsKxdku0f7tn503AgvJTM/1BOgsVyOatxX3GNeufnJDYPnA9azy+RdLCdgCEUwj55jqWcOGDGcOi
	Zo2+jfJhGLueHF5SnMZzXvPGdsRI7HUpg+/4j2DYDCWGmAfSAivBqBqD00JEbnf0eqL5tMqDJMtHN
	vY8TZWoKY/d/qRb5Um0n+Lw33mfl4x1HX9i3zHeclfC089onUX7O2wPBxFGkxDaMXcVmZBEFadTdF
	yW76cdtI8uai7RuIFsag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i1MeZ-0003Ff-DI; Sat, 24 Aug 2019 03:23:47 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i1MeG-0002kG-2I; Sat, 24 Aug 2019 03:23:29 +0000
X-UUID: 1de2e6c8436641e9bb2d4861f21c16f6-20190823
X-UUID: 1de2e6c8436641e9bb2d4861f21c16f6-20190823
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <qii.wang@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 725831303; Fri, 23 Aug 2019 19:23:18 -0800
Received: from MTKMBS01N1.mediatek.inc (172.21.101.68) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 23 Aug 2019 20:23:16 -0700
Received: from MTKCAS32.mediatek.inc (172.27.4.184) by mtkmbs01n1.mediatek.inc
 (172.21.101.68) with Microsoft SMTP Server (TLS) id 15.0.1395.4;
 Sat, 24 Aug 2019 11:23:15 +0800
Received: from [10.17.3.153] (172.27.4.253) by MTKCAS32.mediatek.inc
 (172.27.4.170) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Sat, 24 Aug 2019 11:23:14 +0800
Message-ID: <1566617000.19935.7.camel@mhfsdcap03>
Subject: Re: [PATCH v2] i2c: mediatek: disable zero-length transfers for mt8183
From: Qii Wang <qii.wang@mediatek.com>
To: Hsin-Yi Wang <hsinyi@chromium.org>
Date: Sat, 24 Aug 2019 11:23:20 +0800
In-Reply-To: <CAJMQK-gb+A9dwyMqMcA5yaaXak9no8_=urwK0XbLnNAEGyZ_hg@mail.gmail.com>
References: <20190822094516.55130-1-hsinyi@chromium.org>
 <1566547772.19935.2.camel@mhfsdcap03>
 <CAJMQK-gb+A9dwyMqMcA5yaaXak9no8_=urwK0XbLnNAEGyZ_hg@mail.gmail.com>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190823_202328_116064_D560CAB7 
X-CRM114-Status: UNSURE (   9.63  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Nicolas Boichat <drinkcat@chromium.org>,
 Alexandru M Stan <amstan@chromium.org>, Wolfram Sang <wsa@the-dreams.de>,
 Jun Gao <jun.gao@mediatek.com>, lkml <linux-kernel@vger.kernel.org>,
 linux-mediatek@lists.infradead.org, linux-i2c@vger.kernel.org,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Yingjoe Chen <yingjoe.chen@mediatek.com>, Thomas Gleixner <tglx@linutronix.de>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Fri, 2019-08-23 at 16:13 +0800, Hsin-Yi Wang wrote:
> On Fri, Aug 23, 2019 at 4:09 PM Qii Wang <qii.wang@mediatek.com> wrote:
> 
> > >
> > >  static u32 mtk_i2c_functionality(struct i2c_adapter *adap)
> > >  {
> > > -     return I2C_FUNC_I2C | I2C_FUNC_SMBUS_EMUL;
> > > +     if (adap->quirks->flags & I2C_AQ_NO_ZERO_LEN)
> > > +             return I2C_FUNC_I2C |
> > > +                     (I2C_FUNC_SMBUS_EMUL & ~I2C_FUNC_SMBUS_QUICK);
> > > +     else
> > > +             return I2C_FUNC_I2C | I2C_FUNC_SMBUS_EMUL;
> >
> > It can be removed?
> See previous discussion: https://patchwork.kernel.org/patch/10814391/#22484435
> but not all SoC's quirks has I2C_AQ_NO_ZERO_LEN.
ok, it looks good for me, thanks.
Reviewed-by: Qii Wang <qii.wang@mediatek.com>



_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
