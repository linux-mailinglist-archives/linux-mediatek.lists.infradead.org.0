Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 525311708F3
	for <lists+linux-mediatek@lfdr.de>; Wed, 26 Feb 2020 20:31:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=16t/jruwUQdRGMV5VdRjiWzPUxkntMITBWUe/gv21vk=; b=Rqni8gkMSGdOG8
	QwA2GAMak/uJ3R8uL60DeUgHimFvNiJEykyV9nxQIg1hqlkEFEExlc5PvV4NaLtpTmRkXUMBJDqgI
	kNAGK3EEQL4P3ygaNLifsyg6Lil2BO4VvtjxGhdrGSVFWUwYJQTMh3DbkHAEy33PoKgmb6M307wHZ
	4RKmHQWT9Qq4HDsLAvS17CS4frvg53W758ibBfZQXBXr4Gp05KDqv/7ZGMD67WBDIU9yJsS+v8otR
	Woce2Z01/woBGaadWq0fpNNpH5uMsYlzdssnMcxvL6/bwB1MfVDSRf+JszDhukNAT8nc2W4Ml0oDA
	t8w0r/6w3Oz/lm4DVM8A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j72Ox-0006V9-TT; Wed, 26 Feb 2020 19:31:23 +0000
Received: from mail-io1-xd43.google.com ([2607:f8b0:4864:20::d43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j72Oj-0006H4-Rv
 for linux-mediatek@lists.infradead.org; Wed, 26 Feb 2020 19:31:11 +0000
Received: by mail-io1-xd43.google.com with SMTP id w9so376343iob.12
 for <linux-mediatek@lists.infradead.org>; Wed, 26 Feb 2020 11:31:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=5MFxJeomCczgXDzeNV9Xn+RHt64mPvJ12qZr3RbPrbU=;
 b=dWcCF8s4J9A+iP2iXoWcm3srPwjEatU3HdSYDIVsbNOiHHd7MtnwyuiE9mCNcHaGU0
 qwCoH2p/6/qrCzG/i3ueu4EZqypRCXV4NQTLYaswGjHLOJWyjjeUM9SXiYcQxeTrcELD
 ACUWcICt+Ximqv6VZnywYGgK6FeUCdHP4Ttig=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=5MFxJeomCczgXDzeNV9Xn+RHt64mPvJ12qZr3RbPrbU=;
 b=TVfn13g/DmDBEJW/COcaA87RXQ2Xoeaf8dvGmdY4x8NamHTfNKafL1D22BUPTXWdIC
 qsyPAmfCuov4BgViw1BW+XqFPku+TLWJsHX34DQsyPnEp5siRD0lLeqT2mu75sEg59OL
 rOKvpn2HOkN4emG5bEmgb6GriNJtWjvM9TxVHjFtwrS1Brrb2vtyjcgGXVnk4dJWwSx2
 e+LRgFneWO1Q6xis7kKNTOtK7IOI6UOMLIMXyL2KForwugkjDVf9RzTqmTkCMJb6wwgG
 c/JtNs6ELT5/ZYUCaaVUVj1FZWb++Qx49S/DRyoKXsxrK1oOsxb/NrE9Jlr0+WHOGQ+F
 McZA==
X-Gm-Message-State: APjAAAUn2c5AwMv+toRMFDxzsBTNIgvUFY0URYrNykRH4rLvZAS2tdIH
 wL5UpRZ6p9eE36AgK+tIkP3j1Sr2fD9+GIL90n1siw==
X-Google-Smtp-Source: APXvYqwm7wEEXPS3MuEPhTwwGRUEbcd/4WOJm2XgfK0kRKisj4w+h5pA1wDFpztH3aEcTh+AhwR4v0v1+qCPqLGRK8w=
X-Received: by 2002:a5d:8955:: with SMTP id b21mr146927iot.41.1582745462529;
 Wed, 26 Feb 2020 11:31:02 -0800 (PST)
MIME-Version: 1.0
References: <20200221053802.70716-1-evanbenn@chromium.org>
 <20200221163717.v2.1.I02ebc5b8743b1a71e0e15f68ea77e506d4e6f840@changeid>
 <CAL_JsqL94vtBEmV2gNWx-D==sLiRXjxBBFZS8fw1cR6=KjS7XQ@mail.gmail.com>
 <CAKz_xw2ETZ5eyNfdWU5cF6Qy23E1NqhpFHoLT_CzUDHWTCbw4Q@mail.gmail.com>
 <CAL_JsqLYpSK6HRT4s=hq153xvU_aiPCq3Hk_oZC-7X7e7daA7Q@mail.gmail.com>
In-Reply-To: <CAL_JsqLYpSK6HRT4s=hq153xvU_aiPCq3Hk_oZC-7X7e7daA7Q@mail.gmail.com>
From: Julius Werner <jwerner@chromium.org>
Date: Wed, 26 Feb 2020 11:30:51 -0800
Message-ID: <CAODwPW_FR0gHO_=yfCPwETXvKG9CvgvPddX-EOT=OXDPEkp_Kg@mail.gmail.com>
Subject: Re: [PATCH v2 1/2] dt-bindings: watchdog: Add mt8173, smc-wdt watchdog
To: Rob Herring <robh+dt@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200226_113109_907619_156B2C25 
X-CRM114-Status: UNSURE (   7.04  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -7.4 (-------)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-7.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d43 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 LINUX-WATCHDOG <linux-watchdog@vger.kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 LKML <linux-kernel@vger.kernel.org>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 Evan Benn <evanbenn@chromium.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>,
 Jonathan Cameron <Jonathan.Cameron@huawei.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Julius Werner <jwerner@chromium.org>,
 Wim Van Sebroeck <wim@linux-watchdog.org>,
 "David S. Miller" <davem@davemloft.net>, Guenter Roeck <linux@roeck-us.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

> Not quite. /firmware is generic container. I'd expect another layer in
> the middle for the overall set of Mediatek firmware behind smc calls.
> Look at 'xlnx,zynqmp-firmware' for an example.

There are no other MediaTek firmware interfaces described in the
device tree on those platforms. Is it okay if we just call it
/firmware/watchdog in that case?

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
