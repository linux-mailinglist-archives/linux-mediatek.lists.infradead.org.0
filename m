Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CB02B15FB38
	for <lists+linux-mediatek@lfdr.de>; Sat, 15 Feb 2020 00:59:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=b61PWJbZ1CXQkCwlMfJPxyDqJ4ngoXbeaQOlNTGAam8=; b=L4/IC/SUORe3gh
	ZpG/NwZ/l+vvcgpNrvG+0s0QMQFJ45CyMpYXTm9h2hVepv5pTPc9RJi07uZiW0lvss45Dg2s0wB9a
	BAJbDBcezzsBkFQhnUELCHCkY+i3yEYg4sqsW4uuE4tBWM7LIZFLqDYEVlNTMGIyBjEuL47ylaqD2
	ft/KQU1tdesBSvvkDHYBYc+6T8jQCW93WB+1pbGUBdeMOEeGEgchmUEXrInFmRxJ69nw/EFNBQZb8
	M3XTGSQdliMCncYhXwFuSqkc1SH0K+OthVJLk3dFfll7ied72HlaJoKWrH3BZ0uYdRzwHsiF9QdZJ
	X4pAEaVAgTj9D0dhE9HQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2krs-00033u-KG; Fri, 14 Feb 2020 23:59:32 +0000
Received: from mail-io1-xd44.google.com ([2607:f8b0:4864:20::d44])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2krp-00033C-Ga
 for linux-mediatek@lists.infradead.org; Fri, 14 Feb 2020 23:59:30 +0000
Received: by mail-io1-xd44.google.com with SMTP id k24so12426732ioc.4
 for <linux-mediatek@lists.infradead.org>; Fri, 14 Feb 2020 15:59:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=1d6JlykbVicmjG0A2XUt4eGD3FJVfi/fh9TSeO7qCwM=;
 b=qoZ8bvp1ZKuu6goMKUjVMTPgR9GgeGjmljCOt3XjoV9fORvvcDsIAjo0g3xIbB5Ik7
 KdGkT5lt9iXWZ/z/MBilIsHWc1nzMp+g5gcU/hLP3vaaScigRfoYnnNQDPZ6vWCu/3rX
 3tNKdFZUQnZ2J6y90kTjadH6BTGSsLBoexQkRbptaj3XneVQq9+fqz0sEQZQtCyq4aPH
 EsqRQsZv57w2f+dNLbWlzBU4HQkLfnvHLaz+tjNhVSDD0ZhI0UAhcui0sTQ/IAblTagH
 68V0nNAsfXuA0agsT9wdDsreszDD+Ha/TE2LwH2nuoLj4yJ61g317518G0bMp5PPuA9w
 uoYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=1d6JlykbVicmjG0A2XUt4eGD3FJVfi/fh9TSeO7qCwM=;
 b=HtdeuZeGHxyzHsKQwWx4tgFjaVzPMaWqOmGwwDePGknYWraKrB4FS1OutN09b4UUw0
 ZrCF7ZBpEdZZ/gzQCH+edZeHb+WgppYXjWyHSSMi4PVaZXaIaCnT3jy2YNikS86zFSIF
 y7chsJQ+064difZM3YeR4mGO1/YBtS/BzNzA+62kClwaj2VQc57PRVj/jzIYhXrpkiML
 Z3o0Blt7DSKI4AqjZv7R9lJ53FIrp3xSY0Qtr17RdMLdxlhXt3sLE0HiF5bi2IOnaVKQ
 oYt8swwT1fftgpe9+MH9+INpl+dct/vQMjpw9XjxfWxSRvVQfyaHQ5/tkW+PDNFWTVhu
 e3/A==
X-Gm-Message-State: APjAAAVUb5SKmVgyzjIYe8iOnR2fCdnNy9jdJ4z8O6eaXKnkCypUWk0a
 JbkyGXPMzERW1WcdwfLKaY/sjwTIM/CO8rYH+Vf50Q==
X-Google-Smtp-Source: APXvYqzCcV3CabKkAZK0b1p7Mn18+1jLNQikB9SRQht9Z9uo7mLVPhCQ74Zh2zqPN2EZXKwwi7uQIrNePZqAf4dxm7A=
X-Received: by 2002:a05:6638:538:: with SMTP id
 j24mr4421937jar.12.1581724764168; 
 Fri, 14 Feb 2020 15:59:24 -0800 (PST)
MIME-Version: 1.0
References: <20200213153226.I477092c2f104fd589133436c3ae4590e6fc6323b@changeid>
 <1581664042.20487.4.camel@mtksdaap41>
 <CA+Px+wW0BWz0-8L_UXJ-OYbwG6W9vmCWRr7kevpk0yokp+NKKg@mail.gmail.com>
 <1581669243.29925.13.camel@mtksdaap41>
In-Reply-To: <1581669243.29925.13.camel@mtksdaap41>
From: Tzung-Bi Shih <tzungbi@google.com>
Date: Sat, 15 Feb 2020 07:59:13 +0800
Message-ID: <CA+Px+wUacX+HbgLTSjAuq0feoeYNb5pp=1w8C4_zm=0jGVcHUw@mail.gmail.com>
Subject: Re: [PATCH] drm/mediatek: fix race condition for HDMI jack status
 reporting
To: CK Hu <ck.hu@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200214_155929_580082_67D86250 
X-CRM114-Status: UNSURE (   6.37  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d44 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
Cc: ALSA development <alsa-devel@alsa-project.org>, p.zabel@pengutronix.de,
 David Airlie <airlied@linux.ie>, dri-devel@lists.freedesktop.org,
 Mark Brown <broonie@kernel.org>, linux-mediatek@lists.infradead.org,
 Daniel Vetter <daniel@ffwll.ch>, Matthias Brugger <matthias.bgg@gmail.com>,
 Dylan Reid <dgreid@google.com>, linux-arm-kernel@lists.infradead.org,
 Jimmy Cheng-Yi Chiang <cychiang@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Fri, Feb 14, 2020 at 4:34 PM CK Hu <ck.hu@mediatek.com> wrote:
> It looks like that even though sound driver is removed, hdmi driver
> would still callback to sound core. This is so weird. After sound driver
> is removed, hdmi driver would callback with codec_dev which is invalid.
> I think this may cause some problem.

Will do some tests and get back to you.

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
