Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BBF58CA6A
	for <lists+linux-mediatek@lfdr.de>; Wed, 14 Aug 2019 06:34:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lDMdB4gUjvIWp9pmLy6lMPDYly7dJj2LvCtkg1KHg08=; b=m14m66zoeBguMp
	rdmr+SK9/2cf0jpk0pBqvjxyBrK43iFIMBOqxe83YAiuofKQ/3PKqfim0Hhwrw0H1/d+6Y/lRwrnQ
	wNZDre5sn/Bb8NVuU3lx1THm51ux8s5v7a3NIw8RM0cMIhp3EcsPzgJ6XobBVc+w6VHt2P1TsET4A
	UMecLZl92GH4i9hsRhcYNBIrSY1uHRe2WDaNSlt4goADYEcu5B5TrxJSS9VYalhtNjeOSLm7ui9wA
	SSYiw0MlOT27tbZdHHzhHcItVKI63INLqc2ylY9sIvcI4nmNUEtxTGpLuDTb/rJYF2yJmjyWUF1Xa
	R3V00XVHH5Ic1VhpuhvQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxkzC-00064Z-Az; Wed, 14 Aug 2019 04:34:10 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxkyt-0005tD-OW; Wed, 14 Aug 2019 04:33:53 +0000
X-UUID: 9c14c92789874eea9857a22151d37342-20190813
X-UUID: 9c14c92789874eea9857a22151d37342-20190813
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw01.mediatek.com
 (envelope-from <chunfeng.yun@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1530934842; Tue, 13 Aug 2019 20:33:40 -0800
Received: from MTKMBS31N2.mediatek.inc (172.27.4.87) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 13 Aug 2019 21:33:39 -0700
Received: from MTKCAS32.mediatek.inc (172.27.4.184) by MTKMBS31N2.mediatek.inc
 (172.27.4.87) with Microsoft SMTP Server (TLS) id 15.0.1395.4;
 Wed, 14 Aug 2019 12:33:36 +0800
Received: from [10.17.3.153] (172.27.4.253) by MTKCAS32.mediatek.inc
 (172.27.4.170) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Wed, 14 Aug 2019 12:33:36 +0800
Message-ID: <1565757215.7317.15.camel@mhfsdcap03>
Subject: Re: [PATCH next v9 07/11] usb: roles: Add
 fwnode_usb_role_switch_get() function
From: Chunfeng Yun <chunfeng.yun@mediatek.com>
To: Heikki Krogerus <heikki.krogerus@linux.intel.com>
Date: Wed, 14 Aug 2019 12:33:35 +0800
In-Reply-To: <20190813130110.GE4691@kuha.fi.intel.com>
References: <1565695634-9711-1-git-send-email-chunfeng.yun@mediatek.com>
 <1565695634-9711-8-git-send-email-chunfeng.yun@mediatek.com>
 <20190813130110.GE4691@kuha.fi.intel.com>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-TM-SNTS-SMTP: 4CA480A775488A034C17FADD4441FFF8772F99EADAA5F19D81249A977504955E2000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190813_213351_804441_8E58B57C 
X-CRM114-Status: UNSURE (   9.63  )
X-CRM114-Notice: Please train this message.
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Hans de Goede <hdegoede@redhat.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Linus Walleij <linus.walleij@linaro.org>, linux-usb@vger.kernel.org,
 linux-kernel@vger.kernel.org, Biju Das <biju.das@bp.renesas.com>,
 Badhri Jagan Sridharan <badhri@google.com>,
 Andy Shevchenko <andy.shevchenko@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 linux-mediatek@lists.infradead.org, Min Guo <min.guo@mediatek.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Nagarjuna Kristam <nkristam@nvidia.com>,
 Adam Thomson <Adam.Thomson.Opensource@diasemi.com>,
 linux-arm-kernel@lists.infradead.org, Li Jun <jun.li@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Tue, 2019-08-13 at 16:01 +0300, Heikki Krogerus wrote:
> On Tue, Aug 13, 2019 at 07:27:10PM +0800, Chunfeng Yun wrote:
> > From: Heikki Krogerus <heikki.krogerus@linux.intel.com>
> > 
> > The fwnode_usb_role_switch_get() function is exactly the
> > same as usb_role_switch_get(), except that it takes struct
> > fwnode_handle as parameter instead of struct device.
> > 
> > Suggested-by: Heikki Krogerus <heikki.krogerus@linux.intel.com>
> 
> Why is my SoB replaced with Suggested-by tag in this patch?
Sorry, my mistake, I misunderstand what you mean, you suggest use
Suggested-by in [v8 08/11], but I replaced it all for [06, 07, 08], 
will abandon the changes of [06,07] in next version.

> 
> thanks,
> 



_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
