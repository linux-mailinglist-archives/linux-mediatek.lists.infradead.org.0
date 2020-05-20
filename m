Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A1F8D1DAA14
	for <lists+linux-mediatek@lfdr.de>; Wed, 20 May 2020 07:47:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=irAoAKucxPn40xwPwtW4a01Zs60QtJdjNDn6/bXn0V8=; b=mX0OtFOeRWKqcd
	4QHGgUSQJC699BK0YNcTvrBWJfOiw0mN9oM9hidvIiM9/tfxbSawRdGL5hGnb8jqqCECn9Bqi3km/
	jAJxPm9DS68q786FgJoYhHYaVCWV82K9KN/dELonjLavOUaLSKXPzmClJtVV6cUHYdXSCP+UlWfSW
	z33VmbcpWgFh6nNQ08M8owGukqL4YU2IMkjLduAMN3vGAVFDKKzNRde9evJDNhTNisLSUDlJJnT1p
	2lXIpQxoAa8u7fQZ8KzAm6E/o2tjZhSmBkRt57maTlFjZyanxZGsV/frjdfMmh3l3eyaiwFkdHgYV
	VYCxi3OUzNYmyXCzpNfA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbHZU-0005ic-Cr; Wed, 20 May 2020 05:47:16 +0000
Received: from mail-ej1-x643.google.com ([2a00:1450:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbHZR-0005i9-DT
 for linux-mediatek@lists.infradead.org; Wed, 20 May 2020 05:47:14 +0000
Received: by mail-ej1-x643.google.com with SMTP id j21so1858728ejy.1
 for <linux-mediatek@lists.infradead.org>; Tue, 19 May 2020 22:47:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Q4D1mAShAC4l59B3K6Oolb/s/eKcWB+SWLNcnrtynW0=;
 b=ruhr6k9z4APz6IBGe7+e3gmK730Pz8G8TfI+wb+oKMRKT+nBmimz4oeB9NYv1JVPKQ
 QtLODp2tkygpCo6jVgHgfmpZqGfMnJYyb/jEjFInlm2OhEujZlRbJHJtaIsXAHERN18p
 aXvkdkT7t5/7IxlNjiKBy0Qbs/ftzhiy4cgwaSpJQXFHTne939SL9awDZOAPjA1+ky1l
 GUtnSLsET02/tSJsjZ3a6sWiEyKXAyPCpkpC2hSVug4CMfxjepaXIg2kBJ49cJw0E9Dq
 J4RNAzH/xeOrNNYFPWZBKYQFcemsovC1GPZ6YOXTQ6T/uGq8cPqXV2AsmPUy2cCRdN3Z
 6JAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Q4D1mAShAC4l59B3K6Oolb/s/eKcWB+SWLNcnrtynW0=;
 b=E51olYKMJxlsaNsCa9fiVEBxWWk9mh8cm9RcrVNfOshQeoiQdI/orI1mg7ZdIUHxR9
 uVI88dulqwEP91wvU8cIfDgpk9oHjZqkVSiTewfVlEw2WoQpOw0VbN6lNw2jAjCpn6bx
 +65rNZCs9wyhmRkJjVhF8PtCXzz0Sv2YgeQ8z5pdqoSGdjjwX6Crimcq9cmrzhh0kI08
 8E1JPwspDvBs9APEtPfkPsQImAuth+YnRbqaKXukhBeJGruUbOATb3n2PfPi0+nSUrEo
 C4M48Tl7lZBiICx/Rerzg9soIu9I8BWy5L7wPTySSXd55d7Kf/vQpo2zbVs2UD+w1UW0
 jzFQ==
X-Gm-Message-State: AOAM531qblYe4p6uO7Rl5UOQ3HQ4wK+Q7Hf5rm2ssPhMEF8pn1s7f6oC
 56djf7l7I3BZC7h4xyh6hpPN7pLnUvn7+tEvrDw=
X-Google-Smtp-Source: ABdhPJwOXJy6qXi34NYqjCgJGLajatJD/bp8vNU2KMWdyX4sCwMVHRzIiezVzgqnAaVmKZ0bfKUtt8I9oVrETSTnMPE=
X-Received: by 2002:a17:906:b843:: with SMTP id
 ga3mr2272412ejb.340.1589953629054; 
 Tue, 19 May 2020 22:47:09 -0700 (PDT)
MIME-Version: 1.0
References: <CAAOTY_8tz9nNbCHFJhk9xX8fm9Jd8ETcdNCQfE31AOjZLpNKog@mail.gmail.com>
 <CAPM=9txm_fdy_+Kg=cdXe5SosbYBoXHtsDWYMFm2WQh1QtC_YQ@mail.gmail.com>
In-Reply-To: <CAPM=9txm_fdy_+Kg=cdXe5SosbYBoXHtsDWYMFm2WQh1QtC_YQ@mail.gmail.com>
From: Dave Airlie <airlied@gmail.com>
Date: Wed, 20 May 2020 15:46:57 +1000
Message-ID: <CAPM=9tzqQ5G82mSACX5speUF2j-8vz7SrOcj7XLsKCjhe3GT6A@mail.gmail.com>
Subject: Re: [GIT PULL v2] mediatek drm next for 5.8
To: Chun-Kuang Hu <chunkuang.hu@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200519_224713_453845_C87111CA 
X-CRM114-Status: GOOD (  14.38  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [airlied[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Jitao Shi <jitao.shi@mediatek.com>, David Airlie <airlied@linux.ie>,
 Bernard Zhao <bernard@vivo.com>, YueHaibing <yuehaibing@huawei.com>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Daniel Vetter <daniel@ffwll.ch>, Hsin-Yi Wang <hsinyi@chromium.org>,
 Enric Balletbo i Serra <enric.balletbo@collabora.com>,
 Anand K Mistry <amistry@chromium.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Wed, 20 May 2020 at 15:44, Dave Airlie <airlied@gmail.com> wrote:
>
> On Mon, 18 May 2020 at 10:06, Chun-Kuang Hu <chunkuang.hu@kernel.org> wrote:
> >
> > Hi, Dave & Daniel:
> >
> > This include dpi pin mode swap, config mipi_tx current and impedance,
> > and some fixup. I drop drm_bridge patches in this version.
> >
> > The following changes since commit 8f3d9f354286745c751374f5f1fcafee6b3f3136:
> >   Linux 5.7-rc1 (2020-04-12 12:35:55 -0700)
> > are available in the Git repository at:
> >   https://git.kernel.org/pub/scm/linux/kernel/git/chunkuang.hu/linux.git
> > tags/mediatek-drm-next-5.8
> > for you to fetch changes up to 007d274a017bb4e2ef7b922c2f54f40cf2073664:
>
> Did you edit this by hand or pass it through some mailserver that
> chewed it up, I had to reconstruct this pull from the above bits, I've
> no idea why it's so messed up in the first place.

and why does it contain an unexplained backmerge?

 Merge tag 'v5.7-next-drm-stable' of
ssh://gitolite.kernel.org/pub/scm/linux/kernel/git/matthias.bgg/linux
into mediatek-drm-next

Please don't ever backmerge fixes into next pull, without a long
explaination or if you really need it ask us first,

Please resend this again cleaned up.

Dave.

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
