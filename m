Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C7D09A929
	for <lists+linux-mediatek@lfdr.de>; Fri, 23 Aug 2019 09:53:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=m8Ij8bZU7fVBqrg7+4HIC3nnn5gr+xopoMnhfnkQE94=; b=UfnmEl6HvVlS5V
	MfvIZ3MIcLLli/2vasigUnTzjYpLomPKf1gFs6q7Jp3ja7pcZe+3o99ysHjwnaHka4+mHRG5w9YOI
	4zSpERyKqVNP+carMk1EDIyqnTP3UsTBlR2yhcfXE0qnUMir5O6iYcxzMyLBI5Blz/58KmQvsNvmN
	Lxj7jAOZPsGM+nZu+W+IxXPGpTyMlIgZvIfBGh+xgxthhi811v0PiI5+VuhgMcOzR5rUJ+3k5aXsm
	LxwnYgN+r18BNwSX/HIzPNp/a0eXRtVc5jd4ARFQouSrlHCdAIusVPkkc+ar1f2+Ln/x7r/BLI62+
	3CTrir9iW5/Q2nA/WTZQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i14NR-0004Wu-TE; Fri, 23 Aug 2019 07:52:53 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i14NO-0004WY-JE
 for linux-mediatek@lists.infradead.org; Fri, 23 Aug 2019 07:52:51 +0000
Received: by mail-lj1-x241.google.com with SMTP id l14so7980151ljj.9
 for <linux-mediatek@lists.infradead.org>; Fri, 23 Aug 2019 00:52:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=mqpwIMCq4y9TWYu08ngpLNeK2cRwz3qeYJT+U8RgRXY=;
 b=DubrrLXkoiYf/fFwa21azYYe43fLHngxuHKyq7387+Xa0R0Ff7zONRqKscfvffrNGV
 xvigud8tSrm9hg2nb8/TtO16kqEvOUt0akzEULGED8Y0T1bkMcGum+zqpT9cDEubuxwH
 zDtMB+FG+h9mOlH0GO/5JUOIYRtup9FsgSXyMbXSH0v0zu95BVHpnO1Kv0uauQPnbaQN
 5iv7ncrpq6JE1kyhB4tmhP8salJo4dzrG3ceLVnfRJhb8EOfy2yI5PyZG7o7nknFYOb4
 PaMq+OOt5MpDwHdQivCI3RF23PTm/tHeg0D3RtIQVtlTBdG62FIvyqLB0f0/PLrSLxtW
 1rXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=mqpwIMCq4y9TWYu08ngpLNeK2cRwz3qeYJT+U8RgRXY=;
 b=cXGzhTP3CHUjX+KroUeB9CAQZ7GhgDPbBRQYhkcU2OzIs9nVLGXIMo5M2unh/M2xeo
 ulklI1mJxA4QI+28KRyRRshcJ8Y7DiGh5mFDeJHlDYjMeGoeJ9wdxiUTxP8Tx6OSY9+6
 1KnZQAg+9HN+w+ITbAW2ur4kmg64Towp3oMdq5YiotIdhV3MfNT3AMKiwfXk5uvqhhaO
 OJQRHPFbQ2i/JN8ygtXAwv6rRtmK2E7NGyxUbqAD2p+A/e2SGdtHYdPMDk3B0ZZtc8dq
 k5shZv0QTrDNoDTpTNvaNbiKglcHh9RyTamnHKrVHW3daywjDl/v+RCII5DG5XezanTs
 /USg==
X-Gm-Message-State: APjAAAULcf+ZDWUKmy/XafQRYN/c98vhPrRmIkRkHHmP7tai+RCbwvvM
 P6vLWvbqH4XgVl7czSQ19jFwnRuM2UDXxyPou0Pek6Q6gag=
X-Google-Smtp-Source: APXvYqxKaJvKhF13Q1aLZVUTLP1o3k+sNGLKbFE8QiSoT0WUr4YT9FXA/najFQ6V2Iew5rRXx0yaKkpm1sgPJmmTTwY=
X-Received: by 2002:a05:651c:28c:: with SMTP id
 b12mr2103001ljo.69.1566546768877; 
 Fri, 23 Aug 2019 00:52:48 -0700 (PDT)
MIME-Version: 1.0
References: <1565686400-5711-1-git-send-email-light.hsieh@mediatek.com>
 <1565686400-5711-6-git-send-email-light.hsieh@mediatek.com>
In-Reply-To: <1565686400-5711-6-git-send-email-light.hsieh@mediatek.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Fri, 23 Aug 2019 09:52:37 +0200
Message-ID: <CACRpkdbpsK08mYX_M5vvaExR2HCa8ct16zC92euLJzewYEDG-Q@mail.gmail.com>
Subject: Re: [PATCH v1 5/5] pinctrl: mediatek: Add support for pin
 configuration dump via sysfs.
To: Light Hsieh <light.hsieh@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190823_005250_637131_CDC25CCA 
X-CRM114-Status: UNSURE (   7.95  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Sean Wang <sean.wang@kernel.org>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

Hi Light,

thanks for your patch!

On Tue, Aug 13, 2019 at 10:53 AM Light Hsieh <light.hsieh@mediatek.com> wrote:

> From: Light Hsieh <light.hsieh@mediatek.com>
>
> Add support for pin configuration dump via catting
> /sys/kernel/debug/pinctrl/$platform_dependent_path/pinconf-pins.

This is debugfs so rename the subject "*debugfs"

> pinctrl framework had already support such dump. This patch implement the
> operation function pointer to fullfill this dump.

Fair enough, that's fine.

> Change-Id: Ib59212eb47febcd84140cbf84e1bd7286769beb0

This has been remarked on before.

This patch is missing your Signed-off-by, please fix that.

Yours,
Linus Walleij

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
