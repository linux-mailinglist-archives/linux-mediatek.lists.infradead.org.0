Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A2AD3133EC0
	for <lists+linux-mediatek@lfdr.de>; Wed,  8 Jan 2020 10:58:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=J1WYrLeBHQSov41UT20hqoE8UL+74IdBEZEcVlQRm+w=; b=H/+Uj3FC31WCSZ
	+60zBlBEza2OXHn6e1G2JjiZnnT2NokRunIIyaIzRyVeTKk/9myq3BZKBpvUuKwGflV0c2eKfHPCt
	Zb4ZS6PoH4Yqmc/Z2G2JQe5MX8T6Pbm4gnV0ITADhYETmtCSJw0aGFf6BrX84L1vAn0k503L7VSK+
	lG8Cu0YAhHiJrNSUANPHZoxySFfffvMBcJNJdHXB8DFya2qhSqBO93GtX+ZgU4kDlk88D1Pj/SRTn
	D3j9BoSIes51V0Sge/Bu/x7vXwv83Ngtp1v+AZID7SEf3BJHLQVwjAMzWFPiBlaZ2sZfJejCs57kX
	RNrOFTW2mK1Rvukyx7Fw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ip86m-0007WZ-MW; Wed, 08 Jan 2020 09:58:36 +0000
Received: from mail-io1-xd43.google.com ([2607:f8b0:4864:20::d43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ip86i-0007Vh-TD
 for linux-mediatek@lists.infradead.org; Wed, 08 Jan 2020 09:58:34 +0000
Received: by mail-io1-xd43.google.com with SMTP id i11so2485284ioi.12
 for <linux-mediatek@lists.infradead.org>; Wed, 08 Jan 2020 01:58:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=QAtR7WNLGbja1kZFYbC1LM6r/2gOOz73oNIxwZf1sK8=;
 b=LGhwTuIZMsvckUaUhJ+tDGp6Y0jn0LYn/xbxleZUSDMkTwotTTy+1Fg5ZHuiCgbnuW
 ABixaa78LQAMQqSXxlOdTlfDx+n2+WrJQM9cCO+dERP4pTnItxTE5IlWAuVhshqD5D0f
 0ZiCF95TJ+fR3w2e37nT74ePbWYE2y6TFcorU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=QAtR7WNLGbja1kZFYbC1LM6r/2gOOz73oNIxwZf1sK8=;
 b=tc8rnaKolP+Drx9B8SdEs4F8cOZh7F/nqJxqCJckzOq77Ti54PNKavNOIMA7994rIM
 AsoibXeulNnAvPxAqgkEIRBopF6CoxF+b73dz5WUSMgNwwaEFNCS3hzxugywvalyvC46
 h60ebvCyWM/mCtrbg0KlqQc0UJCI2AJWrrQG7lOjsLUKXm9OyKVvaEg/dX6u7L2ms2AG
 AQ24u8+sZq15w2mQaZZbXuk9Bnh6qs4UmOQZx0Mxs5N8PidMX8zxP4EqxegiIaqNlCEh
 XanjAKQOg5XuWzZ+D3+gG8GmN8DX0/mGzERwuNYlM4HTJl4O2mOqwA8CapfvN3NZEvzt
 m63w==
X-Gm-Message-State: APjAAAWSZOM930f2M37Ulbw7ancfikXZhV9Dk/YUVI5Z0+1ANXcQgHrW
 /sunTsA1zBuJBmBAwhyBC+emRgpoLKJeOjptEazaMg==
X-Google-Smtp-Source: APXvYqwH5rufYzM9JfRPQjj7bRhJ6sm9RgJQyx7qvhgpJjalHtt1/UbVPcBLfTvCu23laYbDf4TKavfcetdwMpGEoRY=
X-Received: by 2002:a6b:3845:: with SMTP id f66mr2819729ioa.102.1578477511547; 
 Wed, 08 Jan 2020 01:58:31 -0800 (PST)
MIME-Version: 1.0
References: <20200103064407.19861-1-michael.kao@mediatek.com>
 <20200103064407.19861-7-michael.kao@mediatek.com>
In-Reply-To: <20200103064407.19861-7-michael.kao@mediatek.com>
From: Hsin-Yi Wang <hsinyi@chromium.org>
Date: Wed, 8 Jan 2020 17:58:05 +0800
Message-ID: <CAJMQK-hQ5BWp7isGDTz_Y4ttxfoM0guqfcAEFrh3Eq7SMcNM5w@mail.gmail.com>
Subject: Re: [PATCH v3,
 6/8] thermal: mediatek: mt8183: fix bank number settings
To: Michael Kao <michael.kao@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200108_015832_968764_FF8415FF 
X-CRM114-Status: UNSURE (   7.15  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d43 listed in]
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
 Devicetree List <devicetree@vger.kernel.org>, srv_heupstream@mediatek.com,
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

On Fri, Jan 3, 2020 at 2:44 PM Michael Kao <michael.kao@mediatek.com> wrote:
>
> MT8183_NUM_ZONES should be set to 1
> because MT8183 doesn't have multiple banks.
>
> Fixes: a4ffe6b52d27 ("thermal: mediatek: add support for MT8183")
> Signed-off-by: Michael Kao <michael.kao@mediatek.com>
> ---
Signed-off-by: Hsin-Yi Wang <hsinyi@chromium.org>

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
