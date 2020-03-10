Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 65793180273
	for <lists+linux-mediatek@lfdr.de>; Tue, 10 Mar 2020 16:52:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LOjacY23rUfYKhGlojp1/JcC1nbbgMTCZIZM1dRDGDw=; b=jPcXNl58h1DRjS
	oBZaqYS317P4JTqb5M0rOJflsqtFcPv6+YUrbTgxdT7X8+5GO9Ayvee7s2LetjEVbUKgktH/Ki9H8
	lZXgLXdTnnPztk0dGLRjE7YPxbVAkJDwKdsstnRQaTQN9ni96b2PNFIGINO+GfESVbwe9KAmUzZYt
	SrONGPhm2J0i5BDioZUpX8kjtdL1JGe2yMLsFLDaOkQogOXdkdotjSxNmNC+0V4LOrwGexYE70I2K
	fezb2i7K6A6woqZi8yB9xvxxRL8iX/lgkmRiaaWPc7PNpjO2/qEgt67ko+hjay8bPhQ4M7/QhD0ia
	+W4kjzd6h3afV8MLMjrg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBhAp-0001PN-4e; Tue, 10 Mar 2020 15:52:03 +0000
Received: from mail-oi1-x22a.google.com ([2607:f8b0:4864:20::22a])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBhAa-0001EQ-Lb
 for linux-mediatek@lists.infradead.org; Tue, 10 Mar 2020 15:51:49 +0000
Received: by mail-oi1-x22a.google.com with SMTP id k21so7432780oij.5
 for <linux-mediatek@lists.infradead.org>; Tue, 10 Mar 2020 08:51:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=TzI3NS1us/9nonvG5pXz3Br1CySTtDhQY55j7Q6IipQ=;
 b=mBsQ1xKQINy5A2P1Vw/LPVEj2a/HGVi3YKU2BuXz7iz+6/A9Eil5VZpaX3mlZF9AcW
 atj5utXs4c9T1S3OZJD6POMTEW7jwHwEXghN2Nl2NuSnK1Zbl2/1nALHQlEV45bcNPPZ
 1Nr0WiCF+FyXxDy16mSv9QxcDB9j05vBTWytODhswMM9R4dCmyLpc4BoMOf60TyHKJAx
 441St8WmfCXE4Jnp29UQo9gFpqMkuzMG7HdUs7jI5UEaclGhaimPK1x/Y9aPQLpR+nTx
 kivYTX3ggu/6XjGjpJ6cPuAZ0AdBJ0+mQN0m7I+Onvr83jg/yJKs/wQ08bAbDLwh12de
 uPLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=TzI3NS1us/9nonvG5pXz3Br1CySTtDhQY55j7Q6IipQ=;
 b=djCSMFByoc13dQAz2FNswxxo3l1dPVDpBKDTnvhFgOc26EQeuoPh66yAkaYi57Gs8a
 A953D2bHnIvDuHg12gbOLS7qLXBiYGRTh4oisSHqiHkvaM8CY7Ge3fLCku5cSKyaeRSa
 C6LN37s2RvqalR9cqv+DgvFDr7PcAxy7k63iHo0WMDzpB1vFad7aq1gkztRSMqlD1eBD
 gqrnV56PvMwXxBAwWGc/5+CziPB4vFkKxuKNb2anmPA/xoVLfyLpbUrZh8LEAZOpv2B1
 zL3q/un2L9IMxWdP0CRCJYtPlBUKf5cPoiwUAi7AmnSxbvaE73TJlJrsHGanPgvP+T+7
 d9pw==
X-Gm-Message-State: ANhLgQ0FsmNG7u05DUg7QZeLeCbc6huYMK+9BPz3tjFqV3XVMJ0v/r5D
 kImR+JJeZhS70IHyV6cjc6Hf6NfQhdPQ076UvDlPZg==
X-Google-Smtp-Source: ADFU+vto/+p/nquy8sen8kW/eAjYeNh2K6wTtdo9nvKXrCLZxqA2YN3nxqEtyQvwvv7lf4XKqCo9hac02b0WuwtUEl8=
X-Received: by 2002:aca:ab16:: with SMTP id u22mr1571231oie.133.1583855507476; 
 Tue, 10 Mar 2020 08:51:47 -0700 (PDT)
MIME-Version: 1.0
References: <20200310134603.30260-1-robert.foss@linaro.org>
 <20200310134603.30260-2-robert.foss@linaro.org>
 <CAOMZO5C9Oj+SmTroE+bSsGcOPpz6se+WOqw1qJU9x6TrzbzZKw@mail.gmail.com>
In-Reply-To: <CAOMZO5C9Oj+SmTroE+bSsGcOPpz6se+WOqw1qJU9x6TrzbzZKw@mail.gmail.com>
From: Robert Foss <robert.foss@linaro.org>
Date: Tue, 10 Mar 2020 16:51:36 +0100
Message-ID: <CAG3jFyuLMxUEr7yZAHT99JK8NoUZc-aquuMEtSBH_Vipa-_giQ@mail.gmail.com>
Subject: Re: [v1 1/3] media: dt-bindings: ov8856: Document YAML bindings
To: Fabio Estevam <festevam@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200310_085148_703118_4CA02E6E 
X-CRM114-Status: GOOD (  11.60  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:22a listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-kernel <linux-kernel@vger.kernel.org>, Tomasz Figa <tfiga@chromium.org>,
 ben.kao@intel.com, Rob Herring <robh+dt@kernel.org>,
 linux-mediatek@lists.infradead.org, Dongchun Zhu <dongchun.zhu@mediatek.com>,
 Jonathan.Cameron@huawei.com, Matthias Brugger <matthias.bgg@gmail.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 "David S. Miller" <davem@davemloft.net>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>,
 linux-media <linux-media@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Hey Fabio,

Thanks for having a look at this series so quickly.

On Tue, 10 Mar 2020 at 14:57, Fabio Estevam <festevam@gmail.com> wrote:
>
> Hi Robert,
>
> On Tue, Mar 10, 2020 at 10:46 AM Robert Foss <robert.foss@linaro.org> wrote:
>
> > +    ov8856: camera-sensor@10 {
> > +        compatible = "ovti,ov8856";
> > +        reg = <0x10>;
> > +        reset-gpios = <&pio 111 GPIO_ACTIVE_HIGH>;
>
> Could you double check this is correct? Other OmniVision sensors have
> reset-gpios as active low.

I have tested this, unfortunately I don't have access to a ov8856
datasheet that includes
this level of detail. But I have tested this.

>
> I suspect that the driver has also an inverted logic, so that's why it works.

That could explain it still working. Let me have a look into the
driver and see what it does.

>
> I don't have access to the datasheet though, so I am just guessing.

Me neither unfortunately, if anyone does have a link for it, I would
very much appreciate it.

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
