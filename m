Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D3C011242E
	for <lists+linux-mediatek@lfdr.de>; Wed,  4 Dec 2019 09:12:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7qF3fDvievH5kg4HEPmFC0TZqB41l0HXEJdRmRlHAHw=; b=uh0UXtwRysx50z
	5jpgawThZnulB4+lLp0NhC9q0QNKAR4ia5OtjT7bmZ/oeqpJKFYttfuCJjteAMfWxsh8xfx81L/j/
	XX5olTd74EUZBFBplKRjjaAUOh2lsn302+Sjj1w+v4ydGBx/hZu4gC5S55Sfg2zRuzuHIIIGXf9nB
	ETNhkzLtTFiJVed9yBfvvjDbR+H0HjsUB6/+meMV3XGutKvvc0C1OQhcEqKyegMrho0W6sjsEnLwG
	GTviSQZcSqVyqk7xzcONqb9hQBs2EyYAVCS2Ev2hjnPsF86fylNGaYFVHRt7H1v8bpMJHlrTKyXZi
	aQKTdLbQ4jyesrOvuoOw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icPlk-0008Oa-CV; Wed, 04 Dec 2019 08:12:20 +0000
Received: from mail-io1-xd43.google.com ([2607:f8b0:4864:20::d43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icPlh-0008Ni-Al
 for linux-mediatek@lists.infradead.org; Wed, 04 Dec 2019 08:12:18 +0000
Received: by mail-io1-xd43.google.com with SMTP id z193so7041999iof.1
 for <linux-mediatek@lists.infradead.org>; Wed, 04 Dec 2019 00:12:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=I13QOM/XyZe4jexaUu6Tg14FjNQVNu2OzdTG+eKEvxs=;
 b=Urf/A79crlroamjdZ/4jO0Ea3JsVS/HR0RS6j4Scbe/uESPEuIqzn1CISgZZ4M2O5Q
 2IJ/bbCONVPXPx0UHdwldQBbY+glrYv9E+RAOFyiQlZhteyXjKfPhHoaC0lmBx818SVx
 zrOFUawhELjFTUzvBv6ySv1v7pSJqYo2WdgONHIEbMLzMRuo7ZshWOT2URSNCCVm0tFs
 dME9t6qUHmmDkcJ78hRUgtnH7QGqkW7K6X4NttTr2wqeRCOPQMcv/FfDYNUVmkpEpxui
 EHybpT0WbT4GlKWVIlTpGBZ+k3S90J77Jjt72aKwVx2gqSklHM8p5i9ZFJGkKUFnam/Z
 +fqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=I13QOM/XyZe4jexaUu6Tg14FjNQVNu2OzdTG+eKEvxs=;
 b=ILuiJzAHGMUA1EBwkf2mpa6MdZvB24jJ6YHO/a+of53Pu1anW/W7FV94pQGfJRqWmD
 EBDvTceGfP8z4fJqqh84/2OfTgwVyyt7EnTlxmaehJOwEpY4zusEKS/grwsdhwddF+hm
 xqfoi62OFDICigFxeNKWaCiDRpjCOFLu3gtJE8NlFAgVDSm5SAIwrig5uGG6ulRJtNa9
 +mcsEiEXkE+PrUbamAUbcB6rpG/GYJPsYy02oWZhjEpgxCpVDbCdHj9B9n32mKIVopAR
 mBwMTUNXkcqqwsOvacpv9dyyDthnIKUuXhEGsxI1nG4pwv4psHMGj2HQ/QtF3dsOGiVx
 K94A==
X-Gm-Message-State: APjAAAUf3qb50Ri3XjFfJlkbK/hNI9gj+fhPczDeRcKrdhVUI2pw5Pg6
 3o9Z3Fa5gHj9IZY53S/6BcXk9mn8PysXlb2Bnsp7TQ==
X-Google-Smtp-Source: APXvYqwt6fIkH5aRFph0l1Lb7nTwjasXYcWkPzvXCdXqxUsHWhUIa0fRQNvSZ2zcwf47+j1kV/aNS9rzQoInjIAmU2g=
X-Received: by 2002:a6b:c7c7:: with SMTP id x190mr1124939iof.123.1575447135988; 
 Wed, 04 Dec 2019 00:12:15 -0800 (PST)
MIME-Version: 1.0
References: <20191204071958.18553-1-chaotian.jing@mediatek.com>
In-Reply-To: <20191204071958.18553-1-chaotian.jing@mediatek.com>
From: Hsin-Yi Wang <hsinyi@google.com>
Date: Wed, 4 Dec 2019 16:11:50 +0800
Message-ID: <CACb=7PWeW+aYx3Dah0CFj3cyG+Wr=gOe7pfo9a_jmfjvjJeFDg@mail.gmail.com>
Subject: Re: [PATCH] mmc: mediatek: fix CMD_TA to 2 for MT8173 HS200/HS400 mode
To: Chaotian Jing <chaotian.jing@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191204_001217_394577_1EAC9FCF 
X-CRM114-Status: UNSURE (   7.56  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d43 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
Cc: Ulf Hansson <ulf.hansson@linaro.org>, srv_heupstream@mediatek.com,
 linux-mmc@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-mediatek@lists.infradead.org, Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Wed, Dec 4, 2019 at 3:20 PM Chaotian Jing <chaotian.jing@mediatek.com> wrote:
>
> there is a chance that always get response CRC error after HS200 tuning,
> the reason is that need set CMD_TA to 2. this modification is only for
> MT8173.
>
> Signed-off-by: Chaotian Jing <chaotian.jing@mediatek.com>
Tested-by: Hsin-Yi Wang <hsinyi@chromium.org>
> ---

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
