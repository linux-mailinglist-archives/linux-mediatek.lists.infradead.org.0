Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5246C1A3E72
	for <lists+linux-mediatek@lfdr.de>; Fri, 10 Apr 2020 04:49:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Atj2P0PnerBENLHiMaMR927J8SVW+Zygng9vbmdWRVA=; b=p2GUqGrs04+AXE
	RpuV8eK5456jbW6flZ96OxHfrNqrJ1z5LWSWNd6OylmcosYiRSk77B6PFJV4F9HB+TGHyzLsxEzQ5
	YIwt7RvYO/Kds8l/UHVCIujHrSLbrPcPR52zjzxsJfXlBpYWlsOvPVMsOjOeFcyB30QauD0q6ir15
	CfhtAysLgLoNloxEZgSbh5WGy7ow5JuM9jNEHh+QX2JHs659cvxtvz0stQEoyplwPRSzWR26MeMhh
	WpVu2RPdjTU5u/BQ6Zr21AlLqGrzRQymShEYf6pDMe2i9m75IriyelR5TVbQdvQ508tUAeUZ9/OuI
	g0nRrkKzN8tT9HFLhkBA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMjjW-00009h-8u; Fri, 10 Apr 2020 02:49:30 +0000
Received: from mail-il1-x143.google.com ([2607:f8b0:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMjjT-00009D-0M
 for linux-mediatek@lists.infradead.org; Fri, 10 Apr 2020 02:49:28 +0000
Received: by mail-il1-x143.google.com with SMTP id f16so689981ilj.9
 for <linux-mediatek@lists.infradead.org>; Thu, 09 Apr 2020 19:49:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=/sfn69J/dohNo9kDpfzOv7dy0VahZspr69zJfNmiPP8=;
 b=R1myvxuC7fVf2LJwDDU+mjofJvqlMbT52v2NhLrdiadNJ8ldFLSr5pBRsKT7xxjDSZ
 F7+nKp4G4CbP37vAd3ubrquuG+i3jwouORiZ02jQ3/RZVAYxjY8sMUjki1GDyLJcnN7p
 NQgnbxR/lqwkvF0M7WgPmHl4VY9UpPrE+bVwfLk2UqxdcsTKN2ZmUnT1nt+WljVZva+p
 tW8BINv5Ctm4r/4PjqwASpPW/g1DGdHIznrohjn0pU5XxG0pBTjlmdSiZJk9YS3oSKq9
 1dmEaaC0lFZCj4VvnKQ7gGwJBiB8GDukBejfJZX0i9vikpe98KUuOn11TMF3jeb03++V
 PZMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=/sfn69J/dohNo9kDpfzOv7dy0VahZspr69zJfNmiPP8=;
 b=s7CZqYljkge8j1sHWd+f+MJbiVhUVjxp/UGGfRrlpezc8U7KB0+JUKGNZJKDKMZ2eA
 6Dzr0zZzhuITufLY7qVGgLFyg4EeF06DeEw4brkz1gxGxVYFeSfrVumQK4yRF1koGcug
 XVvztlN48ptegXHvJtS5XgAQI0ZVWwB4kzusoN4B9bxbiGSVqsNpy410hQ/7G1/aAzkH
 I+iwyr3FjrOdbJHImrEPJBGrFzJdxd7DhrgYITUfqInhulJ2FopZx6X0+7MbAZbBfSqq
 VzAPBlLF2hMd5EvAaGRhjtXO6Cy/KIg0cxZ25vsSC1MQC54sZYnwTwRCWNKJcBPPbaDV
 OGwQ==
X-Gm-Message-State: AGi0Pub9Plg1+2VkGfIKrEjLPF23k354jMvuZmzRX+JxKtw2JiRedCh5
 xSMoayLIQvpmZ91Ys422sj6J7gUrdUXSG0JnbKg=
X-Google-Smtp-Source: APiQypKJqA2Yk1dt33hG2du26+gxJQz8kWBqwdXmIWt37zo5U96ahHd4TtOPvnVKjvFJKkDiVic0hFNFMZ2ab3GPoB4=
X-Received: by 2002:a92:8c08:: with SMTP id o8mr2872774ild.123.1586486965715; 
 Thu, 09 Apr 2020 19:49:25 -0700 (PDT)
MIME-Version: 1.0
References: <20200409155409.12043-1-dqfext@gmail.com>
 <20200409.102035.13094168508101122.davem@davemloft.net>
 <CALW65jbrg1doaRBPdGQkQ-PG6dnh_L4va7RxcMxyKKMqasN7bQ@mail.gmail.com>
 <c7da2de5-5e25-6284-0b35-fd2dbceb9c4f@gmail.com>
In-Reply-To: <c7da2de5-5e25-6284-0b35-fd2dbceb9c4f@gmail.com>
From: DENG Qingfang <dqfext@gmail.com>
Date: Fri, 10 Apr 2020 10:49:15 +0800
Message-ID: <CALW65jZAdFFNfGioAFWPwYN+F4baL0Z-+FX_pAte97uxNK3T6g@mail.gmail.com>
Subject: Re: [PATCH net-next] net: dsa: mt7530: enable jumbo frame
To: Florian Fainelli <f.fainelli@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200409_194927_071395_4D7BC07D 
X-CRM114-Status: GOOD (  14.50  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:143 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [dqfext[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Andrew Lunn <andrew@lunn.ch>, netdev@vger.kernel.org,
 Sean Wang <sean.wang@mediatek.com>, Weijie Gao <weijie.gao@mediatek.com>,
 Vivien Didelot <vivien.didelot@gmail.com>,
 =?UTF-8?Q?Ren=C3=A9_van_Dorst?= <opensource@vdorst.com>,
 linux-mediatek@lists.infradead.org, John Crispin <john@phrozen.org>,
 David Miller <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Fri, Apr 10, 2020 at 10:27 AM Florian Fainelli <f.fainelli@gmail.com> wrote:
>
>
>
> On 4/9/2020 7:19 PM, DENG Qingfang wrote:
> > So, since nothing else uses the mt7530_set_jumbo function, should I
> > remove the function and just add a single rmw to mt7530_setup?
>
> (please do not top-post on netdev)
>
> There is a proper way to support the MTU configuration for DSA switch
> drivers which is:
>
>         /*
>          * MTU change functionality. Switches can also adjust their MRU
> through
>          * this method. By MTU, one understands the SDU (L2 payload) length.
>          * If the switch needs to account for the DSA tag on the CPU
> port, this
>          * method needs to to do so privately.
>          */
>         int     (*port_change_mtu)(struct dsa_switch *ds, int port,
>                                    int new_mtu);
>         int     (*port_max_mtu)(struct dsa_switch *ds, int port);

MT7530 does not support configuring jumbo frame per-port
The register affects globally

>
> >
> > On Fri, Apr 10, 2020 at 1:20 AM David Miller <davem@davemloft.net> wrote:
> >>
> >> From: DENG Qingfang <dqfext@gmail.com>
> >> Date: Thu,  9 Apr 2020 23:54:09 +0800
> >>
> >>> +static void
> >>> +mt7530_set_jumbo(struct mt7530_priv *priv, u8 kilobytes)
> >>> +{
> >>> +     if (kilobytes > 15)
> >>> +             kilobytes = 15;
> >>  ...
> >>> +     /* Enable jumbo frame up to 15 KB */
> >>> +     mt7530_set_jumbo(priv, 15);
> >>
> >> You've made the test quite pointless, honestly.
>
> --
> Florian

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
