Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 466896D3F4
	for <lists+linux-mediatek@lfdr.de>; Thu, 18 Jul 2019 20:31:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vKVjSnPNKd0e8mudUv0LlPb7VNI+EWXt+dOZrEcBV8Q=; b=AR51lLFwImnlgn
	K6LYpKFAfd0Dmgk4g4ORD38ZiSEoG0pBuIDvnLE38bQ/AA9ciieccVQijQiQR1EAg/FoZ03SyMhZF
	qZ4ALDTmQ8sjwdTq55I2rOq66FC3BHS42A6AdJRPQRoqavnPxeVXxCRB3oo+BLjPdT36qoy9a6yRz
	DlmZtfFXvrA9bj05bZtH5YGpeNtgw1+drrjExOEcwx2UwOLB0IEoypnwmzMxPDQ7JzZfOfTMe4sN0
	CVi7EZtRAvzX/W4IDK3mJ8e4f+F+4alnRmjtss9alvqpIc9uFiZg7bZsKI7wabas0iC7x7ZwvYL/f
	uGgVUjbmBaF63kyUvaiQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hoBBA-0006I6-Ew; Thu, 18 Jul 2019 18:30:56 +0000
Received: from mail-qt1-x843.google.com ([2607:f8b0:4864:20::843])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hoBB7-0006GD-3k
 for linux-mediatek@lists.infradead.org; Thu, 18 Jul 2019 18:30:54 +0000
Received: by mail-qt1-x843.google.com with SMTP id w17so28243878qto.10
 for <linux-mediatek@lists.infradead.org>; Thu, 18 Jul 2019 11:30:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=poorly.run; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=in+k2EJ0yUgEcWfMOCLX6vtt4xp7gnH3JFGCqlQ3fNY=;
 b=Bg6jaOgG9du1wnY3AakkRHNi1vr5x6MttHcc8/z0LrY8OApHgsOiUtYwm0yiR1LKF0
 z2MmA/nGKAJrt1OLbX+ieHspwY5WF9Q3wk28PkzatbhA0Hev59GwPDQEMFhoWrSq5cRR
 z01TDj/2sNwKRrZZUQbtS+lMvnJwwgfNnD/wUqPiPCF48THrCA7mGgUhTmhbWRG0Q9Zk
 WRp05TxbCeh2ls/yjXftohPGzg4OCShCl8YrRN5xIrxAz2oMNNsyF4TQGeY6CjU4Gww6
 0ywzytZkX7NXZ5smdo9S5Q7CXKt48Ab/MxBuGD3mM03WGXnN6GT+7XSBl9p8BSlb+pEx
 8HTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=in+k2EJ0yUgEcWfMOCLX6vtt4xp7gnH3JFGCqlQ3fNY=;
 b=ZYE2yHizPJoBl4f7ePH3KNf/oPV4JzU8xZO0AIuYGnvcBBCKmF1/26bV7SCQ7ASDzG
 skze3ctzXewMWZITjg23D2UaiZ2gn5spewpDKt3RLY2Jdcy8+I9xMxRLTJQVVMHTBqZM
 U1vaerZJjOmvyPdi+vcMCMDFW/LGkJRHctkQO0r6GITD9ckYaPLU0azZ1c/u9gB8H1d2
 0TJlGg4u7bHp9rLS8nN8KGQEEgIUTJY8I7GIvmut2PbtRNqkgk5vIxiFU5m2W79/P3bS
 N8pbpX4Kj4zT0V6hbBsrmE+iUdrJ7Wzw5ow9racW8SVLMuiySP0UJYMv7+7Aok1KnpBn
 42yA==
X-Gm-Message-State: APjAAAUpoa80v5oasOH3drUu/s5PKS33YWquSBt/Jr2RLOe3wtjb8jr5
 2bl+KXmZEiIXbGOwQYz/6ggj/Q==
X-Google-Smtp-Source: APXvYqyBLppEZZyvT5K/qJOtPAJP26Q7Zq17101bVCjXPdYuHpTMV6yKtYIcA/OhY2zXrQ5+No6vUQ==
X-Received: by 2002:a0c:ad76:: with SMTP id v51mr34949407qvc.232.1563474651240; 
 Thu, 18 Jul 2019 11:30:51 -0700 (PDT)
Received: from localhost ([2620:0:1013:11:89c6:2139:5435:371d])
 by smtp.gmail.com with ESMTPSA id r40sm15578032qtr.57.2019.07.18.11.30.50
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 18 Jul 2019 11:30:50 -0700 (PDT)
Date: Thu, 18 Jul 2019 14:30:50 -0400
From: Sean Paul <sean@poorly.run>
To: Sam Ravnborg <sam@ravnborg.org>
Subject: Re: [PATCH v1 04/11] drm/ati_pcigart: drop dependency on
 drm_os_linux.h
Message-ID: <20190718183050.GA104440@art_vandelay>
References: <20190718161507.2047-1-sam@ravnborg.org>
 <20190718161507.2047-5-sam@ravnborg.org>
 <20190718174905.GG31819@art_vandelay>
 <20190718181135.GA5612@ravnborg.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190718181135.GA5612@ravnborg.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190718_113053_171638_A345045D 
X-CRM114-Status: GOOD (  14.40  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:843 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: David Airlie <airlied@linux.ie>, Liviu Dudau <Liviu.Dudau@arm.com>,
 dri-devel@lists.freedesktop.org, Chris Wilson <chris@chris-wilson.co.uk>,
 Eric Anholt <eric@anholt.net>, Chunming Zhou <david1.zhou@amd.com>,
 Stefan Agner <stefan@agner.ch>, Maxime Ripard <maxime.ripard@bootlin.com>,
 CK Hu <ck.hu@mediatek.com>, Thierry Reding <treding@nvidia.com>,
 Daniel Vetter <daniel@ffwll.ch>, Rob Herring <robh@kernel.org>,
 Jani Nikula <jani.nikula@intel.com>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 linux-mediatek@lists.infradead.org,
 Lionel Landwerlin <lionel.g.landwerlin@intel.com>,
 Matthias Brugger <matthias.bgg@gmail.com>, Sean Paul <sean@poorly.run>,
 linux-arm-kernel@lists.infradead.org, Boris Brezillon <bbrezillon@kernel.org>,
 Thomas Zimmermann <tzimmermann@suse.de>, Rob Clark <robdclark@gmail.com>,
 Noralf =?iso-8859-1?Q?Tr=F8nnes?= <noralf@tronnes.org>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Christian =?iso-8859-1?Q?K=F6nig?= <christian.koenig@amd.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Thu, Jul 18, 2019 at 08:11:35PM +0200, Sam Ravnborg wrote:
> Hi Sean.
> > 
> > Any plans for the other users of DRM_WRITE<N>()? It seems like it'd be trivial
> > to fix it up for via and mga. I don't really have any background on
> > drm_os_linux.h, but it doesn't seem like it'd be that much more effort to just
> > remove the whole thing.
> 
> During the drmP.h removal I also took care of drm_os_linux.h,
> so when the patches land then there will be no users left.
> I look forward to delete that file.
> 
> For via I only just posted the patches today.
> For mga they already landed in drm-misc-next.
> 

Awesome! I think I was looking at drm-next instead of -misc-next, so happy to
hear the future is bright :)

Reviewed-by: Sean Paul <sean@poorly.run>


> I expect that we after next merge window can delete
> both drm_os_linux.h and drmP.h.
> 
> 	Sam

-- 
Sean Paul, Software Engineer, Google / Chromium OS

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
