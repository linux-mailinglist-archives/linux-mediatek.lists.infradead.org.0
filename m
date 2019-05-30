Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E9A172F773
	for <lists+linux-mediatek@lfdr.de>; Thu, 30 May 2019 08:28:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UwyFWxejXpRu6cNCtad9fYp6KryNGj+dCc/FHcPfgkQ=; b=niOWX2N6rG2qNz
	mdCtWf1Fe3NrJY38USc86BRAEB3PiTIcmvP27dJdwkdHceC3dCwjIloqecfEskwWatuc+E0GzL8v1
	de9w6pmykWFLu8rvywlZeq4qBdzdh9YSmLxEplL/DePi3HfkxtrQg45EQCsZARDb5MzlI2RZcCfsR
	pKkZcSqvNz7VHO44eoJHwiunQRIwknduG6E14iRwkRtYgpRuP+pDh0by87my+u1TRPOVB7tHKihgY
	SMGxzOekAcGArPoQYegEllLrKNGDH0Ixei4ZZkvGJ86IoYhqZRZL80z0KfJWwO3giJv0G139eYxQ0
	jabVRzY/CB0vGDjEkmLg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWEXs-0006tJ-8e; Thu, 30 May 2019 06:28:12 +0000
Received: from mail-qt1-x843.google.com ([2607:f8b0:4864:20::843])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWEXg-0006l6-2A
 for linux-mediatek@lists.infradead.org; Thu, 30 May 2019 06:28:01 +0000
Received: by mail-qt1-x843.google.com with SMTP id t1so5626403qtc.12
 for <linux-mediatek@lists.infradead.org>; Wed, 29 May 2019 23:27:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=EDB9NEzcrpM7vrzDugTKwabI3NuPP3IyLOyki6rb9uw=;
 b=TeMX9NEYaD2Qb/D8oQumCOS5CTT5UUG3au1rn0yH9MGA8q2jHPcpr5bZd7JUPdwRha
 m5ZvqEa54g94x1DtzRPQXWKXAZdSvFoMgS4B1EAeBL+A2iVZ3Rdip21Yh6WWJhg1s3dc
 r2HUIPMkLO6PQjVZQzMZFNnBB2IZuUatc64XY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=EDB9NEzcrpM7vrzDugTKwabI3NuPP3IyLOyki6rb9uw=;
 b=EaXvnsdimeawktC8VNw8QLIy94Zuh9PY+Bx+kR4zVspLVrL+Ab+1MFNeSwyqyJSUjo
 Q/N+n68Ru94ccr90YmEtSQUYx/dPUoqDo+mVhA0cPYdq3Pfp4rh1GsaKttWETb8iBWlF
 9m1OB/mgXwPld8d+fwKsCgEsHZX4Boref1l2qqV53FODRbzA4eBfoE4D0jxUSa6NGaAX
 KvL7j8ht3d/4lSMP3tizn+rE7KLh4WkKoFMi58rn5WvupCcoBHmqbN38jIcn2GaW/VXf
 ElqWHlPVGP3loOquqNA+Tihe45mS3lANioLqQZdcT8R9S8KGWElvfiVUkTrKY3k5rU+4
 /xFQ==
X-Gm-Message-State: APjAAAUh8BJfhCLgCFcciSEU59rH1E5QayaGL5b3IAE+2GQSmo+AsciR
 86lrbNHIB7RYb/Jy1XNLxpvDj+je2Jff45be6eSY4Q==
X-Google-Smtp-Source: APXvYqzHDlQemfhL+uQX+PxIu9PwWEguqnHq/qbjiPCrDdlMTXx+BXHgxPzV/YR2FBce1yN3dYhDwycDzH8cXlXCGsc=
X-Received: by 2002:ac8:ecc:: with SMTP id w12mr1935044qti.344.1559197674339; 
 Wed, 29 May 2019 23:27:54 -0700 (PDT)
MIME-Version: 1.0
References: <1557494826-6044-1-git-send-email-michael.kao@mediatek.com>
 <1557494826-6044-2-git-send-email-michael.kao@mediatek.com>
In-Reply-To: <1557494826-6044-2-git-send-email-michael.kao@mediatek.com>
From: Hsin-Yi Wang <hsinyi@chromium.org>
Date: Thu, 30 May 2019 14:27:28 +0800
Message-ID: <CAJMQK-giJTeERnqjxoSMjF-JXxW9SPmeARWf3f9ZyRgBsYN5fg@mail.gmail.com>
Subject: Re: [PATCH v2 1/8] arm64: dts: mt8183: add thermal zone node
To: "michael.kao" <michael.kao@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190529_232800_104269_F2763EF4 
X-CRM114-Status: UNSURE (   8.71  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:843 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-mediatek@lists.infradead.org
X-Mailman-Version: 2.1.21
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
 linux-pm@vger.kernel.org, Daniel Lezcano <daniel.lezcano@linaro.org>,
 lkml <linux-kernel@vger.kernel.org>, Eduardo Valentin <edubezval@gmail.com>,
 Rob Herring <robh+dt@kernel.org>, linux-mediatek@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>, Zhang Rui <rui.zhang@intel.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Fri, May 10, 2019 at 9:27 PM michael.kao <michael.kao@mediatek.com> wrote:

> +
> +                       tzts1: tzts1 {
> +                               polling-delay-passive = <0>;
> +                               polling-delay = <0>;
> +                               thermal-sensors = <&thermal 1>;
> +                               sustainable-power = <0>;
> +                               trips {};
> +                               cooling-maps {};
> +                       };
> +
Is 0 a valid initial sustainable-power setting? Since we'll still get
warning[1] about this, though it might not be harmful.

If 0 is a valid setting, maybe we should consider showing the warning
of not setting this property in [2]?

[1] https://elixir.bootlin.com/linux/latest/source/drivers/thermal/power_allocator.c#L570
[2] https://elixir.bootlin.com/linux/latest/source/drivers/thermal/of-thermal.c#L1049

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
