Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6ED189AAB1
	for <lists+linux-mediatek@lfdr.de>; Fri, 23 Aug 2019 10:52:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=k7aXs+AIwnje047t559gmL+VQiKsmtSBSpZepdPu7fY=; b=eMxuyidrUoq3gA
	AZ/MHzM3aiHjfO3c2Vw/B8qme0bdwNFMsc0cmuE9FvCHU85CEnDVxnyD4cHsFHoVycubKojOw3opE
	tT47ObrbJ6KaFJZcnVeDHPEP0uFYAivf2YPsR/GzJg9BCynByYIBYyhf0OuMjBYGb0b2zKgjRHmmQ
	CALX4yywVkBLjAmaqyj9BBS5gtyaOrewLoBSHnZYbeB3+X6gVk10S8QkbiO/uE1OZKE6PkvgeM9wh
	28j37OA0rc/VaM66G3r7mAK4wpcR4+jJ5q42CVCh9t/7z5LaRpg41EaahtKssApsQE8O2Qvwa0aOX
	cf1A9m/5UqElUOOX10og==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i15Id-0004ev-90; Fri, 23 Aug 2019 08:51:59 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i15I0-0004ar-Ad
 for linux-mediatek@lists.infradead.org; Fri, 23 Aug 2019 08:51:22 +0000
Received: by mail-lj1-x243.google.com with SMTP id l1so8109680lji.12
 for <linux-mediatek@lists.infradead.org>; Fri, 23 Aug 2019 01:51:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=FXtQDuMScF/1nReve4eretX2TO/jfCiedtGuRQR2hjM=;
 b=p6SBn6sDUBeFLX9nMJmZGZC+PTQMLkZJ8aTvGmL+qINEfOstq/jNuLob/ghlirv1KJ
 cZRyeXtQ1faKYUnTHuBCVNy/y+gs5O1Ob5u1hV9AU5ut4mXZX+Okq3HmZsxsT+DBbIGs
 J7sCK51VUU3lrdn3m0sttx9PyWO3QwemGQnd1cRnP0eZPC4Pa8fqdl0xMWR23wDeqeAt
 FBxKNcv/H0DFEFdPjz9wsTwbnCzc2Hnz2I0UXU6Qlf1/20m+dC5NojBZhY02m301Xx20
 8SBl2+ZAWxgHnmt/joknqH100+Al87qai/W4q6tyFUZ1rvjBxGuZwVUWExcs1/CQ4lLY
 4fhA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=FXtQDuMScF/1nReve4eretX2TO/jfCiedtGuRQR2hjM=;
 b=bcXt47kl1mBY6HTJI3N0lT+ytScnhCntGx2M5CAGqG7NFDKUBTvIdF52GGYYnSOilU
 NFHZ2Pyywy1/i8vUl1VmbDgl80zN/gxNUfDAAxUPdnZ2ytJ8L2uYF/KOXgRQ3kLtpBx9
 4OU3+ItZiNqTr8Ocbq52XttqNCHUlanPxnmMhXSaMX0iJIox6wdfT0M8U0WXQBAJTua9
 MKDxOgYGIzABJ8U6RNMa6sF8WzMQApiwpktYUW7Pb6JCv2GkpmS4jFmil/azIcPE7MPm
 jjrEYTKIMgfqQaH2iiAdUQ4XCde/voDVF6MzwijA6aU/hA5dJltUhxtLRLbKw+XbEor6
 YmuA==
X-Gm-Message-State: APjAAAVnyp/sdZSQS8DQPCO363MX2/ZxTT3fC3Dc0HtgrN9Lo8MqGd5t
 uJc56X7ctMs0qDYOcfc5RBnCkzhCiSdyHShpjyGIug==
X-Google-Smtp-Source: APXvYqyppYyNq83SxxmmRdWOnL0oOzeUD0rB8qh3X7YKYtXA9sxXcXqHi/9iYmrgLahKeTty/OM4UHWE1xxoqpX3Dgw=
X-Received: by 2002:a2e:80da:: with SMTP id r26mr2124440ljg.62.1566550276856; 
 Fri, 23 Aug 2019 01:51:16 -0700 (PDT)
MIME-Version: 1.0
References: <1566206502-4347-1-git-send-email-mars.cheng@mediatek.com>
 <1566206502-4347-4-git-send-email-mars.cheng@mediatek.com>
In-Reply-To: <1566206502-4347-4-git-send-email-mars.cheng@mediatek.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Fri, 23 Aug 2019 10:51:04 +0200
Message-ID: <CACRpkdY4sVV5oyFa+a30dY2A9tsKpzTeuQ8ChmnXcm-5_eZkVA@mail.gmail.com>
Subject: Re: [PATCH v2 03/11] dt-bindings: irq: mtk,
 sysirq: add support for mt6779
To: Mars Cheng <mars.cheng@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190823_015120_914110_0D04BA06 
X-CRM114-Status: UNSURE (   6.43  )
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
Cc: Rob Herring <robh@kernel.org>, CC Hwang <cc.hwang@mediatek.com>,
 wsd_upstream@mediatek.com,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Stephen Boyd <sboyd@kernel.org>,
 Sean Wang <sean.wang@kernel.org>, Loda Chou <loda.chou@mediatek.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Marc Zyngier <marc.zyngier@arm.com>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Matthias Brugger <matthias.bgg@gmail.com>, mtk01761 <wendell.lin@mediatek.com>,
 linux-clk <linux-clk@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Mon, Aug 19, 2019 at 11:22 AM Mars Cheng <mars.cheng@mediatek.com> wrote:

> Add binding documentation of mediatek,sysirq for mt6779 SoC.
>
> Signed-off-by: Mars Cheng <mars.cheng@mediatek.com>

I'm relying on Sean to review this and ACK when he's pleased
with the result.

Yours,
Linus Walleij

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
