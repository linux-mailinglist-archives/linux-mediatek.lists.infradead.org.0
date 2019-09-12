Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8651EB1030
	for <lists+linux-mediatek@lfdr.de>; Thu, 12 Sep 2019 15:43:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=a5lwjxH5hhLUHqlic4SEAfOP8gaFJiIgUuD5zZ2lZec=; b=kdMIdzMYSrRBXp
	FcGCTdGCycCiI+SwIyavMZ+3Owmg7OTz5IOtUtP+7TZ8YOKg6KlzW1kxXwy7XHZs6unFiCOO5zfUP
	pOmVmdkM56DodHBCnXX/d+teEfQ0eiIx7T/9L0dbkJ2yb7LkgJglb/vYnQom6JQPaYN6Wo/fNmYO6
	EtDl6dC+7zSB/IBh2cw5AOX3AySU2amvmhDp5wZws0x/hpa8ZG0O4UX39Jw2WTEvy1ksDTr4skRsC
	Rq2fagz8qmpvNwiJo7eK0vn8piv7HuLoNOyu452rVSqu/DzLgqVGxglA5vi23+zujE7xvFefowQgo
	NtJYbNFBxbK8/IWsV5Fw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i8PNd-0000Xs-0f; Thu, 12 Sep 2019 13:43:25 +0000
Received: from mail-lf1-x142.google.com ([2a00:1450:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i8PNX-0000XD-CV
 for linux-mediatek@lists.infradead.org; Thu, 12 Sep 2019 13:43:20 +0000
Received: by mail-lf1-x142.google.com with SMTP id q11so4457729lfc.11
 for <linux-mediatek@lists.infradead.org>; Thu, 12 Sep 2019 06:43:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=nZt0B3xrqHLHU4EvkiZMlrE7A5+KS8ARbT0ipn5PjfE=;
 b=jm6q7ISk/RfhVugAWF5YSK2afzSWJDBFxAi7oi9VZErcMD7Z1AukPdyibpKG5vTRe2
 jFmOIewoNoWhvEzTu8X+x7EZuqE5RgFfWm3QrjW9c7PRikJmv8w8KZZyC7lhn5ToHLsi
 8XpXAxjCiIU7RE4ufk8iJES4+77c9H0I6HlpdQdUX0nzjFrPt5P/AEtOMdDE48SUtVDA
 IMuBfP9lUYg0hfWM2zCvqW7YnBHHe1rBnGBF0zfYgc5u5c2j5sy9alNvTo/hs6te+GAa
 okus/w6Gb3Wa+mgHCt1IeKaxQmCg+St1kGqBkfGbyPfJQujHkOtvzQZ7U64Y+Q4RpTW6
 DYaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=nZt0B3xrqHLHU4EvkiZMlrE7A5+KS8ARbT0ipn5PjfE=;
 b=gFspQYiRUXR+3ha056fwm2xR0K0Pe0lEzJOeXqjpolilaCoGF7OGktPTB+0WtrJuyg
 UTDN9oU9y5Ay4jzycOEHMTIQjHRIH+gJBP1JokhsWBE8A7D5dYgvJkqbI54CzUG7sr4/
 9kZ66AX9jxjsMfgCpDz29q4ezf+Q2SADkQm1wFhEt+B6tE6V/RULIb7JxJe1Fwf48LIT
 9PGAkcn7rm0Qgdo4kKuKEMmA8+DU9RbRkolWz+011xL545refO0INy344jiyvSosuIMk
 XokifpVriNagxLaOS6xm3Bo9qeAIbVwcEMMWraieCptdFjBAGYjOKvv5OXnFEZFizOrG
 +THA==
X-Gm-Message-State: APjAAAUEysvMo3UM7bRIdOz/cbvqN9T1rk5lWYFmKdvxFUtr6YMNNxMX
 wsOy31CyJ8+GBxqJSA6tlVmuju0sVB9aZxj9GtO2GQ==
X-Google-Smtp-Source: APXvYqwunbF7TyfIhMcANFX4yAMKAnnsZW2NFILSXWz0Zd7gn78zVLaU+lihiMnQ0FO7JFF52e8A7qNnUVzqrPH/nXc=
X-Received: by 2002:a19:48c3:: with SMTP id
 v186mr27989255lfa.141.1568295796494; 
 Thu, 12 Sep 2019 06:43:16 -0700 (PDT)
MIME-Version: 1.0
References: <1567662796-25508-1-git-send-email-light.hsieh@mediatek.com>
 <1567663210.1324.3.camel@mtkswgap22>
In-Reply-To: <1567663210.1324.3.camel@mtkswgap22>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Thu, 12 Sep 2019 14:43:04 +0100
Message-ID: <CACRpkdbBMiHk4DV3r=aLU+T+9bPQBLUiTaW6L+L=J=ec0guBmA@mail.gmail.com>
Subject: Re: [PATCH v2 1/5] pinctrl: mediatek: Check gpio pin number and use
 binary search in mtk_hw_pin_field_lookup()
To: Light Hsieh <light.hsieh@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190912_064319_435628_97102C92 
X-CRM114-Status: UNSURE (   6.10  )
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Sean Wang <sean.wang@kernel.org>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Thu, Sep 5, 2019 at 7:00 AM Light Hsieh <light.hsieh@mediatek.com> wrote:

> v2 is the same as v1 except that commit message is corrected according
> to Linus' comment for v1:
>
> 1. remove Change-Id lines
> 2. correct sysfs as debugfs

Patches applied with Sean's ACK.

Yours,
Linus Walleij

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
