Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F6301DAA12
	for <lists+linux-mediatek@lfdr.de>; Wed, 20 May 2020 07:44:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=53/hTQrtYRruywVSZIIL0HlycgNgo69HRZnKZmv49RQ=; b=UOAinI2gcNkMsb
	mVm1nEi44gIl2qLqLqqQZhWkrvkSkuQ8wi6rtxhjzui1GHhpXs8mULsJqoxIhedA8w8rO8OFOmGgE
	9rU3UX9fFNFswJ/mYW9+xVZ7YKa0EIfFIdejyFjWYISvDhVWrTYheO8FUlk6roWO00v2xhW85R/3C
	tEPJg8smOjIr9LgsGNpCxM+4EXbp0cyk0iOa37G1OpRLKoNXg6mOQeRBKBeZGXRRPBHpfZbnjGH2K
	fKJ4K806WLr5DjDvqr2QjOAvKcvtiJ71YCNn3uphQmJK8UXe1JvcJehWp+lHhH0hUsqwsF4X7y3um
	1EuCLaujLTlRu1pMRnSA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbHX2-0002vg-LW; Wed, 20 May 2020 05:44:44 +0000
Received: from mail-ed1-x544.google.com ([2a00:1450:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbHWz-0002uM-Vk
 for linux-mediatek@lists.infradead.org; Wed, 20 May 2020 05:44:43 +0000
Received: by mail-ed1-x544.google.com with SMTP id h16so1479435eds.5
 for <linux-mediatek@lists.infradead.org>; Tue, 19 May 2020 22:44:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=hmA5qfvK2lgUMdRtwSLVUYIdFHLfCMcxZJ02lGNyXbI=;
 b=P2IQ7XCs0PrAzxrTc6oiYa17hGzG2Sj5EavuUIU2xQzXNl/0Y5OVA5r4d7CpxKxZ3f
 6B6tPQ9Nl9XGIbwodEY7hVJv6gXzat8hwVej9Tcgo9G7MWST8jeFbw7KwTBGeMywckHg
 pfsFU/GRFP+C0c7CudVqT3VIQTM1s+JTtKc5fElZRhIYlFxYtZM/a32ojZu31lKLyXMY
 +Lu1pQN/TuBa1Mh+92vxS4FVQFY9ufDNEGX9AJL6PeY86nkwWIvwqoFbwKExZywVCk0B
 yKvib4wunJJSx0PA0uR8dkDAm1MFPKAsWmCKXz3HEQFDdAaJOz5T6FaO7EnT6IWdlHRX
 yK+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=hmA5qfvK2lgUMdRtwSLVUYIdFHLfCMcxZJ02lGNyXbI=;
 b=IGoHqv4Et1i1oJdH7oSGSZf65zU7wNZyxH79dxeRm4j2hTOi94cVO7fXIWPN74Qnvf
 lcLckYxV5BWRzJaBnseq45nq3dwfuShB1QQQQLaAXBJBvSp3owIcbVRPGkQhwZ3XuwUS
 Df+k+StEpAZ+oR28lYPFnHUEBNzIEelcecElZjhVQmaJDhvqifyA+rxGBkodvnkG2IHv
 2xC+C60/XtjhocNsFYWYRaf4W8XecLn7P12tXC+/DZnlcNJnWJt1aPps3ivZOtJlojQY
 ROCmCGP/+KHl3SUMqLNFJGqC/f5HwdK2LEAXkB4ACFuJQXF1MNGBPK26EM3dluzXn/1u
 4Vtg==
X-Gm-Message-State: AOAM5309sxdA6FAtjgrwu0XzjJbCLBz4GyeG5/CWWPP3EdZvE0V6Ivbo
 pUmvMNiq+Qeuc31ZtzuSFpVS8rGYxYiIDauDWZc=
X-Google-Smtp-Source: ABdhPJzr9FWs+AT1Gk+5P7gCHOd20hMnXt3i5M8wevfWvu4VXARm4QoZ3ak1G/HsyHQCPmCN1J3/zsTkef6D9zOL+dQ=
X-Received: by 2002:a05:6402:948:: with SMTP id
 h8mr1804558edz.127.1589953479704; 
 Tue, 19 May 2020 22:44:39 -0700 (PDT)
MIME-Version: 1.0
References: <CAAOTY_8tz9nNbCHFJhk9xX8fm9Jd8ETcdNCQfE31AOjZLpNKog@mail.gmail.com>
In-Reply-To: <CAAOTY_8tz9nNbCHFJhk9xX8fm9Jd8ETcdNCQfE31AOjZLpNKog@mail.gmail.com>
From: Dave Airlie <airlied@gmail.com>
Date: Wed, 20 May 2020 15:44:28 +1000
Message-ID: <CAPM=9txm_fdy_+Kg=cdXe5SosbYBoXHtsDWYMFm2WQh1QtC_YQ@mail.gmail.com>
Subject: Re: [GIT PULL v2] mediatek drm next for 5.8
To: Chun-Kuang Hu <chunkuang.hu@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200519_224442_040507_D1CE9519 
X-CRM114-Status: GOOD (  11.02  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:544 listed in]
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

On Mon, 18 May 2020 at 10:06, Chun-Kuang Hu <chunkuang.hu@kernel.org> wrote:
>
> Hi, Dave & Daniel:
>
> This include dpi pin mode swap, config mipi_tx current and impedance,
> and some fixup. I drop drm_bridge patches in this version.
>
> The following changes since commit 8f3d9f354286745c751374f5f1fcafee6b3f3136:
>   Linux 5.7-rc1 (2020-04-12 12:35:55 -0700)
> are available in the Git repository at:
>   https://git.kernel.org/pub/scm/linux/kernel/git/chunkuang.hu/linux.git
> tags/mediatek-drm-next-5.8
> for you to fetch changes up to 007d274a017bb4e2ef7b922c2f54f40cf2073664:

Did you edit this by hand or pass it through some mailserver that
chewed it up, I had to reconstruct this pull from the above bits, I've
no idea why it's so messed up in the first place.

Dave.

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
