Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C38E4133E45
	for <lists+linux-mediatek@lfdr.de>; Wed,  8 Jan 2020 10:26:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sgFiFS5U25Si6gdD7d9Q8UtdfNTRwWaff7MzlhZNC0I=; b=lwtZ9I4YgTJjPe
	OeiqJqhhxNbmHDP1lZX8gqarb//fVkPoDOKHk3x/Var5gpvIeODVuGvqHhWdqJrvRmntrFSIE0KgB
	aNcABPFFOAXcHcNdtj0AsKF42do//xt10/xnV96S7YgGL3l1EXUZ9x8+YuBmpSmydrR4OO3SJbsT5
	JTrmdOPhkbKRukJcnYIIAfHvtdrDikOszp89xbB/JKkuRVYmWlhRn3E2Dr9B9tzJPadTFCYXIi+bQ
	EZL5JAQzpJaGHtcc0+4d0wzV6gS9Pn4ToKG0HSQvz04sI4vaq6nhWt3UR8LO2mv4WIKq87jv7mb7p
	2BFVidIBT5XRIvTsdihw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ip7bG-0004pJ-1D; Wed, 08 Jan 2020 09:26:02 +0000
Received: from mail-qk1-x741.google.com ([2607:f8b0:4864:20::741])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ip7bD-0004om-Fa
 for linux-mediatek@lists.infradead.org; Wed, 08 Jan 2020 09:26:00 +0000
Received: by mail-qk1-x741.google.com with SMTP id z14so1996088qkg.9
 for <linux-mediatek@lists.infradead.org>; Wed, 08 Jan 2020 01:25:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=d9itra/1hP66y5Vh1A/apsI7vVNMDV9CQI60fYE2iNo=;
 b=mWqduuy/+k1H4CJ3RmxwE369OYZjbQ91El877rL/H+x8wlktANqK8kcC4voHl2Sj9F
 BWPxcXnJgz1F9WIFJwkli10BS+NHOKcP6tM0yyKGvdBw2htSyoe13BdbGf7XPQMCdUhk
 KKAC3xbCwpVV74ByShIV2AhcfQ7oHmaS+egzk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=d9itra/1hP66y5Vh1A/apsI7vVNMDV9CQI60fYE2iNo=;
 b=MpQOq2KSw8NfKIPNkzaQJ4i9DlRpVrp/dXqPbXzl+MQgMeF8wc+02X9wn/9J61kC3v
 7JYCnbiObWL2KjOO1CYAfBf/JBbpBoPZ4mRK6qNzFhuQnMW72fvh1Ct2vQOp3bynHd0q
 auRHC+xYqb9QuNTlI/nDms/oVyG6xaL0KBGHC6y06r5tw+dc9qZlcmR7/lMsFjO4lByU
 sLxiVBf+vhodJjvC9B7WF0EJcDR+lfIr1arHRSzkC2HOzqKHzWYPfayHTV4pWLuXz73f
 CZAyijLZtYkpQXlaSgC+ZG+TdjfaSBnaC44bR23TJjqyiQUyysCE9vfDXsZUqFy0IQ3U
 6uvg==
X-Gm-Message-State: APjAAAWwg1dGPUyT+lQaybTfAhhRFC6TcxcuZbL1K+lgYh/TqDLRyc1r
 23w13eMH9oyi9b36IS8qCJeGWBIvjO5CZM7bOkTijg==
X-Google-Smtp-Source: APXvYqxUSfxCpOfPQeb5k2dIYC6xmY0+WG2Ufqb4kkw22kn9ZUvrNzcvtQ2APhviNZ1LTVVT4U0dZLh1RLVsQUCsLdo=
X-Received: by 2002:a37:6551:: with SMTP id z78mr3581807qkb.144.1578475558723; 
 Wed, 08 Jan 2020 01:25:58 -0800 (PST)
MIME-Version: 1.0
References: <1578280296-18946-1-git-send-email-jiaxin.yu@mediatek.com>
 <1578280296-18946-3-git-send-email-jiaxin.yu@mediatek.com>
In-Reply-To: <1578280296-18946-3-git-send-email-jiaxin.yu@mediatek.com>
From: Nicolas Boichat <drinkcat@chromium.org>
Date: Wed, 8 Jan 2020 17:25:48 +0800
Message-ID: <CANMq1KD3n5r1ACy2acKgXTfTLHMsONzT-NscL=AoY1Jr-eqdww@mail.gmail.com>
Subject: Re: [PATCH v10 2/2] watchdog: mtk_wdt: mt8183: Add reset controller
To: Jiaxin Yu <jiaxin.yu@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200108_012559_521886_5D55B61E 
X-CRM114-Status: UNSURE (   8.30  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:741 listed in]
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
Cc: Devicetree List <devicetree@vger.kernel.org>,
 Yong Liang <yong.liang@mediatek.com>, freddy.hsin@mediatek.com,
 linux-watchdog@vger.kernel.org, Stephen Boyd <sboyd@kernel.org>,
 lkml <linux-kernel@vger.kernel.org>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 linux-arm Mailing List <linux-arm-kernel@lists.infradead.org>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Yingjoe Chen <yingjoe.chen@mediatek.com>,
 Matthias Brugger <matthias.bgg@gmail.com>, chang-an.chen@mediatek.com,
 wim@linux-watchdog.org, linux@roeck-us.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Mon, Jan 6, 2020 at 11:11 AM Jiaxin Yu <jiaxin.yu@mediatek.com> wrote:
>
> Add reset controller API in watchdog driver.
> Besides watchdog, MTK toprgu module alsa provide sub-system (eg, audio,
> camera, codec and connectivity) software reset functionality.

You add support for reset controller on both 8183 and 2712, do you
want to say that in the commit title and message?

>
> Signed-off-by: yong.liang <yong.liang@mediatek.com>
> Signed-off-by: Jiaxin Yu <jiaxin.yu@mediatek.com>
> Reviewed-by: Yingjoe Chen <yingjoe.chen@mediatek.com>
> Reviewed-by: Philipp Zabel <p.zabel@pengutronix.de>
> ---
>  drivers/watchdog/mtk_wdt.c | 105 ++++++++++++++++++++++++++++++++++++-
>  1 file changed, 104 insertions(+), 1 deletion(-)

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
