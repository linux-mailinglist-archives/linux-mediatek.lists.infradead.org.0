Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C06331A3E22
	for <lists+linux-mediatek@lfdr.de>; Fri, 10 Apr 2020 04:20:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ie2a/jz9zT2TZi9Cq49JICMoWQxOuWkiXfMW75MQrfk=; b=VeTLtXQfCAW3Wk
	GLKn6mcheELm1dW1K2WTakk3eh/8v+g3nxDUzwKeuUq6MdxecFExdfwT0w2WdQO8mf8mJ3REvhRe4
	xP3aE25lLqzraXIKJLKtKNXdPFUa1NDw4phCpB+l6dgXScC3VJW7Su41qku7upxoBWopcEoTUpJw9
	uaKPg3jz0KXBp8lXPEGkRQj/7tXz5uiV8rODntW5Hhl8iuPs28z7z3da5o2+iK20OoFjF8tg7jJkH
	wnc6E6jWpJzqfiHl7oJ1VshP8nLFjvCZY1wS3CclF+lqwWtQvlaUK7daZJQK4hGwxxBOlgbSvtZX4
	zBclPHM2O8eIwhGPe73w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMjGv-0007J5-NW; Fri, 10 Apr 2020 02:19:57 +0000
Received: from mail-io1-xd42.google.com ([2607:f8b0:4864:20::d42])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMjGs-0007IY-Vx
 for linux-mediatek@lists.infradead.org; Fri, 10 Apr 2020 02:19:56 +0000
Received: by mail-io1-xd42.google.com with SMTP id u2so446979iop.10
 for <linux-mediatek@lists.infradead.org>; Thu, 09 Apr 2020 19:19:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=wG5LSwPYeErDHEL7gyvpikJDXawVdrLpPlB6bwcLQys=;
 b=FtZ3l44uhworJnVnS61mliTb8l7FBSkyyqaNd974mwJPYzjte0m3Sy0fYcv7/FjzkP
 73rAYLmy7JSeR5XRn5Xis1brunpnMUchgEFB6OA5IDlfPZRTp0O2XZMtDd3tVv+9rJN+
 WjEdcsYfdwQmKh/s+HnAlXzjFMn3ge2j05tL42vhJpOCB39jYWSB+sWNdmIKxkVbv7vw
 UNG9ft1WixS6GlUHR96wB5TVArnA9iT0Vkr44H0Qmnm5O7BKDEUCFlJORVS/4aipBot6
 tIySWQ06EvfpIKszJ9f5dI0GuMt4BebnUNY/GOipHUSX0ps9E7XxF7OLD/dSNYGUtE5H
 kLVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=wG5LSwPYeErDHEL7gyvpikJDXawVdrLpPlB6bwcLQys=;
 b=jUZ0QK2b2CgG9TPdHO7Eb2oSsH6UfZU57bwHVre/pJSotq/qRg2iNjrvCJRsjGf1Rg
 BWUTpSaarQO56x+BKqWP4NJVfSBWjQZ3SYRpDhtAIhO/gtPuxpVz64DHT6+H3+qHknW+
 yETuTVnUyMW0F+WwTMdUIshpohj3WD6I7EoK3fHz5/FmgyAcaAvOe2TuOKxXs6nw2uvs
 IyzfyRghkGZQXJms/N7+ABcr+Y3ycDCxxqHuhSvIdF3TGwgCWRBYBZgLRcW1Tp2ifRIK
 ZVkQsYih1ZiG1CcO+bLBRjq6Fv5BlSt9pFsUeywlHaRlu4CmXW7rRGyQI831tNwALGjL
 DQOQ==
X-Gm-Message-State: AGi0PuaKuc+Lx4xntyp4ARsaGQkijgbc+I4/NM3KaWJ3m/RbCQA0m+MK
 QYo3zObyODO1VIHe5sK7B73hCCbUfM6b5qUOw34=
X-Google-Smtp-Source: APiQypKGnoeBngyMgm/Kcfo1B5o6gk77Hyt/Zgeuoxib0h9TUKbP/KJ32PHU5llYbSN2W0VTlCwQjQeoqbvOj1u0oiA=
X-Received: by 2002:a5e:dd47:: with SMTP id u7mr2303594iop.6.1586485192812;
 Thu, 09 Apr 2020 19:19:52 -0700 (PDT)
MIME-Version: 1.0
References: <20200409155409.12043-1-dqfext@gmail.com>
 <20200409.102035.13094168508101122.davem@davemloft.net>
In-Reply-To: <20200409.102035.13094168508101122.davem@davemloft.net>
From: DENG Qingfang <dqfext@gmail.com>
Date: Fri, 10 Apr 2020 10:19:42 +0800
Message-ID: <CALW65jbrg1doaRBPdGQkQ-PG6dnh_L4va7RxcMxyKKMqasN7bQ@mail.gmail.com>
Subject: Re: [PATCH net-next] net: dsa: mt7530: enable jumbo frame
To: David Miller <davem@davemloft.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200409_191955_055054_57FA924A 
X-CRM114-Status: UNSURE (   8.36  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d42 listed in]
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
Cc: Andrew Lunn <andrew@lunn.ch>, Florian Fainelli <f.fainelli@gmail.com>,
 netdev@vger.kernel.org, Sean Wang <sean.wang@mediatek.com>,
 Weijie Gao <weijie.gao@mediatek.com>,
 =?UTF-8?Q?Ren=C3=A9_van_Dorst?= <opensource@vdorst.com>,
 linux-mediatek@lists.infradead.org, John Crispin <john@phrozen.org>,
 Vivien Didelot <vivien.didelot@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

So, since nothing else uses the mt7530_set_jumbo function, should I
remove the function and just add a single rmw to mt7530_setup?

On Fri, Apr 10, 2020 at 1:20 AM David Miller <davem@davemloft.net> wrote:
>
> From: DENG Qingfang <dqfext@gmail.com>
> Date: Thu,  9 Apr 2020 23:54:09 +0800
>
> > +static void
> > +mt7530_set_jumbo(struct mt7530_priv *priv, u8 kilobytes)
> > +{
> > +     if (kilobytes > 15)
> > +             kilobytes = 15;
>  ...
> > +     /* Enable jumbo frame up to 15 KB */
> > +     mt7530_set_jumbo(priv, 15);
>
> You've made the test quite pointless, honestly.

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
