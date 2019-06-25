Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FB3555AE5
	for <lists+linux-mediatek@lfdr.de>; Wed, 26 Jun 2019 00:15:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xjwOiL9pmKOvilBTA0yo+RFTU5Pj6F9Nu0o7wQdy4HU=; b=ppN0FVa342QvNC
	5DQbOi/4aXKvDcAmt4ELJDIUqruclVggt8WdEoymbOeCedvJiqVMItxLduvavMbK+yoJfEGJEjZ/N
	xB35x6M/sCRb0JxrhP3dyjdQriN2ZFi8gV64k4ifa2KvLbXpJzZ47NMKz6y3Q+3G9SkAVzaoh74pC
	MASM6V1zctW3IX03wrXa7iUZkTAFwZxzxlsQSFAdt5Ex+5jlAhEwYDr9OAfgb46NBREESLYk2uCaq
	2rw6qVc8eI3j9JsU+dy+fC4dwR+3fLQ5yKvBwEk7jNkRsK0nPoMEq+SGqoJ95xGJgHdnp4Z4LkmU0
	jEqc1bBCuoJdCqmNTKnQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hftjE-0002K8-Bx; Tue, 25 Jun 2019 22:15:52 +0000
Received: from mail-ed1-x543.google.com ([2a00:1450:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hftia-0001qF-3u
 for linux-mediatek@lists.infradead.org; Tue, 25 Jun 2019 22:15:16 +0000
Received: by mail-ed1-x543.google.com with SMTP id e3so126753edr.10
 for <linux-mediatek@lists.infradead.org>; Tue, 25 Jun 2019 15:15:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=YJ89zH+nrBwCxeV+GQNcYUmbxQGHmENhmGFBPbX3GJo=;
 b=KJlAXSzAxB0+BJHxmMKxW382DlOlNE09gm8FYZB09DilCsNIZuNPk5vRTRgRFvs2en
 etVzniqQZT/NluupenQeUXvi8YKmzG0jnDJG69LrV9cWU9Eq2505ud8Jz/3mces9Wc8e
 iuPE3+wnhDxYb/EmxxG51frq8lgN+Un5KOuWvxStzlJXrbv4bKxRgwiQ/6lxLpV86nb0
 MTykgWffBjjMKmphuWm2BRW4GfLwyri92Bc77M43i2SLkhahM+agPeIDS6wJkI3U1OEW
 AOcLjigCgs0A+lzrincfxSY8/aDe6AF7UfXi8mwVjTkywTiLm4/ArKwtnHA5BM0yCFIQ
 HJAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=YJ89zH+nrBwCxeV+GQNcYUmbxQGHmENhmGFBPbX3GJo=;
 b=X1g+823h9iIHoP3pTsxpLg8crxNjhFqahb9hq4b0vl85VZcJRGxUv8xSUKMEi6sUq+
 h1hMtYzApx6gSx5ujk4vRnM49xfO2jR5wa3+PirzMI4fgA0jdLct9GefksS7kC/jISvX
 WNb98b+nNSEFVQ7DhW52UkgrSArdgfFXhgMQRtLTOj5FTycaL62EP2k0CUpB7uH6kHo+
 xFr45Miqn+hsBeTjFk2vHk7gwz13UIvDUcuOHvugSk964KYDZUJDdBJeZ9jeoOnRU4vb
 X8gKz6fVB3XmxO3NbQSa77D7XH0ePdkN6m/kUMuP+zie8TuJVKuwzDY4xxYXShc5Hqz+
 eHDg==
X-Gm-Message-State: APjAAAVxUglSGbwNpylpAFx3cBjQ6Be3Qq8wOIndC45nPD6WTLpqhp34
 Xe/uQBt866VQgRCpNX+nknuhehxWdNEleAREvJhu1lMawu75LQ==
X-Google-Smtp-Source: APXvYqz8DbJpNpb5znvTU5EwdpgcMbfZlDW+KqjUocfiDtvsalxwFVYrmPDkScayk8XvGkp02gU2jXIk25RU3418YcY=
X-Received: by 2002:a50:987a:: with SMTP id h55mr983205edb.108.1561500910382; 
 Tue, 25 Jun 2019 15:15:10 -0700 (PDT)
MIME-Version: 1.0
References: <20190624145251.4849-1-opensource@vdorst.com>
 <20190624145251.4849-2-opensource@vdorst.com>
 <20190624153950.hdsuhrvfd77heyor@shell.armlinux.org.uk>
 <6f80325d-4b42-6174-e050-48626f7a3662@gmail.com>
 <20190625215329.5ubixxiwprnubwmv@shell.armlinux.org.uk>
In-Reply-To: <20190625215329.5ubixxiwprnubwmv@shell.armlinux.org.uk>
From: Vladimir Oltean <olteanv@gmail.com>
Date: Wed, 26 Jun 2019 01:14:59 +0300
Message-ID: <CA+h21hqK0VMtHpZ6eka9ESuMhsFTw2mx+c0GYmxq4_G_YmiVpg@mail.gmail.com>
Subject: Re: [PATCH RFC net-next 1/5] net: dsa: mt7530: Convert to PHYLINK API
To: Russell King - ARM Linux admin <linux@armlinux.org.uk>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_151512_700011_387C07FC 
X-CRM114-Status: GOOD (  28.56  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (olteanv[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Andrew Lunn <andrew@lunn.ch>, Florian Fainelli <f.fainelli@gmail.com>,
 frank-w@public-files.de, netdev <netdev@vger.kernel.org>,
 sean.wang@mediatek.com, linux-mips@vger.kernel.org,
 Vivien Didelot <vivien.didelot@gmail.com>,
 =?UTF-8?Q?Ren=C3=A9_van_Dorst?= <opensource@vdorst.com>,
 linux-mediatek@lists.infradead.org, matthias.bgg@gmail.com,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Wed, 26 Jun 2019 at 00:53, Russell King - ARM Linux admin
<linux@armlinux.org.uk> wrote:
>
> On Tue, Jun 25, 2019 at 11:24:01PM +0300, Vladimir Oltean wrote:
> > Hi Russell,
> >
> > On 6/24/19 6:39 PM, Russell King - ARM Linux admin wrote:
> > > This should be removed - state->link is not for use in mac_config.
> > > Even in fixed mode, the link can be brought up/down by means of a
> > > gpio, and this should be dealt with via the mac_link_* functions.
> > >
> >
> > What do you mean exactly that state->link is not for use, is that true in
> > general?
>
> Yes.  mac_config() should not touch it; it is not always in a defined
> state.  For example, if you set modes via ethtool (the
> ethtool_ksettings_set API) then state->link will probably contain
> zero irrespective of the true link state.
>

Experimentally, state->link is zero at the same time as state->speed
is -1, so just ignoring !state->link made sense. This is not in-band
AN. What is your suggestion? Should I proceed to try and configure the
MAC for SPEED_UNKNOWN?

> It exists in this structure because it was convenient to just use one
> structure to store all the link information in various parts of the
> code, and when requesting the negotiated in-band MAC configuration.
>
> I've come to the conclusion that that decision was a mistake, based
> on patches such as the above mistakenly thinking that everything in
> the state structure is fair game.  I've since updated the docs to
> explicitly spell it out, but I'm also looking at the feasibility of
> changing the mac_config() interface entirely - splitting it into two
> (mac_config_fixed() and mac_config_inband()) and passing only the
> appropriate parameters to each.
>
> However, having looked at that, I think such a change will make some
> MAC drivers quite a bit more complicated - having all the config
> steps in one method appears to make the configuration of MAC drivers
> easier (eg, mvneta, mvpp2.)
>
> > In drivers/net/dsa/sja1105/sja1105_main.c, if I remove the "if
> > (!state->link)" guard, I see PHYLINK calls with a SPEED_UNKNOWN argument for
> > ports that are BR_STATE_DISABLED. Is that normal?
>
> This looks like another driver which has been converted to phylink
> without my review; I certainly wasn't aware of it.  It gets a few
> things wrong, such as:
>
> 1) not checking state->interface in the validate callback - so it
>    is basically saying that it can support any PHY interface mode
>    that the kernel happens to support.
>

Partially true. It does check the DT bindings for supported MII modes
in sja1105_init_mii_settings (for fundamental reasons... the switch
expects an 'all-in-one' configuration buffer with the operating modes
of all MACs - don't ask me to delay the uploading of this static
config until all ports collected their interface_mode from phylink via
the mac_config callback - it's a deadlock).
It is a gigabit switch with MII/RMII/RGMII MACs - I have never seen
any PHY wired for these modes that can change system interface type.

> 2) if phylink is configured to use in-band, then state->speed is
>    undefined; this driver will fail.  (If folk don't want to support
>    that, we ought to have a way to tell phylink to reject anything
>    that attempts to set it to in-band mode!)
>

Ok.

> 3) it doesn't implement phylink_mac_link_state DSA ops, so it doesn't
>    support SGMII or 802.3z phy interface modes (see 1).
>

No, it doesn't.
Some odd switch in this device family supports SGMII on 1 of its
ports, however I haven't put my hands on it.
When I do I'll add checks for strange scenarios, like connecting it to
an Aquantia PHY that can switch between SGMII and USXGMII (although
why would anyone pair a 10G capable PHY to a 1G capable MAC...)

> --
> RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
> FTTC broadband for 0.8mile line in suburbia: sync at 12.1Mbps down 622kbps up
> According to speedtest.net: 11.9Mbps down 500kbps up

Thanks,
-Vladimir

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
