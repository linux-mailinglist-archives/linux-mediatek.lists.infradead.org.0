Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 30C4A7B9AA
	for <lists+linux-mediatek@lfdr.de>; Wed, 31 Jul 2019 08:29:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UJ3kUJ7HM9EbIwsd6sylJ/bToOg/Xl9ZF2QCzgFZlps=; b=SUZdynOqU9kuiN
	OwfU3OzEJ2hcwYt3w60h49bZ5Xj5lF44ilz9rMYCct24t9eoLvMwNWL92QWbOzJ6U/shVlnp4XjGG
	tXDDE/CAdFkpG/x4KF7grIZY8qmyBs5XnskHMbxjvZJBhNVMpgvywnElB7ZJhVso9P3kSrF7nlCY9
	504xG95RV/cZBNhIO2qtEQmK1jnaA6BM1vSkBdif7h3sPpMzxeZHdusMJqwbUk5X0t5kuMIrYJvzc
	8NTMZQEE9U5Cq0POuOtjkkYOjcu3Ldt/pXawcxAk7ChgA9fqVCTgW4qKLmDr+ZAeopV+rbNIJcHTG
	Xs/kqPGN6wJPyzPJb51A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsi7D-0004ON-PZ; Wed, 31 Jul 2019 06:29:35 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsi79-0004Nx-8j; Wed, 31 Jul 2019 06:29:32 +0000
X-UUID: edf355a4554342f7ba859eea189bcbcd-20190730
X-UUID: edf355a4554342f7ba859eea189bcbcd-20190730
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <chunfeng.yun@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1746730867; Tue, 30 Jul 2019 22:29:23 -0800
Received: from MTKMBS31N1.mediatek.inc (172.27.4.69) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Tue, 30 Jul 2019 23:29:22 -0700
Received: from MTKCAS36.mediatek.inc (172.27.4.186) by MTKMBS31N1.mediatek.inc
 (172.27.4.69) with Microsoft SMTP Server (TLS) id 15.0.1395.4;
 Wed, 31 Jul 2019 14:29:19 +0800
Received: from [10.17.3.153] (172.27.4.253) by MTKCAS36.mediatek.inc
 (172.27.4.170) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Wed, 31 Jul 2019 14:29:18 +0800
Message-ID: <1564554558.5579.7.camel@mhfsdcap03>
Subject: Re: [PATCH v8 08/11] usb: roles: get usb-role-switch from parent
From: Chunfeng Yun <chunfeng.yun@mediatek.com>
To: Heikki Krogerus <heikki.krogerus@linux.intel.com>
Date: Wed, 31 Jul 2019 14:29:18 +0800
In-Reply-To: <20190729142500.GE28600@kuha.fi.intel.com>
References: <1563958245-6321-1-git-send-email-chunfeng.yun@mediatek.com>
 <1563958245-6321-9-git-send-email-chunfeng.yun@mediatek.com>
 <20190729142500.GE28600@kuha.fi.intel.com>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-TM-SNTS-SMTP: 34B54DA7E8EDA581CD499007594330F98B92C9106B9501712734F061E9E78ACA2000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190730_232931_320129_C864B21A 
