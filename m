Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 23A9B1A777A
	for <lists+linux-mediatek@lfdr.de>; Tue, 14 Apr 2020 11:38:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/8Wj8D07rTeE63caqXxGGVqudNrwCeoqVoeSl8oa6oU=; b=QFZUD84gx0FqUn
	LO/bHLnnvGh2VcaNfm0f95oBON0bqbHQwXAN95Sz//1El0rWpy4XNCGb9ouhQ4C4jUHR/EpV0aKgg
	+JpC8dER1HYojOQuJZ7/P6FK+TTfYd4wVFfhmvTiONrmxlRoQMYFu7f7uOIyDri9ff2nkA0mbRZjK
	XioXq1HkN03tUE6mtUENbrr4U2t7JIPnY8SgFZSwZ6VXVV+tkAC8Unz+fh3G0ajmzA+efLg0k+YP7
	H0aoDm+fGsSd8DL6Vvlcrt9C51ZC0guUgVEeAqnvBNC+CKgN6pNrDCZtgWl+hZvhWxCF+0r7CInJ/
	kH1kOMnibSZ5tSFIWrzQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOI1P-0002ac-GR; Tue, 14 Apr 2020 09:38:23 +0000
Received: from mail-ed1-x543.google.com ([2a00:1450:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOI1L-0002Zr-Kq
 for linux-mediatek@lists.infradead.org; Tue, 14 Apr 2020 09:38:21 +0000
Received: by mail-ed1-x543.google.com with SMTP id p6so16199260edu.10
 for <linux-mediatek@lists.infradead.org>; Tue, 14 Apr 2020 02:38:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=l0sElnDfI+ZyVqRL2zYk64+Rr5oxxTVwp3ecCT2n+44=;
 b=fRoNYYXgsYeuzWQ+HuHIHEIb0CJmAFKpi8LpRXp1aRZ3t4CwZ24F+lFJyRSChsga8d
 0RL1mAR8XVHFIB51ZXSaNECRtUUYmf4RKAIenb5FnVjVueDd55pqoTxU7UHPqYPK/PIz
 xxfKSFuNIacBncU7uq5dbgtnwyVHeNwOg0kjCZNetmo+SvXbQ2TsRhjygeJ6lb4UVI+m
 LyEVcQQRReWzT715iLOCp11oxeUhwatvshzXJHqr0W4dzPqMwYwaz1ov9+QjCkzlBcGi
 gw3ByE0ULyOq1SmwFREy8iYjSiBo1n+uFPXbSLTg4h9Ew2ZTJ/rrgPUC7pUQjc/UuF3m
 9tvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=l0sElnDfI+ZyVqRL2zYk64+Rr5oxxTVwp3ecCT2n+44=;
 b=Mv7sovLruWkKWTNGAmJbwmlnOko6p586GAWyiiGlD+XKc0bS6KuG9j3PMPs/hw0DR6
 SR86Fxyi1G5TwOXwdXDKTWkM2o32T/tEdK7RnOoAqD3jdTXZqdF2vvg2LKx14NHI0KAZ
 h7/6/kqvvd3XSM/3eBcc6vQNMGunnjasI8Jckv/TQPELs/f8/3MeoKwCWlDXtNg1gnqk
 dcKl+CoxeP8MNmvPiXMxYIzJHsfl+yMVYsmBWQHYFk2ElPywmHl2VIrgIkZRy+/mKMV2
 7TzOwYKiJl3WWYHdndWA3pPWDXUsIUGsq77cpSiBgt3nsTEwHKxebAR9EqwhVOQsHOON
 CY1g==
X-Gm-Message-State: AGi0Puam4rhYSTJrQKKRvIk4dNtkZ0U8mCUJipE/vXVWg+0tckN9FTtn
 c6iiqXzvXo/ZkwsurqzjzC54x6HS/FUXzvZ/2+0=
X-Google-Smtp-Source: APiQypLOFsfGeYYJBkzEXQ8z9r10aKGeqkfdbpSDChp49Ujn1YdohXhW0v0idRXsv053tn2H2ERXDjBmTnw/hdtIFdA=
X-Received: by 2002:a17:906:78c:: with SMTP id
 l12mr2415056ejc.189.1586857097322; 
 Tue, 14 Apr 2020 02:38:17 -0700 (PDT)
MIME-Version: 1.0
References: <20200409155409.12043-1-dqfext@gmail.com>
 <20200409.102035.13094168508101122.davem@davemloft.net>
 <CALW65jbrg1doaRBPdGQkQ-PG6dnh_L4va7RxcMxyKKMqasN7bQ@mail.gmail.com>
 <c7da2de5-5e25-6284-0b35-fd2dbceb9c4f@gmail.com>
 <CALW65jZAdFFNfGioAFWPwYN+F4baL0Z-+FX_pAte97uxNK3T6g@mail.gmail.com>
 <CA+h21hp8LueSfh+Z8f0-Y7dTPB50d+3E3K9n6R5MwNzA3Dh1Lw@mail.gmail.com>
 <CALW65jYodd=GoWrGTcAWEO6wNQdvSQjgO=4tmNYNnmbCh7n8sg@mail.gmail.com>
In-Reply-To: <CALW65jYodd=GoWrGTcAWEO6wNQdvSQjgO=4tmNYNnmbCh7n8sg@mail.gmail.com>
From: Vladimir Oltean <olteanv@gmail.com>
Date: Tue, 14 Apr 2020 12:38:06 +0300
Message-ID: <CA+h21hrR-vs=iMHYTzYTHrXJaEQqONdSzGt5mOgTq6G=VhK=GA@mail.gmail.com>
Subject: Re: [PATCH net-next] net: dsa: mt7530: enable jumbo frame
To: DENG Qingfang <dqfext@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200414_023819_705465_82AA8165 
X-CRM114-Status: GOOD (  21.96  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [olteanv[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Andrew Lunn <andrew@lunn.ch>, Florian Fainelli <f.fainelli@gmail.com>,
 netdev <netdev@vger.kernel.org>, Sean Wang <sean.wang@mediatek.com>,
 Weijie Gao <weijie.gao@mediatek.com>,
 Vivien Didelot <vivien.didelot@gmail.com>,
 =?UTF-8?Q?Ren=C3=A9_van_Dorst?= <opensource@vdorst.com>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 John Crispin <john@phrozen.org>, David Miller <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Tue, 14 Apr 2020 at 06:03, DENG Qingfang <dqfext@gmail.com> wrote:
>
> On Fri, Apr 10, 2020 at 6:46 PM Vladimir Oltean <olteanv@gmail.com> wrote:
> >
> > Hi Qingfang,
> >
> > On Fri, 10 Apr 2020 at 05:51, DENG Qingfang <dqfext@gmail.com> wrote:
> > >
> > > On Fri, Apr 10, 2020 at 10:27 AM Florian Fainelli <f.fainelli@gmail.com> wrote:
> > > >
> > > >
> > > >
> > > > On 4/9/2020 7:19 PM, DENG Qingfang wrote:
> > > > > So, since nothing else uses the mt7530_set_jumbo function, should I
> > > > > remove the function and just add a single rmw to mt7530_setup?
> > > >
> > > > (please do not top-post on netdev)
> > > >
> > > > There is a proper way to support the MTU configuration for DSA switch
> > > > drivers which is:
> > > >
> > > >         /*
> > > >          * MTU change functionality. Switches can also adjust their MRU
> > > > through
> > > >          * this method. By MTU, one understands the SDU (L2 payload) length.
> > > >          * If the switch needs to account for the DSA tag on the CPU
> > > > port, this
> > > >          * method needs to to do so privately.
> > > >          */
> > > >         int     (*port_change_mtu)(struct dsa_switch *ds, int port,
> > > >                                    int new_mtu);
> > > >         int     (*port_max_mtu)(struct dsa_switch *ds, int port);
> > >
> > > MT7530 does not support configuring jumbo frame per-port
> > > The register affects globally
> > >
> > > >
> > > > --
> > > > Florian
> >
> > This is a bit more tricky, but I think you can still deal with it
> > using the port_change_mtu functionality. Basically it is only a
> > problem when the other ports are standalone - otherwise the
> > dsa_bridge_mtu_normalization function should kick in.
> > So if you implement port_change_mtu, you should do something along the lines of:
> >
> > for (i = 0; i < MT7530_NUM_PORTS; i++) {
> >     struct net_device *slave;
> >
> >     if (!dsa_is_user_port(ds, i))
> >         continue;
> >
> >     slave = ds->ports[i].slave;
> >
> >     slave->mtu = new_mtu;
> > }
> >
> > to update the MTU known by the stack for all net devices.
> Should we warn users that all ports will be affected?
> >
> > Hope this helps,
> > -Vladimir

Unless I'm missing something, all ports are affected anyway, so
changing the MTU _is_ informing users that all switch ports are
affected.

Thanks,
-Vladimir

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
