Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F26217C002
	for <lists+linux-mediatek@lfdr.de>; Fri,  6 Mar 2020 15:13:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LUhLcK3co353tHjKai1DUvjO+/aHgcIwllWLdP0F5fU=; b=d9j4tvnAnhIssN
	Vy+uuZVvUf/cZ3TKxLRm/SCkYmBTxyqxN0faKlzYXKmePXaA8dSd9Jb42WodiNFz7YzQwwu8iIOX3
	9mUrGXWs2HVjm4j2d0pO2v8edX3j9VJKtLt7BnEFqAiMJebpx2XEDNHDo1/CJqF+4SUQj1Ec79H/y
	nWwYqQFBp72t/z4iU49BEavqcF+FMrKugBOO7gJcSyCZGpKWEOAqS4UtWFa4PY/y8GdYaZ7U0lXDj
	X/NIPqOMT+GhgEMbA/+C0HAIzFgR2+VhHSGi26hWB0Zda8u5Hs2JmdfJ9dYf09Q42SO8SZqRPC7ag
	pdhhSG/d8oqsm4GE6ypg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jADjM-0000xi-4C; Fri, 06 Mar 2020 14:13:36 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jADj8-0000nX-Uo; Fri, 06 Mar 2020 14:13:24 +0000
Received: from mail-qt1-f177.google.com (mail-qt1-f177.google.com
 [209.85.160.177])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id C4B09208CD;
 Fri,  6 Mar 2020 14:13:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1583504001;
 bh=8HMSv45RmcowcvUV+/JVwCs/5SkwykqDSsq0zxlngI4=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=kwDxgZlOXDyDbl3r6rSK08+Sd8k5f1bwGh0lcEG94uqfILJBo3jo/PxP9wbPgyaCP
 NLB9f8j7t4VXm6EFEEZ/lxmd9wKxWoqUFcJjYga6NBEsm38Ive2pM8k+5BfuWtqO+e
 maiHZptvwMIIrk8aVL4xXnB5i4SADPrfQ3o5caMs=
Received: by mail-qt1-f177.google.com with SMTP id a4so1752835qto.12;
 Fri, 06 Mar 2020 06:13:21 -0800 (PST)
X-Gm-Message-State: ANhLgQ25Mz+267u/Q0SevzBxURfPkyPcaLz8JeF3QaicC0pvHq0542dp
 5inp9+7ki4tbYi+FRq6MoQoDUEVitrHNuueChQ==
X-Google-Smtp-Source: ADFU+vtV93a6Fp58Tncd6cIdfe2+CpsQ5PI8x6hov3jHYzgAVFu8JmXylmr7k0+5bR+Gvm/UG+tSzfOnnksdk3kV1RI=
X-Received: by 2002:aed:3461:: with SMTP id w88mr3133057qtd.143.1583504000926; 
 Fri, 06 Mar 2020 06:13:20 -0800 (PST)
MIME-Version: 1.0
References: <20200207052627.130118-1-drinkcat@chromium.org>
 <20200207052627.130118-2-drinkcat@chromium.org> <20200225171613.GA7063@bogus>
 <CANMq1KAVX4o5yC7c_88Wq_O=F+MaSN_V4uNcs1nzS3wBS6A5AA@mail.gmail.com>
 <1583462055.4947.6.camel@mtksdaap41>
In-Reply-To: <1583462055.4947.6.camel@mtksdaap41>
From: Rob Herring <robh@kernel.org>
Date: Fri, 6 Mar 2020 08:13:08 -0600
X-Gmail-Original-Message-ID: <CAL_JsqLoUnxfrJh0WCs0jgro1KHAjWaYMsaKkKfAKA2KJ252_g@mail.gmail.com>
Message-ID: <CAL_JsqLoUnxfrJh0WCs0jgro1KHAjWaYMsaKkKfAKA2KJ252_g@mail.gmail.com>
Subject: Re: [PATCH v4 1/7] dt-bindings: gpu: mali-bifrost: Add Mediatek MT8183
To: Nick Fan <nick.fan@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200306_061323_016657_D943029D 
X-CRM114-Status: GOOD (  10.12  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 Devicetree List <devicetree@vger.kernel.org>,
 Ulf Hansson <ulf.hansson@linaro.org>, Nicolas Boichat <drinkcat@chromium.org>,
 Tomeu Vizoso <tomeu.vizoso@collabora.com>, David Airlie <airlied@linux.ie>,
 lkml <linux-kernel@vger.kernel.org>, Liam Girdwood <lgirdwood@gmail.com>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Steven Price <steven.price@arm.com>, Sj Huang <sj.huang@mediatek.com>,
 Mark Brown <broonie@kernel.org>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Alyssa Rosenzweig <alyssa.rosenzweig@collabora.com>,
 Daniel Vetter <daniel@ffwll.ch>, Hsin-Yi Wang <hsinyi@chromium.org>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm Mailing List <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Thu, Mar 5, 2020 at 8:34 PM Nick Fan <nick.fan@mediatek.com> wrote:
>
> Sorry for my late reply.
> I have checked internally.
> The MT8183_POWER_DOMAIN_MFG_2D is just a legacy name, not really 2D
> domain.
>
> If the naming too confusing, we can change this name to
> MT8183_POWER_DOMAIN_MFG_CORE2 for consistency.

Can you clarify what's in each domain? Are there actually 3 shader
cores (IIRC, that should be discoverable)?

Rob

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
