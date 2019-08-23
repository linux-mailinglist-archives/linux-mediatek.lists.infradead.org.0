Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B8689A9E5
	for <lists+linux-mediatek@lfdr.de>; Fri, 23 Aug 2019 10:14:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aO7AkOMtgRi8qvxDVQgDDVEU703QNSg6sM/Y8jeb6ak=; b=Je0irAJIeYsRf4
	qOS4as9TALmkKBOX1k4czWRLqrDjIRQtc6MVs3YmOXphtaE3G+DcVWQH9RNUBOsRadC7TRRjGmLGt
	hdI6y/1fc/yb+T9gWIq2Ay3iO7NbcQWsr9/6WLvcma8VxsCOIXbxAYifFu988Bich8bwcSBuvtvTr
	I9LXJD52U8LA4eCc2TEU3hXCflbKTbCNZUOJPefQXMFcmqeeOqtgIPyW/nOyfrE344v4oMyRQBS3d
	Yz4fCylfa+nwxeoViFTOwHsw6ybJaOfitIiXBktZPXL21ajyZ8xuYphHKz06whxXlHml1ORmgX5CQ
	k1T3seH2nh/tI1r4uXPg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i14i7-0008JN-Or; Fri, 23 Aug 2019 08:14:15 +0000
Received: from mail-qt1-x841.google.com ([2607:f8b0:4864:20::841])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i14hs-00087V-6X
 for linux-mediatek@lists.infradead.org; Fri, 23 Aug 2019 08:14:01 +0000
Received: by mail-qt1-x841.google.com with SMTP id u34so10461697qte.2
 for <linux-mediatek@lists.infradead.org>; Fri, 23 Aug 2019 01:13:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=+iEZzmAuZ9VlWo1rY1HoUVRqOc3pQbx/jL7+3U6XUrE=;
 b=KQoYmM1kiPcUeWePSRh/MATRSKtGHbDYwmscEnDEJex+ScfK8GC0Pn565Cm8BTQ7fS
 TN0P76B44uAatP3B3BZ61Hp3/1ZaAhV2sP1r/Qzr+VQI42UarAvsX6fIFMwnvDohlRBM
 i/SnM/kjB9KyiVRKnmaBnb4WhhIpto3GuckqI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=+iEZzmAuZ9VlWo1rY1HoUVRqOc3pQbx/jL7+3U6XUrE=;
 b=Ihi8axz/Hru1oUgFuY5q1r02wqO2aqeVgpy2f+bRAF54TrDbn64tc+KCkrSIy2ILcs
 ntfgsmLRroa/M2j21weVh42GMJYcHzPmPlst7buizPEotSKxdkHG7RRTJGZZ20Om8ZSA
 ejsHEjsCw2dVhzAgaucXgbwZ/6ARrjIHGGT53YTNsJEtlYNbrFyQfY0pSbR5PP3oD3b2
 VuN7NmmTuU1RymNPqvMmdpqpqp2/Do2D/MwMMH0cegbZeTAzAPd/i5ztrSsjgzlh39Xx
 g3OnGv7psrzYmUL48YhHKf0Pu0jl6CJbIZWuppnX7bxUctgWQ2bZ0cZHoa/lMBiGjFN7
 2rRQ==
X-Gm-Message-State: APjAAAUS8SGOeqJomu/AiJQrzztCWydosE9M0Zb1CAwQD94StIAO/Nyf
 ktdstPj7CxXDwVvuv/IgbjsrkcyBC1TZpnh/BZaNRg==
X-Google-Smtp-Source: APXvYqxNnLStOk4ZXp11RN7jSj7XJVMznct6ojLcGz5Yls6xfN9NE4mhgE85LSRowXYs50aMoWOgyWYV7b4IKr4cJAE=
X-Received: by 2002:ac8:1e1c:: with SMTP id n28mr3591243qtl.78.1566548035657; 
 Fri, 23 Aug 2019 01:13:55 -0700 (PDT)
MIME-Version: 1.0
References: <20190822094516.55130-1-hsinyi@chromium.org>
 <1566547772.19935.2.camel@mhfsdcap03>
In-Reply-To: <1566547772.19935.2.camel@mhfsdcap03>
From: Hsin-Yi Wang <hsinyi@chromium.org>
Date: Fri, 23 Aug 2019 16:13:29 +0800
Message-ID: <CAJMQK-gb+A9dwyMqMcA5yaaXak9no8_=urwK0XbLnNAEGyZ_hg@mail.gmail.com>
Subject: Re: [PATCH v2] i2c: mediatek: disable zero-length transfers for mt8183
To: Qii Wang <qii.wang@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190823_011400_268173_787A6644 
X-CRM114-Status: UNSURE (   7.68  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:841 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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

On Fri, Aug 23, 2019 at 4:09 PM Qii Wang <qii.wang@mediatek.com> wrote:

> >
> >  static u32 mtk_i2c_functionality(struct i2c_adapter *adap)
> >  {
> > -     return I2C_FUNC_I2C | I2C_FUNC_SMBUS_EMUL;
> > +     if (adap->quirks->flags & I2C_AQ_NO_ZERO_LEN)
> > +             return I2C_FUNC_I2C |
> > +                     (I2C_FUNC_SMBUS_EMUL & ~I2C_FUNC_SMBUS_QUICK);
> > +     else
> > +             return I2C_FUNC_I2C | I2C_FUNC_SMBUS_EMUL;
>
> It can be removed?
See previous discussion: https://patchwork.kernel.org/patch/10814391/#22484435
but not all SoC's quirks has I2C_AQ_NO_ZERO_LEN.

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