X-CRM114-Status: GOOD (  22.05  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Hans de Goede <hdegoede@redhat.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Linus Walleij <linus.walleij@linaro.org>, linux-usb@vger.kernel.org,
 linux-kernel@vger.kernel.org, Biju Das <biju.das@bp.renesas.com>,
 Badhri Jagan Sridharan <badhri@google.com>,
 Andy Shevchenko <andy.shevchenko@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 linux-mediatek@lists.infradead.org, Min Guo <min.guo@mediatek.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Adam Thomson <Adam.Thomson.Opensource@diasemi.com>,
 linux-arm-kernel@lists.infradead.org, Li Jun <jun.li@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Hi Heikki,

On Mon, 2019-07-29 at 17:25 +0300, Heikki Krogerus wrote:
> On Wed, Jul 24, 2019 at 04:50:42PM +0800, Chunfeng Yun wrote:
> > when the USB host controller is the parent of the connector,
> > usually type-B, sometimes don't need the graph, so we should
> > check whether it's parent registers usb-role-switch or not
> > firstly, and get it if exists.
> > 
> > Signed-off-by: Heikki Krogerus <heikki.krogerus@linux.intel.com>
> 
> I don't think I actually wrote the patch. I may have proposed the code
> for you, but I never prepared a patch out out that. Please drop the
> above Signed-off-by line if that is the case. I case I really did
> write the patch, then you are missing the "From: Heikki..." first
> line, but I really don't remember preparing the patch.
> 
> If the idea came from me, you can use for example the suggested-by
> tag: "Suggested-by: Heikki Krogerus <heikki.krogerus...".
Ok, thanks

> 
> > Signed-off-by: Chunfeng Yun <chunfeng.yun@mediatek.com>
> > ---
> > v8: no changes
> > v7:
> >   add signed-off-by Chunfeng
> > 
> > v6:
> >   new patch
> > ---
> >  drivers/usb/roles/class.c | 25 +++++++++++++++++++++----
> >  1 file changed, 21 insertions(+), 4 deletions(-)
> > 
> > diff --git a/drivers/usb/roles/class.c b/drivers/usb/roles/class.c
> > index 5b637aaf311f..87439a84c983 100644
> > --- a/drivers/usb/roles/class.c
> > +++ b/drivers/usb/roles/class.c
> > @@ -114,6 +114,19 @@ static void *usb_role_switch_match(struct device_connection *con, int ep,
> >  	return dev ? to_role_switch(dev) : ERR_PTR(-EPROBE_DEFER);
> >  }
> >  
> > +static struct usb_role_switch *
> > +usb_role_switch_is_parent(struct fwnode_handle *fwnode)
> > +{
> > +	struct fwnode_handle *parent = fwnode_get_parent(fwnode);
> > +	struct device *dev;
> > +
> > +	if (!parent || !fwnode_property_present(parent, "usb-role-switch"))
> > +		return NULL;
> > +
> > +	dev = class_find_device(role_class, NULL, parent, switch_fwnode_match);
> > +	return dev ? to_role_switch(dev) : ERR_PTR(-EPROBE_DEFER);
> > +}
> > +
> >  /**
> >   * usb_role_switch_get - Find USB role switch linked with the caller
> >   * @dev: The caller device
> > @@ -125,8 +138,10 @@ struct usb_role_switch *usb_role_switch_get(struct device *dev)
> >  {
> >  	struct usb_role_switch *sw;
> >  
> > -	sw = device_connection_find_match(dev, "usb-role-switch", NULL,
> > -					  usb_role_switch_match);
> > +	sw = usb_role_switch_is_parent(dev_fwnode(dev));
> > +	if (!sw)
> > +		sw = device_connection_find_match(dev, "usb-role-switch", NULL,
> > +						  usb_role_switch_match);
> >  
> >  	if (!IS_ERR_OR_NULL(sw))
> >  		WARN_ON(!try_module_get(sw->dev.parent->driver->owner));
> > @@ -146,8 +161,10 @@ struct usb_role_switch *fwnode_usb_role_switch_get(struct fwnode_handle *fwnode)
> >  {
> >  	struct usb_role_switch *sw;
> >  
> > -	sw = fwnode_connection_find_match(fwnode, "usb-role-switch", NULL,
> > -					  usb_role_switch_match);
> > +	sw = usb_role_switch_is_parent(fwnode);
> > +	if (!sw)
> > +		sw = fwnode_connection_find_match(fwnode, "usb-role-switch",
> > +						  NULL, usb_role_switch_match);
> >  	if (!IS_ERR_OR_NULL(sw))
> >  		WARN_ON(!try_module_get(sw->dev.parent->driver->owner));
> >  
> > -- 
> > 2.21.0
> 
> thanks,
> 



_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
