Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 773F0E1390
	for <lists+linux-mediatek@lfdr.de>; Wed, 23 Oct 2019 10:03:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0RmjFHEAo/TSKDyN4nsFZL/H8kc2ELiiyjZfisi/ZLo=; b=M4t2JJ4DvslsSe
	dayf8y7HRQjV//8w4dCGzuUMpZEYAAHvCg7UYONdlEd1upS3jSZ20vLYLIhJFG0x0r0Y9ZIhjvOB/
	Bgc1YR78aMW3l6bAO/AjvtunmwzLxnRdiOq1UeWX2Y6GVdqab9fAKy/oRlSxHjQsAbDnMMlkoO5Up
	WmNjVV8xxXfQQxD3CVTeTt2Iy2V1EFthZSOj1g+M/8aboIIcY7VuwAy0ljnjBq/M0vfUWxXNcsxCI
	Iw1jRz7uSNj5DYOlwtSJsTTwU/tmpxNkFPNRk2h/pSZWVGRgiEnF0IfcdNe8Hm5BIRuvxiN2CjGzg
	Mt/DLuoEQ12tYhYMLOzQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNBcJ-0004MQ-QT; Wed, 23 Oct 2019 08:03:39 +0000
Received: from mail-ot1-x344.google.com ([2607:f8b0:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNBc4-0004CQ-Im
 for linux-mediatek@lists.infradead.org; Wed, 23 Oct 2019 08:03:25 +0000
Received: by mail-ot1-x344.google.com with SMTP id g13so16611384otp.8
 for <linux-mediatek@lists.infradead.org>; Wed, 23 Oct 2019 01:03:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=6uunPk4FRGMVRF/7mka4EzN9Nm4HV/2M2f5HwcfgzDg=;
 b=gHIg3gQn71VKU1Zb5o/Bjl3AtqVaiUFOBs/9yFdHsyR5Cp3O9qFur0Z7Yp6eGhpSJP
 zwARXUjs2v0bUpgfQNpyh3eSjlOfqyeklONDjphVP78YlJqbsj6txItzZMqz4fLMkXjE
 ujdJRD/EJ6Dn4eD61vueYzyHTWA2nMju0JbBrdnWyHj3k0z5rIMg6SaSDLL/aGtcsJyz
 mM79AoUbEry+9j1JIloGvt49aoCGf7Gc5GT1Lt07h+2w635KjXjOVVq/P8OhlKbEhx/9
 sb6SUs2Kmy//iuqTRXE9jU1OwV+XtPfM1lxotMBnnPjKkStTZ/JgbvF6bo4zsjRaxsII
 7J3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=6uunPk4FRGMVRF/7mka4EzN9Nm4HV/2M2f5HwcfgzDg=;
 b=uZflUw6FpYOEPhUxZOeZrBG0r1hDF3xeqD4QkDm7SACVs6Y9obse6MUGP88shjHDDK
 KJE6TUc2w1GO614MJAqHA4NAeUszE9ATteTnzcoSUJCc2CxAB6oStDoh55Sj6pv+ruIp
 wDRHjxy4YK+8SlFRkGEliv90cTRyZVwhWxiqW2PKVu5eY3xTlNMuFFFQKnG9Ma8cviBE
 HGf4CXtlPF/Eo/fJJrJrSIhC3YPI1xQ3tygAKDBSy4o26Rfmy2nt8THDY/juPnCdttI2
 0s5qjOER8YYh3kuL3U+YC6DvqXYXelaOjmoGp5llQPKz/fQWnp1zws8JmDIfjwRasQ8i
 6Q+Q==
X-Gm-Message-State: APjAAAXt6b+E3rReHIM2OFJwH+6eyK+L9NkPJ0XQi6n6GxfSL+VmlEps
 uKb+5taRk/LREP2SPq9V2UDNW5aAnnyNunTTObi9fA==
X-Google-Smtp-Source: APXvYqyfHE/ivBJeAMwtq+xDy7lllkwK/zu3sWWZGYeVM4ARAomhLhU7HXNGvp44TV8sDYdi8DuU8C7CCvatK56LIEM=
X-Received: by 2002:a9d:7d12:: with SMTP id v18mr4015609otn.103.1571817800353; 
 Wed, 23 Oct 2019 01:03:20 -0700 (PDT)
MIME-Version: 1.0
References: <20191023063103.44941-1-maowenan@huawei.com>
In-Reply-To: <20191023063103.44941-1-maowenan@huawei.com>
From: Tzung-Bi Shih <tzungbi@google.com>
Date: Wed, 23 Oct 2019 16:03:07 +0800
Message-ID: <CA+Px+wU5UrVC0pk5pbfGTdVsh7OHcBx_MhbC3Bjmj_+zgn54PQ@mail.gmail.com>
Subject: Re: [PATCH] ASoC: mediatek: Check SND_SOC_CROS_EC_CODEC dependency
To: Mao Wenan <maowenan@huawei.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191023_010324_621708_411AFF70 
X-CRM114-Status: UNSURE (   8.77  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -15.7 (---------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-15.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-arm-kernel@lists.infradead.org,
 ALSA development <alsa-devel@alsa-project.org>,
 kernel-janitors@vger.kernel.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, yuehaibing@huawei.com,
 Takashi Iwai <tiwai@suse.com>, Liam Girdwood <lgirdwood@gmail.com>,
 Mark Brown <broonie@kernel.org>, linux-mediatek@lists.infradead.org,
 =?UTF-8?B?U2h1bmxpIFdhbmcgKOeOi+mhuuWIqSk=?= <shunli.wang@mediatek.com>,
 Matthias Brugger <matthias.bgg@gmail.com>, tglx@linutronix.de,
 Jaroslav Kysela <perex@perex.cz>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 KaiChieh Chuang <kaichieh.chuang@mediatek.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Wed, Oct 23, 2019 at 2:31 PM Mao Wenan <maowenan@huawei.com> wrote:
>
> If SND_SOC_MT8183_MT6358_TS3A227E_MAX98357A=y,
> below errors can be seen:
> sound/soc/codecs/cros_ec_codec.o: In function `send_ec_host_command':
> cros_ec_codec.c:(.text+0x534): undefined reference to `cros_ec_cmd_xfer_status'
> cros_ec_codec.c:(.text+0x101c): undefined reference to `cros_ec_get_host_event'
>
> This is because it will select SND_SOC_CROS_EC_CODEC
> after commit 2cc3cd5fdc8b ("ASoC: mediatek: mt8183: support WoV"),
> but SND_SOC_CROS_EC_CODEC depends on CROS_EC.
>
> Fixes: 2cc3cd5fdc8b ("ASoC: mediatek: mt8183: support WoV")
> Signed-off-by: Mao Wenan <maowenan@huawei.com>

Acked-by: Tzung-Bi Shih <tzungbi@google.com>

Thanks for the catching.

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
