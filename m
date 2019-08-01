Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4378C7E0FC
	for <lists+linux-mediatek@lfdr.de>; Thu,  1 Aug 2019 19:22:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	From:Subject:To:Message-Id:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZwfqWptaiOiuJu54EBZwKuZyV8gpPq10QlQnaOSZKpM=; b=S/qGDki0BVvF2T
	w2CLZiFzDb4sPfP0xj31DmIhJCVllZgHzNVN8p7gjVXDGTA29X0herpf8bYQYSZSVynkezdN/peU2
	LauJKnF9xFF8pMAPJqXlAQBgglAGegyLIZkdHMYWPXZJBvHklAxg5QUn94n8Yl9BD1QLmM3m0CeBT
	F4TejN1W8Ais3sRqtdYEpeweYfXPN3gnJsjlgQK4hR2WVxTWtxhc0SGAePiQ8TlOK+VRGFdaqeB57
	bKhRFUPqRG8W/cSggxXopMAD6fsDVOrX5zuKEu2duQJwzC2boebZTKDXYodnVhnL/fZf06YWWQiME
	F0wUX+60YqbXnLJwgg/w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htEmv-0004xQ-B4; Thu, 01 Aug 2019 17:22:49 +0000
Received: from shards.monkeyblade.net ([2620:137:e000::1:9])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1htEmr-0004x2-QD
 for linux-mediatek@lists.infradead.org; Thu, 01 Aug 2019 17:22:47 +0000
Received: from localhost (c-24-22-75-21.hsd1.or.comcast.net [24.22.75.21])
 (using TLSv1 with cipher AES256-SHA (256/256 bits))
 (Client did not present a certificate)
 (Authenticated sender: davem-davemloft)
 by shards.monkeyblade.net (Postfix) with ESMTPSA id 065E0153F53E0;
 Thu,  1 Aug 2019 10:22:44 -0700 (PDT)
Date: Thu, 01 Aug 2019 13:22:44 -0400 (EDT)
Message-Id: <20190801.132244.614118963896811192.davem@davemloft.net>
To: opensource@vdorst.com
Subject: Re: [PATCH net-next 1/3] net: dsa: mt7530: Convert to PHYLINK API
From: David Miller <davem@davemloft.net>
In-Reply-To: <20190801172104.Horde.Cuwt4jywUX_mcO9-n8QpWTN@www.vdorst.com>
References: <20190724192549.24615-2-opensource@vdorst.com>
 <20190727184828.GT1330@shell.armlinux.org.uk>
 <20190801172104.Horde.Cuwt4jywUX_mcO9-n8QpWTN@www.vdorst.com>
X-Mailer: Mew version 6.8 on Emacs 26.1
Mime-Version: 1.0
X-Greylist: Sender succeeded SMTP AUTH, not delayed by milter-greylist-4.5.12
 (shards.monkeyblade.net [149.20.54.216]);
 Thu, 01 Aug 2019 10:22:45 -0700 (PDT)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190801_102245_853635_DA2C1973 
X-CRM114-Status: GOOD (  11.20  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: andrew@lunn.ch, f.fainelli@gmail.com, frank-w@public-files.de,
 netdev@vger.kernel.org, sean.wang@mediatek.com, linux-mips@vger.kernel.org,
 linux@armlinux.org.uk, devicetree@vger.kernel.org, robh+dt@kernel.org,
 linux-mediatek@lists.infradead.org, john@phrozen.org, matthias.bgg@gmail.com,
 vivien.didelot@gmail.com
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

From: Ren=E9 van Dorst <opensource@vdorst.com>
Date: Thu, 01 Aug 2019 17:21:04 +0000

> Quoting Russell King - ARM Linux admin <linux@armlinux.org.uk>:
> =

>> Hi,
>>
>> Just a couple of minor points.
>>
>> On Wed, Jul 24, 2019 at 09:25:47PM +0200, Ren=E9 van Dorst wrote:
> =

> <snip>
> =

>>> +
>>> +static void mt7530_phylink_validate(struct dsa_switch *ds, int port,
>>> +				    unsigned long *supported,
>>> +				    struct phylink_link_state *state)
>>> +{
>>> +	__ETHTOOL_DECLARE_LINK_MODE_MASK(mask) =3D { 0, };
>>> +
>>> +	switch (port) {
>>> +	case 0: /* Internal phy */
>>> +	case 1:
>>> +	case 2:
>>> +	case 3:
>>> +	case 4:
>>> +		if (state->interface !=3D PHY_INTERFACE_MODE_NA &&
>>> +		    state->interface !=3D PHY_INTERFACE_MODE_GMII)
>>> +			goto unsupported;
>>> +		break;
>>> +	/* case 5: Port 5 not supported! */
>>> +	case 6: /* 1st cpu port */
>>> +		if (state->interface !=3D PHY_INTERFACE_MODE_NA &&
>>> +		    state->interface !=3D PHY_INTERFACE_MODE_RGMII &&
>>> +		    state->interface !=3D PHY_INTERFACE_MODE_TRGMII)
>>> +			goto unsupported;
>>> +		break;
>>> +	default:
>>> +		linkmode_zero(supported);
>>> + dev_err(ds->dev, "%s: unsupported port: %i\n", __func__, port);
>>
>> You could reorder this as:
>>
>> 	default:
>> 		dev_err(ds->dev, "%s: unsupported port: %i\n", __func__, port);
>> 	unsupported:
>> 		linkmode_zero(supported);
>>
> =

> Hi David,
> =

>> and save having the "unsupported" at the end of the function.  Not
>> sure
>> what DaveM would think of it though.
> =

> Can you give your option about this?
> So I know what to do with it and make a new series.

Russell's suggestion is fine.

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
