Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7EDAE32031
	for <lists+linux-mediatek@lfdr.de>; Sat,  1 Jun 2019 19:41:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5E5KIzY5YMS55JKColWeM23b9rOX6VOLe75b3XCSGSI=; b=pqHiHsQkcEYJzZ
	v0qnwJaizLtzZ1O9hNnYi5VLuxVnL6H3cvdcpNjZAIj/OSqOyfT1HkWJnqBEE7acMt/XhkVCQS+ji
	MIqUo2pUOv8PLYD2DPygyfbGb5TT4h9A9a7azN2wvqmBLtGzhGR2N6uUTMrLWx8qc4QSyxWpntv1t
	3yRyRd6buELEUr60F5TqGU2pwLYhGXok4KQCWtzWRiB+vq/JulQC8VQuyqW8a0mXykTDm0NAixEsq
	604cxBsSWij/LYFhfaqbc3RE6sf909qLrF8ejCRp7QIUzoFazHjo+Vw3zgrD+DyYjn1/8OYwaM++u
	nZw1AY+0s/ZMkg7GjPAw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hX80d-0005CE-OM; Sat, 01 Jun 2019 17:41:35 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hX80Z-0005BZ-TX
 for linux-mediatek@lists.infradead.org; Sat, 01 Jun 2019 17:41:33 +0000
Received: by mail-lj1-x243.google.com with SMTP id z5so12526602lji.10
 for <linux-mediatek@lists.infradead.org>; Sat, 01 Jun 2019 10:41:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=rHjJzagrI2w6CxzEMyI3YS1Fy3fUOHjBVJQpvV06gF4=;
 b=kNKo1PJp5JY8FyKD7JkhadL2uuwGlRwXyBzur6y5fdsxiydbyEgL0yjSnj/Ex6vBKV
 m91afAFfI15VdDMK9Zfn7vRNKG2F0OlQhgZcdfwH1WdJS/+fB//hckYTGPJAbO1ERb4K
 HyAxPI2RKz2bVOmVcIHmnjJRBJ7zha/dHpZkNggiMM6m0cGW79yQVu5hgFKOmcog6a/X
 hQs3OUaUJOD+266aTLeyUt6aplfIXQOZtfyQz94Xlt0MZhseWtud2aHTOzF2cCpB5s4s
 80eAyy08uKq1gEL3GyhM5xQ4EG9xJyOOnryKvPiD/uGps9VmxiPapZa7RSqZOrdEj4sK
 Y6aw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=rHjJzagrI2w6CxzEMyI3YS1Fy3fUOHjBVJQpvV06gF4=;
 b=r+HzVEil3az41vO9kRCrVglgh8hLErI3inTgGMs1MfSljaT6KsTyjKfbXIqnY1jLeh
 xTtz1TP2uVUScHx6V+QU4pQDCuddOP5i6ePrjib96UiTshB56L+pAbsq8mvqCDpSjeXX
 oARyEGr3wlGxq2wvbXjObQ17YNIJUx3LkyDTqAqpEiQGZ45KDkFBp+0/Bl9BAS+wtMhG
 J31uavnV6oRHKOd+fLl6K4YYv1ChqBfoy213nriGsesUq4ApqejCagYEQqnebcZahbjZ
 vS4n/G/U+flo47z6y1WBm4nl+qg5mHBVMEDLClUDqdrVbdajiBDM7qovGLHUa4fpieJq
 Bl6w==
X-Gm-Message-State: APjAAAUqSveJhfBPlSifCdCTjJM8Lzy8fq7xMBrQQAPNmtEFmwBG8Bb7
 STS1HN3Z4umzwZLB+tVBU2pg7CK97V58+jUGdrY/Ig==
X-Google-Smtp-Source: APXvYqyMs3a2CNuuQZwXewGMpnWnrvA5Em5qjXrSELyADIL3SbiyiL6hwwGk0M0RbgN9+6Gp3Y2EroKx7Y7np874/U4=
X-Received: by 2002:a2e:9018:: with SMTP id h24mr2448110ljg.165.1559410889721; 
 Sat, 01 Jun 2019 10:41:29 -0700 (PDT)
MIME-Version: 1.0
References: <20190508073331.27475-1-drinkcat@chromium.org>
In-Reply-To: <20190508073331.27475-1-drinkcat@chromium.org>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Sat, 1 Jun 2019 19:41:18 +0200
Message-ID: <CACRpkdb1cfQts-CshwgoSXDv5JM8=miy4=2FhKpOi-jZL6OTxw@mail.gmail.com>
Subject: Re: [PATCH v2 0/2] pinctrl: mediatek: mt8183: Add support for wake
 sources
To: Nicolas Boichat <drinkcat@chromium.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190601_104131_975739_56413F15 
X-CRM114-Status: UNSURE (   9.34  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Chuanjia Liu <Chuanjia.Liu@mediatek.com>, Sean Wang <sean.wang@kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Evan Green <evgreen@chromium.org>, Stephen Boyd <swboyd@chromium.org>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Wed, May 8, 2019 at 9:33 AM Nicolas Boichat <drinkcat@chromium.org> wrote:

> This adds support for wake sources in pinctrl-mtk-common-v2, and
> pinctrl-mt8183. Without this patch, all interrupts that are left
> enabled on suspend act as wake sources (and wake sources without
> interrupt enabled do not).
>
> Changes since v1:
>  - Move changes from mtk-common-v2 to mtk-pinctrl-paris, as
>    recommended by Sean, to keep better separation between eint
>    and pinctrl-common features.

Both patches applied with Sean's ACK!

Yours,
Linus Walleij

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
