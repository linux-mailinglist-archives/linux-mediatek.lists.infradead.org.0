Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 63137138D9B
	for <lists+linux-mediatek@lfdr.de>; Mon, 13 Jan 2020 10:21:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dRPpErLq1N+TN6GzBwigSS0JkW3rQl7zmZ4oLGWsrO4=; b=sOsuFKeVkfcwy6
	N8CpTQsk2hXPCajCbqRUQuZiyCw4e3Q3kuQFB1qj/y3sNEr+WRQr0y5JtU4mBoReYY0hXfB60bveL
	goWgp7y02X19kXZI9WgQyu0ckKsnnT3jYqvtEgKx+rXWhWiNFwERflu1ZkjXrMlOCXqVd0QVBzlVj
	6WfqQjztSoREzFjHojn+Pn2Q6C6w8Xx6dalFCBq2E1Obcn2R20gJyznq+g79MyWrP4WsIrtirTfaC
	l6V+WZHXGQEn/ZoKCFwfhhbWSNCJa15CPbfmi6WvkTQDXytUgDP0YaOivJmah7VHcDxhabfoklCdr
	HSCxlOkCkbmi8mBUrjsA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iqvuA-0004ez-JZ; Mon, 13 Jan 2020 09:21:02 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iqvu1-0004Vg-3U
 for linux-mediatek@lists.infradead.org; Mon, 13 Jan 2020 09:20:54 +0000
Received: from lupine.hi.pengutronix.de
 ([2001:67c:670:100:3ad5:47ff:feaf:1a17] helo=lupine)
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <p.zabel@pengutronix.de>)
 id 1iqvtm-0001CV-TL; Mon, 13 Jan 2020 10:20:38 +0100
Message-ID: <44fba44a4617443c7e5c602eb786b3818f106c3f.camel@pengutronix.de>
Subject: Re: [PATCH v11 1/3] dt-bindings: mediatek: mt8183: Add #reset-cells
From: Philipp Zabel <p.zabel@pengutronix.de>
To: Yong Liang <yong.liang@mediatek.com>, Nicolas Boichat
 <drinkcat@chromium.org>
Date: Mon, 13 Jan 2020 10:20:37 +0100
In-Reply-To: <1578906770.20923.22.camel@mhfsdcap03>
References: <1578639862-14480-1-git-send-email-jiaxin.yu@mediatek.com>
 <1578639862-14480-2-git-send-email-jiaxin.yu@mediatek.com>
 <CANMq1KBNuJDEn57d0ysc2XG0ezWEvJ2Pm88YihDiSZJ=-E=W9g@mail.gmail.com>
 <1578906770.20923.22.camel@mhfsdcap03>
User-Agent: Evolution 3.30.5-1.1 
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:100:3ad5:47ff:feaf:1a17
X-SA-Exim-Mail-From: p.zabel@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-mediatek@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200113_012053_156159_6ED93242 
X-CRM114-Status: UNSURE (   7.33  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Devicetree List <devicetree@vger.kernel.org>,
 Freddy Hsin =?UTF-8?Q?=28=E8=BE=9B=E6=81=92=E8=B1=90=29?=
 <Freddy.Hsin@mediatek.com>,
 "linux-watchdog@vger.kernel.org" <linux-watchdog@vger.kernel.org>,
 Stephen Boyd <sboyd@kernel.org>, lkml <linux-kernel@vger.kernel.org>,
 Jiaxin Yu =?UTF-8?Q?=28=E4=BF=9E=E5=AE=B6=E9=91=AB=29?=
 <Jiaxin.Yu@mediatek.com>, "moderated list:ARM/Mediatek SoC
 support" <linux-mediatek@lists.infradead.org>,
 linux-arm Mailing List <linux-arm-kernel@lists.infradead.org>,
 Yingjoe Chen =?UTF-8?Q?=28=E9=99=B3=E8=8B=B1=E6=B4=B2=29?=
 <Yingjoe.Chen@mediatek.com>, Matthias Brugger <matthias.bgg@gmail.com>,
 Chang-An Chen =?UTF-8?Q?=28=E9=99=B3=E6=98=B6=E5=AE=89=29?=
 <Chang-An.Chen@mediatek.com>,
 "wim@linux-watchdog.org" <wim@linux-watchdog.org>,
 "linux@roeck-us.net" <linux@roeck-us.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Mon, 2020-01-13 at 17:12 +0800, Yong Liang wrote:
> On Mon, 2020-01-13 at 14:10 +0800, Nicolas Boichat wrote:
> > Jiaxin,
> > 
> > On Fri, Jan 10, 2020 at 3:04 PM Jiaxin Yu <jiaxin.yu@mediatek.com> wrote:
> > > Add #reset-cells property and update example
> > > 
> > > Signed-off-by: yong.liang <yong.liang@mediatek.com>
> > > Signed-off-by: Jiaxin Yu <jiaxin.yu@mediatek.com>
> > > Reviewed-by: Yingjoe Chen <yingjoe.chen@mediatek.com>
> > > Reviewed-by: Philipp Zabel <p.zabel@pengutronix.de>

You can keep my R-b on all three patches, this one specifically referred
to the dt-bindings/reset-controller header files.

regards
Philipp


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
