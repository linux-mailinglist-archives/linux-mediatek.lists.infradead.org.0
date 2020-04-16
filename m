Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CE4191ABAB9
	for <lists+linux-mediatek@lfdr.de>; Thu, 16 Apr 2020 10:01:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uPFUfPoZNWzuKERMLWkiOLaYOfrv/OSLZFjPFB3x70g=; b=LlSFFcsxBoZIlT
	kbXL0ck9grdRE+WntsS0hHOt0D1RrfpdoWNz+gxrjdlfhC9ZlJeenIytn6Qj3Qsj81dtaBXzSp6hu
	QuiqZ8JgJ3dLrz3uN1GnwmWvmjdEG9R21wj0kaIOQseyqq+qXR6L4YDht6k94F6k9W6ySAdT/31CZ
	RoV9QAzDOhUr93j283Mn2IDkWok0dJpMwqDe+yBRQif4EA8Ie4oDjp60GAB5b1dVLh8XtT4LKtn6O
	jnOPJbtIUuq0AHRsn+XxWFzuOFEgLjF7GyfBxyz3SrdCsElSpCfaw+oXm+K8U1oHYzYJmlCwPZOFw
	XFz/UyHpoBJLrtun1EBQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOzSD-0004yd-Om; Thu, 16 Apr 2020 08:00:57 +0000
Received: from mail-lf1-x143.google.com ([2a00:1450:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOzRr-0004ab-9O
 for linux-mediatek@lists.infradead.org; Thu, 16 Apr 2020 08:00:38 +0000
Received: by mail-lf1-x143.google.com with SMTP id r17so4883824lff.2
 for <linux-mediatek@lists.infradead.org>; Thu, 16 Apr 2020 01:00:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=tjVFjiLUKq2dceYjR/sUZuoN+VaM2KkSpDEryVFjJAM=;
 b=bUozIsQsOLIKrmIe04JjO05g7JBKyqXq8AdHzoY9+98g1GkgDs3t0ZDClZymhjwkrp
 MByC50ZFFHYsMPZGUI3oyH1zekRuiC/DmTVL+6fK2pnd31mlDaqeXshW2PrfW6TKGkh5
 dBeBVQy2o/c8U3eusS+I18vX7fIsdLrap/MTuqke74f8h1sfJsA/vNI7QewuTkLGLfiX
 LZDVWtncz77CnlPHYu7z1PwxOXGCgThpfqHN2sydIRa9pH9054gcPx/FnQbBWcbrFCu/
 B2wJoM2zJjIqKJYQ4ZUYjeTBW3+l3o13HlulzKtS/fh5gGg9WHIISWPjKIz6H5cx0w9h
 Nn6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=tjVFjiLUKq2dceYjR/sUZuoN+VaM2KkSpDEryVFjJAM=;
 b=dQUqDjleHOGdewrjpaNZqCqaDFvoCCULYWYbtXsIbiRmWAYBZR9pFJQjFTVl9I7sw/
 iK+JxkYAyLIUmZK2gSUkSrors+h0OAIGsSxY2QBcZDnSJNi3mp6q9DNX6qLqSe4Fz2Nq
 ryrVuBVaNtJWaLiuCPEOYorUh8wr7za15Z2YpE7doZkPVd+sOSoSoTyQoKgIwB2ak6zt
 9MsOW48huHq2X5C6/UiNn+dtQXTlkGbJwgYezN93KtkvKwC20jKvxireHgyHkZD5WkuM
 9daqVcKSAffOn2CTn2LnkPvJ1VHvS+Xkz7NuROFZ3zi4AvwxhoaY6seedlSPwHLrFP+B
 v7aQ==
X-Gm-Message-State: AGi0PuaaUsgZgdOaarWC5MgOvEpwIEusLyYoGFX5hon+D20GpwE+UgRP
 kEzyE/QemZMacBXYLdT0bqoLfLEla3X2RSp9vG4+3Q==
X-Google-Smtp-Source: APiQypLJmZ97wdSRNvt5K0Vot48JkDgvMOmnFHGu2O4iKZQqqK02fJBxbBO5EYfsbjVxASLotokCg8oMB6V5oELv+9k=
X-Received: by 2002:a05:6512:685:: with SMTP id
 t5mr5198837lfe.47.1587024032955; 
 Thu, 16 Apr 2020 01:00:32 -0700 (PDT)
MIME-Version: 1.0
References: <9feeb04805e5a406fe22a92e3f280abda39ddda4.1586289920.git.sean.wang@mediatek.com>
 <42100afe6f97d28447c153bea6b54ea556cf95ca.1586289920.git.sean.wang@mediatek.com>
In-Reply-To: <42100afe6f97d28447c153bea6b54ea556cf95ca.1586289920.git.sean.wang@mediatek.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Thu, 16 Apr 2020 10:00:22 +0200
Message-ID: <CACRpkdbszsyw550SZHBx73SHhUeDsKYC7od4pQRvpH+OdorCHQ@mail.gmail.com>
Subject: Re: [PATCH v7 2/2] pinctrl: mediatek: make MediaTek MT6765 pinctrl
 ready for buiding loadable module
To: Sean Wang <sean.wang@mediatek.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200416_010035_578719_180D168D 
X-CRM114-Status: UNSURE (   6.49  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 2.3 (++)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:143 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 2.5 SUSPICIOUS_RECIPS      Similar addresses in recipient list
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 "moderated list:ARM/Mediatek SoC support"
 <linux-mediatek@lists.infradead.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Light Hsieh <light.hsieh@mediatek.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Tue, Apr 7, 2020 at 10:08 PM <sean.wang@mediatek.com> wrote:

> From: Light Hsieh <light.hsieh@mediatek.com>
>
> This patch make pinctrl-mt6765 ready for building as loadable module.
>
> Signed-off-by: Sean Wang <sean.wang@mediatek.com>
> Signed-off-by: Light Hsieh <light.hsieh@mediatek.com>
> ---
> v6->v7: remove change-id

Patch applied.

Yours,
Linus Walleij

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
