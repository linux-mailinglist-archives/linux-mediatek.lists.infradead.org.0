Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A8C7C133DB2
	for <lists+linux-mediatek@lfdr.de>; Wed,  8 Jan 2020 09:56:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KPop51XNQFcP5NR1tCJXeLgtSfwWMLrcNDnxLioY0vg=; b=Y+olet0JQGsPFs
	31ou37rz3DbFj9sg97lP+J/03m+AnESigTvAq6Y6gIbe/5oVVN2LfT0uu9aaL5aCAVPLLsroe5GnT
	uBbZjHpcByq1DoMG5qNa9OyAbaeYKNDzbt/qyN40CZP9/Th+TBULVkC7nIFoEGbErenJfE8ipol7K
	u0tP0LNe1QnpLheNGTdmw6RwkAV/A2UseMiNw1EKoOMfoQgmZPc/MSQE0/ZdOsQCPc7wdXaAxrjc/
	nAiCTkLDwjnM2zmNWeFUOczIR+O47eCPttY6Zq1NbGi2RmeMfFBN7Rb3jBYFkTBhnNI/SyEfmkQBk
	EP8Nq8e/u28SmWWICGVg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ip78x-0001wu-1h; Wed, 08 Jan 2020 08:56:47 +0000
Received: from mail-qt1-x842.google.com ([2607:f8b0:4864:20::842])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ip78o-0001pJ-54
 for linux-mediatek@lists.infradead.org; Wed, 08 Jan 2020 08:56:39 +0000
Received: by mail-qt1-x842.google.com with SMTP id d5so2210470qto.0
 for <linux-mediatek@lists.infradead.org>; Wed, 08 Jan 2020 00:56:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=23UaZlNsApqhumDDLUOyVqHmZXSwjOyNRAB7ikWfhfk=;
 b=dt29E8cPCpwAonKSxaiv3VaP8BgaW6t7bbMQkQnM0D3acz6OORwBCcouS6gD45iHNu
 GoPZetsVGj8l0OnJGPxqVSmqzq56aVUI+0uLD7j+Gg9OKKkLy6E736TS9AFewSX5PE6+
 AOSxXDvApaNRuUXWC+iSUIvKTYYK+4hSDeiCc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=23UaZlNsApqhumDDLUOyVqHmZXSwjOyNRAB7ikWfhfk=;
 b=HC7fdacf1LLnXHRTxL8ozByLRHpq6IWzmLD+7j6SaiAU+bTc+LYBwN0YKUU2VhA794
 Hwem3hd4iddhB8t+KPb40n5ebE4dvPhn+i5FNXR8DRnpw511yyj7anvLqPZ939LwdOtn
 v1yV75mteHeSGixZ4uRu5xmY6PHXSHgQUvM6IkMHv+O85GmtH1UwncCgc+FtATsJgLlS
 bUeatiSCpqp3eMmUcrwy9+aOCjpQYWqlW7V69zEI7Fqv886/yViFjX80NOCzMwQ/Csxa
 LmYvMZYqhduW6m7DpMg5wW8i2PCuS3c28Ws5fukqbkxDSWyRwcn1YLKSY4zLv9BOUXtU
 DXTQ==
X-Gm-Message-State: APjAAAV/F11Xs/LtrX9azqGlvpoVGDG+yEy+qhBvgM9hfIziy5H7ioJe
 6X1n0zKkqT2m6LpjLx9rGg19lHcQCVNiR7pEhgR0Ig==
X-Google-Smtp-Source: APXvYqwLdC1bnpk+yFSSUDDZwVNj0SEXt8iwYqeuRY98reHyPr1olVJxIKDeEhuHBiSIek43xvF7qoUS3R03lEt//CI=
X-Received: by 2002:ac8:3946:: with SMTP id t6mr2632345qtb.278.1578473795857; 
 Wed, 08 Jan 2020 00:56:35 -0800 (PST)
MIME-Version: 1.0
References: <20191227141405.3396-1-yong.liang@mediatek.com>
 <20191227141405.3396-2-yong.liang@mediatek.com>
In-Reply-To: <20191227141405.3396-2-yong.liang@mediatek.com>
From: Nicolas Boichat <drinkcat@chromium.org>
Date: Wed, 8 Jan 2020 16:56:25 +0800
Message-ID: <CANMq1KD=jAPn4Y7zQZrsg9FB7Cq6tNX0R8OF4qX21Sjy2=0Naw@mail.gmail.com>
Subject: Re: [PATCH v3 1/2] amr64: dts: modify mt8183.dtsi
To: Yong Liang <yong.liang@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200108_005638_516961_ED7082B5 
X-CRM114-Status: UNSURE (   7.61  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:842 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
 Devicetree List <devicetree@vger.kernel.org>, linux-watchdog@vger.kernel.org,
 lkml <linux-kernel@vger.kernel.org>, Rob Herring <robh+dt@kernel.org>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 linux@roeck-us.net, Matthias Brugger <matthias.bgg@gmail.com>,
 wim@linux-watchdog.org,
 linux-arm Mailing List <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

minor nit, s/amr64/arm64/ in the commit title.

On Fri, Dec 27, 2019 at 10:15 PM Yong Liang <yong.liang@mediatek.com> wrote:
>
> From: "yong.liang" <yong.liang@mediatek.com>
>
> 1. Include mt8183-reset.h and add reset-cells in infracfg
> in dtsi file
> 2. Add watchdog device node
>
> Signed-off-by: yong.liang <yong.liang@mediatek.com>

Tested-by: Nicolas Boichat <drinkcat@chromium.org>

> ---
>  arch/arm64/boot/dts/mediatek/mt8183.dtsi | 8 ++++++++
>  1 file changed, 8 insertions(+)
> [snip]

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
