Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E5D51D1ADD
	for <lists+linux-mediatek@lfdr.de>; Wed, 13 May 2020 18:18:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TZlyu0JyMekxsHFdbTHhBBO7wYGXWLp3FHac/lc4Nmg=; b=CBQwX569dDyfuV
	1VsBP/C9O7ghxYnCT3+2Met3ki3Kf0du2EzoOnjNjeWxvX9QTLDylzO7Cq7eaCYgs4TVOPQwEfmYi
	CmdK1dlQTFdbDRLbGhpnV0ucqnoRMo8Lq7R4o42rVmwp0Ld4cYd1ew5gZp6XK8RzbC0tie0Nz9Nu/
	H/bS8VhTriiQPEGO9JtvvRJTEepRAr/sBCMHKGAYUQqJNgY/BEc+84nqXWQrOIwbUZg9VvqZg73oj
	YfF571myMsA1+N1AD+dWf60bx+xKGU9516h//9EFTdQPGWHTP2bjHH6q0bYpRvcUl91XztIEyxtdO
	t8FlpHpcNIZSO+9T+2Rw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYu55-0007Am-2N; Wed, 13 May 2020 16:18:03 +0000
Received: from mail-ed1-x543.google.com ([2a00:1450:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYu51-0007AG-O5
 for linux-mediatek@lists.infradead.org; Wed, 13 May 2020 16:18:01 +0000
Received: by mail-ed1-x543.google.com with SMTP id k19so557921edv.9
 for <linux-mediatek@lists.infradead.org>; Wed, 13 May 2020 09:17:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=y5fECBTmpQhsAZTvaek3WaiP6WwedZB41pWrMS8HIJQ=;
 b=b2BP4Zfej6fy15hMuOOTr4x1ySeq/7XOrnaC6tUnNbYRtXJvjXoZh2bLCYG6+9aPYr
 ueek2rYxtjRVxRev9LQPuwINJNoSBEy2ODB/MHGuw/N8JviIQu1T8tC8mFdLFevOnKG4
 HPLAwXPBFyMI/ceBYbe6yhKmld1aWgwjkD1faYqgnXZOChzxorHpj4vq+HNwDG6R0nEF
 kDosYKiZqDynDQzCfak3obrVqG7FaCR2UR6nBYE3fGxLMNhOeqiA1wtyOByz7s86h8m2
 aQB8l8dw3+tMD5XdUqLXqS29eotUFwRtTrjytDVzCW9sMFl7HBNGFjjbkFE3Pk490O2q
 fbrQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=y5fECBTmpQhsAZTvaek3WaiP6WwedZB41pWrMS8HIJQ=;
 b=r+S2gsLr2nd4sVqrY5UUS7xEDi/HxoW++VB3Lrix35ZAPguDzFZv5fWGAw11Wpqqey
 VLdjXevHuAbH+9JFSV7f2sPCgxNU6JTCrPDjp2B3Djmf9OvyVouVa7izcAz+ywiiOHz7
 zklYfSycdhhWc13N71qzJdivr05FRzGr7vf7je8e151P9xUcQzbBCbVJZ3RrCv5Js2HG
 XvdbYg2YQ3NQBxjXBhXfVmhKXAcCFMH9aBPh/qbZBWA6PkV6hRmFrZIWy38DqmOiwRKv
 2T21VR2v7lOFxW2psV2vXhSuqWELMRUVs35UOL48JcNDYXMA6kTsmlgEJpIBa+rIAg5H
 oogg==
X-Gm-Message-State: AOAM532HWTbpWwgGo+yZQv2lCZwj/g4FtfrjGSi7NOsfWeihbL5OTCgf
 xzMiIumPq7/DdvdBIC0rX7qFbJah9VFnU2UO6uA=
X-Google-Smtp-Source: ABdhPJxmcbGv7nRJXf0zPKiuTQvX8RblDkGx4sHIuHt3fNVmwep7SuCBuPB4Vv/ahBEtKk281J7a6R3BEj9QiMURj64=
X-Received: by 2002:a50:8dc2:: with SMTP id s2mr409304edh.318.1589386677859;
 Wed, 13 May 2020 09:17:57 -0700 (PDT)
MIME-Version: 1.0
References: <20200513153717.15599-1-dqfext@gmail.com>
 <5d77da58-694a-7f9c-53fb-9d107e271d40@gmail.com>
In-Reply-To: <5d77da58-694a-7f9c-53fb-9d107e271d40@gmail.com>
From: Vladimir Oltean <olteanv@gmail.com>
Date: Wed, 13 May 2020 19:17:46 +0300
Message-ID: <CA+h21hr_TyWQyvGukXqS0SocmvOBWUp6keghuhZh6HSaxAGb8A@mail.gmail.com>
Subject: Re: [PATCH net-next] net: dsa: mt7530: set CPU port to fallback mode
To: Florian Fainelli <f.fainelli@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_091759_811637_0E6A4680 
X-CRM114-Status: GOOD (  17.15  )
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Andrew Lunn <andrew@lunn.ch>,
 =?UTF-8?Q?Ren=C3=A9_van_Dorst?= <opensource@vdorst.com>,
 Paul Fertser <fercerpav@gmail.com>, netdev <netdev@vger.kernel.org>,
 Sean Wang <sean.wang@mediatek.com>, Russell King <linux@armlinux.org.uk>,
 Vivien Didelot <vivien.didelot@gmail.com>, DENG Qingfang <dqfext@gmail.com>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Stijn Segers <foss@volatilesystems.org>, Szabolcs Hubai <szab.hu@gmail.com>,
 Matthias Brugger <matthias.bgg@gmail.com>, riddlariddla@hotmail.com,
 "David S . Miller" <davem@davemloft.net>, Tom James <tj17@me.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Wed, 13 May 2020 at 18:49, Florian Fainelli <f.fainelli@gmail.com> wrote:
>
>
>
> On 5/13/2020 8:37 AM, DENG Qingfang wrote:
> > Currently, setting a bridge's self PVID to other value and deleting
> > the default VID 1 renders untagged ports of that VLAN unable to talk to
> > the CPU port:
> >
> >       bridge vlan add dev br0 vid 2 pvid untagged self
> >       bridge vlan del dev br0 vid 1 self
> >       bridge vlan add dev sw0p0 vid 2 pvid untagged
> >       bridge vlan del dev sw0p0 vid 1
> >       # br0 cannot send untagged frames out of sw0p0 anymore
> >
> > That is because the CPU port is set to security mode and its PVID is
> > still 1, and untagged frames are dropped due to VLAN member violation.
> >
> > Set the CPU port to fallback mode so untagged frames can pass through.
>
> How about if the bridge has vlan_filtering=1? The use case you present
> seems to be valid to me, that is, you may create a VLAN just for the
> user ports and not have the CPU port be part of it at all.
>

What Qingfang is doing is in effect (but not by intention) removing
the front panel port sw0p0 from the membership list of the CPU port's
pvid. What you seem to be thinking of (VLAN of which the CPU is not a
member of) does not seem to be supported in DSA at the moment.

As a fix, there's nothing wrong with the patch actually, I don't even
know how it would work otherwise. DSA doesn't change the pvid of the
CPU port when the pvid of a slave changes, because 4 slave ports could
have 4 different pvids and the CPU port pvid would keep changing.
Fallback mode should only apply on ingress from CPU, so there's no
danger really.

Thanks,
-Vladimir

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
