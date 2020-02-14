Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A061315D5EF
	for <lists+linux-mediatek@lfdr.de>; Fri, 14 Feb 2020 11:41:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=U/T41FZrp6jCVct0/SIy+HzeWDBkuotfaRaqnOwOaKE=; b=aOKNjzeWiTixMz
	M9EYSpzcTFlp6dwmBsn/vYBt8EDwtiwpvf3eSHOnxiT3qZ7qABxP+07mOPl7IsHHGkOfI+81mFnjk
	Qz7wmCA+Nikm+Ic2y8xlqihhTdqN7wg7zXBQ8weMQWOXttX9+ydXP4MRr+7g1rNkeC3FaMDlPecW7
	NuxjXC5VZ9TteLuv4jvupCTTrNCDnzaipUw5xL+dIhPDVAVZ0wRi06VxSL9COYZZ6zj+IoEs77Egl
	l9MKFT1dh6p3TMRs6Tdkyl8991Qit2TLqnjj72gLdcZEtExFDfEfGLFYDJ0nRcvo1jMNJ2rqQekx/
	kh9kFBVQKGxZpiedWqOg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2YPk-0000vT-0K; Fri, 14 Feb 2020 10:41:40 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2YPh-0000vA-7S
 for linux-mediatek@lists.infradead.org; Fri, 14 Feb 2020 10:41:38 +0000
Received: by mail-lj1-x241.google.com with SMTP id d10so10182216ljl.9
 for <linux-mediatek@lists.infradead.org>; Fri, 14 Feb 2020 02:41:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=I84A/i8tcPKxxOGbCK9A8uezoeqh4sVjuwMk9nGOQlQ=;
 b=ZI+0qXsAcGpAsFA7BAHC/r2eJz4nN4Nx9/qkAEpIDDoDDtOyybIt7BDzE47CID6Zb8
 KXMmlcs3o1Q8M593QyBQoHhzPwoHNJQ4zGVhk7KfRX9tHIalJEZU0yATHyk4H/6agSXL
 gAMP09pjFClhtjllFq78QJmvRKdUfZKjsL1rCKvnAleNtFLlFGT2Cxjz1mlJCSsta0b3
 KKKJn1DNPsLayW72dHiVAOekjpBBMiBKWClSc+KnprNG9aog6lHLlzp6poDAdhIOlyGk
 baBAuwWPvaTk8SFcwHvkkyo0+c+PEW9bquP2Fw+2ouoNeThdQv+XG4j0dW03YIobBLEc
 Tq7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=I84A/i8tcPKxxOGbCK9A8uezoeqh4sVjuwMk9nGOQlQ=;
 b=nbVZW+FsfEcWu3Ulo8d2ZGZekR96EUfOdQgn1EKxn4IKhHVzNqfgQpdY86PMME3yha
 uvUfhKlug2SobMZ01Y3105hHZwhisSAxUoZRd45i+ak8uFXimxNYXQ6KvJW6dEPXcnxi
 aflQBo8feFQJWHNodO9KIakm5bAsxyiBDkPHqZ0PTZDt9B0dUC2kgW/f2q3jNkHiNLKu
 LPvX3e9kBpGY+Uj6mDlKhb1PhkDPXlTpkUcJpDWpk9oaNwpHapR4wtVpd0Ml6yZL/y9p
 bOvAR1wMzoBQy6fxGvx45Y9oUf8ZS6XxL3C7wkXTh8f6gS3foVboSToupWeeBxg9VFcY
 EPZQ==
X-Gm-Message-State: APjAAAWmz303ZlBQcpQzhq/oA/mtkcCFI3Az+rBxjG9skfO7yZqzrCwo
 0Z5wmqDEzruroF99R0e3fctgzhnxdLxlDYGWFLeUVw==
X-Google-Smtp-Source: APXvYqz8IjNrCqOb2DDhLjIqc5YDiIKJ0wbJLELLFODbj8iR64pcK9T84Q6voECeqUp1U7eWp+sJ9v+o6dnCBu0XMxQ=
X-Received: by 2002:a2e:81c3:: with SMTP id s3mr1685747ljg.168.1581676895494; 
 Fri, 14 Feb 2020 02:41:35 -0800 (PST)
MIME-Version: 1.0
References: <1579675994-7001-1-git-send-email-light.hsieh@mediatek.com>
In-Reply-To: <1579675994-7001-1-git-send-email-light.hsieh@mediatek.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Fri, 14 Feb 2020 11:41:24 +0100
Message-ID: <CACRpkdYzf0FjBS+GbErPK48QMg92aGX58szQB+4WHqCYk5Gv5Q@mail.gmail.com>
Subject: Re: [PATCH v8 1/6] pinctrl: mediatek: Check gpio pin number and use
 binary search in mtk_hw_pin_field_lookup()
To: Light Hsieh <light.hsieh@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200214_024137_299913_1C3309B3 
X-CRM114-Status: GOOD (  10.87  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 kuohong.wang@mediatek.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Wed, Jan 22, 2020 at 7:53 AM <light.hsieh@mediatek.com> wrote:

> From: Light Hsieh <light.hsieh@mediatek.com>
>
> 1. Check if gpio pin number is in valid range to prevent from get invalid
>    pointer 'desc' in the following code:
>         desc = (const struct mtk_pin_desc *)&hw->soc->pins[gpio];
>
> 2. Improve  mtk_hw_pin_field_lookup()
> 2.1 Modify mtk_hw_pin_field_lookup() to use binary search for accelerating
>      search.
> 2.2 Correct message after the following check fail:
>     if (hw->soc->reg_cal && hw->soc->reg_cal[field].range) {
>                 rc = &hw->soc->reg_cal[field];
>     The original message is:
>         "Not support field %d for pin %d (%s)\n"
>     However, the check is on soc chip level, not on pin level yet.
>     So the message is corrected as:
>         "Not support field %d for this soc\n"
>
> Signed-off-by: Light Hsieh <light.hsieh@mediatek.com>

I managed to apply all 6 patches now for v5.7.

I had a big problem extracting the patches since they get base64
encoded and for some reason git am cannot deal with this. I thought
it would but it doesn't possibly because of custom headers in the
message.

I have to save out the base64 part of the message, decode separately,
then paste back the result removing the transfer-encoding line
of the original message.

cat mtk65.txt | base64 -d -i > scratch.patch

Any tips on how to handle this more efficiently?

Yours,
Linus Walleij

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
