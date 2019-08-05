Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 945578168B
	for <lists+linux-mediatek@lfdr.de>; Mon,  5 Aug 2019 12:11:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HUbrtKYCVK3TrD3nx+LN5IjW1/IALCUYmcER1Dlj/mI=; b=uNJ2+JzSrs0Nbk
	JGor9fmdozCEFJ6Bda1hebBBdtTo8h+xNDPhurjxz8JhgzKfka7CoDUWlJnLSbtOZFwIC4L/RYw+Z
	Rsu8JDl7q+2C9Pn1nXEczov2Q+bdkUyYaStN57DUzZxYtwpHhCNrOjkM2MVzw0nz+LOPPFKN3MvYY
	nvX1x959/JB6ogjHsdUmgRwX8rMfUpG9rdyXVJbGrK19DiEGIKlokE1Iny5aLb4hIDc3HeDKX0Wte
	ti78gY9Tl9zvXm/YQCROrYWxsXTcEImqan3is8TcFiMpv2/W3Jo5+qoQ5qtWkax16+gbsy7S0VrGq
	dN8yxq0rV3/qL3n6z4Og==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1huZxA-0001kv-Jx; Mon, 05 Aug 2019 10:10:56 +0000
Received: from mail-lf1-x142.google.com ([2a00:1450:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1huZx7-0001k9-EA
 for linux-mediatek@lists.infradead.org; Mon, 05 Aug 2019 10:10:54 +0000
Received: by mail-lf1-x142.google.com with SMTP id v16so3603503lfg.11
 for <linux-mediatek@lists.infradead.org>; Mon, 05 Aug 2019 03:10:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=38PNBCxR8E/gwN5SobPXrhNr+MV57GD7N/MEMGkZI8M=;
 b=i+KWdtoyatpzpphFY2WaJrES1l5iH+km4ZzYvw9Pj8U6cQ9EV8MJo50y2rFheh0sQf
 If1EUHTnLQYMu1Ufh+wue461SW1p3twp+YJYSThodXvheiQUsdX1L8q7rXNN2TVo0+3B
 AKc9XtG1SJ9qwu3cUsAOEB0/PEAlpEV0pI3GTyAtzv0nfOLW4nFFD7clhV75F/w+aNzw
 5Au5ijk2hYONfmLVa0NPleuXW4f9ejdIYsinAsw4Q3fUPuxVvWzGPkZjRvrNsqnWdOJV
 NxZUss8V+kueLKH5812GcCc8+NKYiY0vtDZRGWS4hLJ3JfWGkDXuNt2TcdfZM9DVT3R7
 j+mQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=38PNBCxR8E/gwN5SobPXrhNr+MV57GD7N/MEMGkZI8M=;
 b=idoEZaTQCi/scsTOM6UfvJIv8b7a+iyUBSuIZdtD90R4KYxSMK54ZIBJf/sZ/wSkdm
 8DUWtYERTzwErQ3l9bQ6BdDhcFFVX5SnBmBLJaMNwCuXT2C3+moeE/uDaCt4HW5ivR5E
 41WlZH+6bx91gwwUZPExhuv30Jg+f+Kmi9UGYpYf7A4sIBB2rmvoDgNtynGMhDEbpy65
 k4WDs5tmReIvhwSsoK/pkVUML6w7Q4hsftGu7SIVPoTxYT/eCL1cHyoqEcP7HrnE5Ok+
 tujtOVz0nIrkA7ZRqtjbAs/sD/T7GsRP4IVNVpPj7Q6U39+fGcyL3IPgCmiS/u+Y8Ea5
 pKbQ==
X-Gm-Message-State: APjAAAXuCbAjNJxLfVYFBO4dkoA3xDn7fD+mleuuJ9MoDeVAkaQwyWeq
 6OP7sRLm19mTZmLzJWFDkFgxLI1692CjpYmIHth2tw==
X-Google-Smtp-Source: APXvYqxusHjcjpDv1JZyVr5ijdjJU9V1dMWbb6Wlipx267US9qZGpWDr37CqWIealFc9Ew2Cd3rGlJafBijXpEfIUBo=
X-Received: by 2002:ac2:5382:: with SMTP id g2mr68758068lfh.92.1564999852084; 
 Mon, 05 Aug 2019 03:10:52 -0700 (PDT)
MIME-Version: 1.0
References: <1563958245-6321-1-git-send-email-chunfeng.yun@mediatek.com>
 <1563958245-6321-11-git-send-email-chunfeng.yun@mediatek.com>
In-Reply-To: <1563958245-6321-11-git-send-email-chunfeng.yun@mediatek.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Mon, 5 Aug 2019 12:10:40 +0200
Message-ID: <CACRpkdbq1rEpTm3Lqqb11WrKumV7bjUancuu-u2Ow0PQsCoLsg@mail.gmail.com>
Subject: Re: [PATCH v8 10/11] usb: common: add USB GPIO based connection
 detection driver
To: Chunfeng Yun <chunfeng.yun@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190805_031053_475880_3FD93C00 
X-CRM114-Status: UNSURE (   9.11  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:142 listed in]
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>,
 Heikki Krogerus <heikki.krogerus@linux.intel.com>,
 Hans de Goede <hdegoede@redhat.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-usb <linux-usb@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Biju Das <biju.das@bp.renesas.com>, Badhri Jagan Sridharan <badhri@google.com>,
 Andy Shevchenko <andy.shevchenko@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Min Guo <min.guo@mediatek.com>, Matthias Brugger <matthias.bgg@gmail.com>,
 Adam Thomson <Adam.Thomson.Opensource@diasemi.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>, Li Jun <jun.li@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Wed, Jul 24, 2019 at 10:51 AM Chunfeng Yun <chunfeng.yun@mediatek.com> wrote:

> Due to the requirement of usb-connector.txt binding, the old way
> using extcon to support USB Dual-Role switch is now deprecated
> when use Type-B connector.
> This patch introduces a driver of Type-B connector which typically
> uses an input GPIO to detect USB ID pin, and try to replace the
> function provided by extcon-usb-gpio driver
>
> Signed-off-by: Chunfeng Yun <chunfeng.yun@mediatek.com>
> Tested-by: Nagarjuna Kristam <nkristam@nvidia.com>
> ---
> v8 changes:

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
