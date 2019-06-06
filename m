Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 29B9136A35
	for <lists+linux-mediatek@lfdr.de>; Thu,  6 Jun 2019 04:54:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=e68njJKXNKCaK0PY0VtttTqyblDxbgnjj+BZJ1B4dNk=; b=gye90p4yN6ArJ1
	huzDefQz3LW6r4WWQxK06lIypmGFWq8LTlhCw7EW81KKdCCQd/GwBlpEIYAGeFIv/cDaOxQyOXjZA
	juc5OW8dD79yDogiJbFRVytW/9zEInxLVPBmlvchxPWrMp+WRvcwlKKZVSbZ4RW/NP2EXYCfSa63+
	Ca0rIzpkyhVm+/YUBfXV0xQK26+RYr6fvK/KGPuZhjd/NI+zOpIYRBYUzNKoqt8X0REQoK5pU1Or3
	1y/00ty7BjC6yWXbWW0wpLLmTRzeLVXXZDOyoUGWEJw/U9X3oG+dCeozfN6Zy9S3TgE1eVltcXnBE
	/qZfPzAoj8AF6pUQ2KpQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYiXa-00070w-UA; Thu, 06 Jun 2019 02:54:10 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYiXQ-0006rX-BH; Thu, 06 Jun 2019 02:54:01 +0000
X-UUID: 7defee9b654a4edea3c52625a89c8023-20190605
X-UUID: 7defee9b654a4edea3c52625a89c8023-20190605
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw01.mediatek.com
 (envelope-from <chunfeng.yun@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1528234389; Wed, 05 Jun 2019 18:53:55 -0800
Received: from MTKMBS31N1.mediatek.inc (172.27.4.69) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 5 Jun 2019 19:53:54 -0700
Received: from MTKCAS32.mediatek.inc (172.27.4.184) by MTKMBS31N1.mediatek.inc
 (172.27.4.69) with Microsoft SMTP Server (TLS) id 15.0.1395.4;
 Thu, 6 Jun 2019 10:53:51 +0800
Received: from [10.17.3.153] (172.27.4.253) by MTKCAS32.mediatek.inc
 (172.27.4.170) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Thu, 6 Jun 2019 10:53:51 +0800
Message-ID: <1559789630.8487.111.camel@mhfsdcap03>
Subject: Re: [PATCH v6 09/10] usb: roles: add USB Type-B GPIO connector driver
From: Chunfeng Yun <chunfeng.yun@mediatek.com>
To: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Thu, 6 Jun 2019 10:53:51 +0800
In-Reply-To: <CAHp75VcbZwd0e6r38C2x7HLEHLr4oR7TjwdDXnDxRPRs3anwgA@mail.gmail.com>
References: <1559115828-19146-1-git-send-email-chunfeng.yun@mediatek.com>
 <1559115828-19146-10-git-send-email-chunfeng.yun@mediatek.com>
 <CAHp75VcbZwd0e6r38C2x7HLEHLr4oR7TjwdDXnDxRPRs3anwgA@mail.gmail.com>
X-Mailer: Evolution 3.2.3-0ubuntu6 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190605_195400_690747_D7B632E3 
X-CRM114-Status: GOOD (  11.33  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 devicetree <devicetree@vger.kernel.org>,
 Heikki Krogerus <heikki.krogerus@linux.intel.com>,
 Hans de Goede <hdegoede@redhat.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Linus Walleij <linus.walleij@linaro.org>, USB <linux-usb@vger.kernel.org>, Yu
 Chen <chenyu56@huawei.com>, Linux
 Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Biju Das <biju.das@bp.renesas.com>, Badhri Jagan
 Sridharan <badhri@google.com>, Rob Herring <robh+dt@kernel.org>,
 "moderated list:ARM/Mediatek SoC
 support" <linux-mediatek@lists.infradead.org>, Min Guo <min.guo@mediatek.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Adam Thomson <Adam.Thomson.Opensource@diasemi.com>,
 linux-arm Mailing List <linux-arm-kernel@lists.infradead.org>,
 Li Jun <jun.li@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Wed, 2019-06-05 at 11:45 +0300, Andy Shevchenko wrote:
> On Wed, May 29, 2019 at 10:44 AM Chunfeng Yun <chunfeng.yun@mediatek.com> wrote:
> >
> > Due to the requirement of usb-connector.txt binding, the old way
> > using extcon to support USB Dual-Role switch is now deprecated
> > when use Type-B connector.
> > This patch introduces a driver of Type-B connector which typically
> > uses an input GPIO to detect USB ID pin, and try to replace the
> > function provided by extcon-usb-gpio driver
> 
> > +static SIMPLE_DEV_PM_OPS(usb_conn_pm_ops,
> > +                        usb_conn_suspend, usb_conn_resume);
> > +
> > +#define DEV_PMS_OPS (IS_ENABLED(CONFIG_PM_SLEEP) ? &usb_conn_pm_ops : NULL)
> 
> Why this macro is needed?
Want to set .pm as NULL when CONFIG_PM_SLEEP is not enabled.

Thanks
> 



_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
